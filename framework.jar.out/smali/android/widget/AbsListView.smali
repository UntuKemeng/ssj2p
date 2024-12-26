.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$OnFluidScrollEffectListener;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForDoublePenClick;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static mTwScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:I

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAutoscrollDuration:I

.field private mAutoscrollDurationGap:I

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChnagedAdapter:Z

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDeltamoveX:I

.field private mDeltamoveY:I

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveredOnEllipsizedText:Z

.field mInitAbsListView:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstPenClick:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMovedbeforeUP:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsTwOnClickEnabled:Z

.field private mIsfirstMoveEvent:Z

.field mJumpAtFirst:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field mMotionPosition:I

.field private mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCScrollDirection:I

.field private mQCScrollFrom:I

.field private mQCScrollNext:I

.field private mQCScrollRunnable:Ljava/lang/Runnable;

.field private mQCScrollTo:I

.field private mQCScrollingCount:I

.field private mQCstate:I

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemCanGoFuther:Z

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

.field private mSemSizeChnage:Z

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchdownX:I

.field private mTouchdownY:I

.field private mTranscriptMode:I

.field private mTwCloseChildByBottom:Landroid/view/View;

.field private mTwCloseChildByTop:Landroid/view/View;

.field private mTwCloseChildPositionByBottom:I

.field private mTwCloseChildPositionByTop:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field private mTwDistanceFromCloseChildBottom:I

.field private mTwDistanceFromCloseChildTop:I

.field private mTwDistanceFromTrackedChildTop:I

.field private mTwDragBlockBottom:I

.field private mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mTwDragBlockLeft:I

.field private mTwDragBlockRect:Landroid/graphics/Rect;

.field private mTwDragBlockRight:I

.field private mTwDragBlockTop:I

.field private mTwDragEndX:I

.field private mTwDragEndY:I

.field private mTwDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwDragSelectedItemSize:I

.field private mTwDragSelectedViewPosition:I

.field private mTwDragStartX:I

.field private mTwDragStartY:I

.field private mTwFluidScroll:Landroid/widget/FluidScroller;

.field mTwFluidScrollEnabled:Z

.field private mTwPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

.field private mTwTrackedChild:Landroid/view/View;

.field private mTwTrackedChildPosition:I

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field mWindowFocusChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 904
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 7169
    const/16 v0, 0x1f4

    sput v0, Landroid/widget/AbsListView;->mTwScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 1155
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 154
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 155
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 156
    iput-object v7, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 158
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 294
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 327
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 352
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 357
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 367
    iput v6, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 372
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 378
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 383
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 388
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 393
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 398
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 403
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 408
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 456
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 487
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 536
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 556
    iput v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 558
    iput-object v7, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 584
    iput v6, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 587
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 590
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 597
    iput-object v7, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 598
    iput-object v7, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 615
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 616
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 621
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 622
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 623
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 625
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 629
    iput v3, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 630
    iput v3, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 631
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    .line 632
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 633
    iput v3, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 677
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 706
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 708
    new-array v1, v2, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 710
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 711
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 713
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 719
    iput v3, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 729
    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 734
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 740
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 790
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 824
    iput v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 826
    iput v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 836
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 838
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 840
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 842
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 844
    const-wide/16 v4, 0x1f4

    iput-wide v4, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 846
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 848
    iput v6, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 853
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 858
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 864
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 866
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 871
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 881
    iput v3, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 883
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    .line 885
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 887
    iput v3, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 889
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 891
    iput v3, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 892
    iput v3, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 894
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    .line 895
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 896
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    .line 897
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mJumpAtFirst:Z

    .line 924
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 929
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 930
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 931
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 932
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 933
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 935
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 939
    iput v6, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 940
    iput v6, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 941
    iput v3, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 942
    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 943
    iput v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 944
    iput v6, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 947
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 948
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 949
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 951
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 952
    iput v6, p0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 953
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 954
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 955
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 956
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 957
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 960
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 961
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 962
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 963
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 964
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 966
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 967
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 968
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 969
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 971
    iput-object v7, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 972
    iput v6, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 973
    iput v3, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 975
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 976
    iput v6, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 977
    iput-object v7, p0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 978
    iput v6, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 979
    iput v3, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 980
    iput-object v7, p0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 981
    iput v6, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 982
    iput v3, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 985
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 987
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    .line 991
    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_FLING:I

    .line 993
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 994
    const/16 v1, 0x7f0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 995
    const/16 v1, 0x8a

    iput v1, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 1065
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 1144
    iput-boolean v3, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3936
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 5146
    iput v3, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 5147
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 6218
    iput v6, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 6220
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 6221
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 6222
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 7167
    iput-object v7, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 7168
    iput-object v7, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9604
    iput v3, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9988
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    .line 9989
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 9993
    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 9996
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutStart:Z

    .line 9997
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemIsGoToTopShown:Z

    .line 9999
    new-instance v1, Landroid/widget/AbsListView$9;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 10005
    new-instance v1, Landroid/widget/AbsListView$10;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 10011
    new-instance v1, Landroid/widget/AbsListView$11;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 10016
    new-instance v1, Landroid/widget/AbsListView$12;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$12;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 10021
    new-instance v1, Landroid/widget/AbsListView$13;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$13;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 10028
    iput v6, p0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10029
    iput v3, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 10030
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 10035
    iput v2, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 10405
    new-instance v1, Landroid/widget/AbsListView$17;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$17;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1156
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1160
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 1161
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1162
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1168
    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1169
    const-string v1, "AbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 1173
    :cond_0
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    move v1, v3

    .line 631
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1176
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1184
    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 155
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 156
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 158
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 294
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 327
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 352
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 357
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 367
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 372
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 378
    new-instance v14, Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 383
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 388
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 393
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 398
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 403
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 408
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 456
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 487
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 536
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 556
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 558
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 584
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 587
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 590
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 597
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 598
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 615
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 616
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 621
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 622
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 623
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 625
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 629
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 630
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 631
    sget-boolean v14, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    .line 632
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 633
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 677
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 706
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 708
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 710
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 711
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 713
    const/4 v14, 0x2

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 719
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 729
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 734
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 740
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 790
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 824
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 826
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 836
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 838
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 840
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 842
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 844
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 846
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 848
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 853
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 858
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 864
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 866
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 871
    const/high16 v14, 0x44480000    # 800.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 881
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 883
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    .line 885
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 887
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 889
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 891
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 892
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 894
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    .line 895
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 896
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    .line 897
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mJumpAtFirst:Z

    .line 924
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 929
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 930
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 931
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 932
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 933
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 935
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 939
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 940
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 941
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 942
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 943
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 944
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 947
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 948
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 949
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 951
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 952
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 953
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 954
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 955
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 956
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 957
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 960
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 961
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 962
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 963
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 964
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 966
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 967
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 968
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 969
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 971
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 972
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 973
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 975
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 976
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 977
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 978
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 979
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 980
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 981
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 982
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 985
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 987
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    .line 991
    const/16 v14, 0xfa0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_FLING:I

    .line 993
    const/16 v14, 0x64

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 994
    const/16 v14, 0x7f0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 995
    const/16 v14, 0x8a

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 1065
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 1144
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3936
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 5146
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 5147
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 6218
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 6220
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 6221
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 6222
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 7167
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 7168
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9604
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9988
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    .line 9989
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 9993
    const/16 v14, 0x9c4

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 9996
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutStart:Z

    .line 9997
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemIsGoToTopShown:Z

    .line 9999
    new-instance v14, Landroid/widget/AbsListView$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 10005
    new-instance v14, Landroid/widget/AbsListView$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 10011
    new-instance v14, Landroid/widget/AbsListView$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 10016
    new-instance v14, Landroid/widget/AbsListView$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$12;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 10021
    new-instance v14, Landroid/widget/AbsListView$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$13;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 10028
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10029
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCstate:I

    .line 10030
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 10035
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 10405
    new-instance v14, Landroid/widget/AbsListView$17;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$17;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1185
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1189
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1192
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1193
    .local v9, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 1194
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1197
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1200
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1201
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 1203
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1204
    .local v8, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1206
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1207
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 1209
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1211
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1213
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1214
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1216
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1217
    .local v6, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1219
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1220
    .local v7, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 1222
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1223
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1225
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1226
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1228
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1232
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v14, :cond_1

    .line 1233
    const-string v14, "AbsListView"

    const-string v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string/jumbo v14, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 1237
    :cond_1
    return-void

    .line 631
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "color":I
    .end local v6    # "enableFastScroll":Z
    .end local v7    # "fastScrollStyle":I
    .end local v8    # "scrollingCacheEnabled":Z
    .end local v9    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v10    # "smoothScrollbar":Z
    .end local v11    # "stackFromBottom":Z
    .end local v12    # "transcriptMode":I
    .end local v13    # "useTextFilter":Z
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2621
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/widget/AbsListView$CheckForLongPress;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    return v0
.end method

.method static synthetic access$1802(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    return p1
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->totwNotifyMultiSelectedStop(II)V

    return-void
.end method

.method static synthetic access$2502(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6100(Landroid/widget/AbsListView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic access$6300(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic access$6400(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$6500(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$6600(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6702(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    return p1
.end method

.method static synthetic access$6800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic access$6902(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic access$7100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$7108(Landroid/widget/AbsListView;)I
    .locals 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic access$7400(Landroid/widget/AbsListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->twSetFluidScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$7600(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return v0
.end method

.method static synthetic access$7802(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return p1
.end method

.method static synthetic access$7900(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 9899
    const/4 v0, 0x0

    .line 9901
    .local v0, "checkCount":I
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 9943
    :goto_0
    return-void

    .line 9905
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 9906
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9907
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9942
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 9909
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9912
    :cond_3
    if-ge p1, p2, :cond_5

    .line 9913
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 9914
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 9915
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9916
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9920
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 9914
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9918
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9922
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 9923
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 9924
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_1

    .line 9925
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9926
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9930
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 9924
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9928
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 9933
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9934
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9936
    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private autoScrollWithDuration(I)V
    .locals 9
    .param p1, "duration"    # I

    .prologue
    .line 2241
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2242
    .local v0, "firstPosition":I
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2243
    .local v3, "mFirst":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2244
    .local v4, "mLast":Landroid/view/View;
    const/4 v1, 0x0

    .line 2245
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 2246
    .local v2, "mCount":I
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoScrollWithDuration:CASE  mFirst "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mCount is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2248
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 2250
    :cond_1
    const-string v6, "AbsListView"

    const-string v7, "autoScrollWithDuration:CASEE  height > 0 && getAdapter()!= null && mCount > 0 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    sub-int v6, v2, v0

    mul-int v5, p1, v6

    .line 2252
    .local v5, "tempdur":I
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoScrollWithDuration(), duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    add-int/lit8 v6, v2, -0x1

    mul-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7, v5}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 2258
    return-void
.end method

.method private canScrollDown()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2953
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2956
    .local v2, "count":I
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v5, v6, :cond_1

    move v0, v3

    .line 2959
    .local v0, "canScrollDown":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 2960
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2961
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move v0, v3

    .line 2964
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollDown":Z
    :cond_1
    move v0, v4

    .line 2956
    goto :goto_0

    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v4

    .line 2961
    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2938
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    move v0, v2

    .line 2941
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2942
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 2943
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2944
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_2

    move v0, v2

    .line 2948
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollUp":Z
    :cond_1
    move v0, v3

    .line 2938
    goto :goto_0

    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v3

    .line 2944
    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 7338
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7339
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7340
    new-instance v0, Landroid/widget/AbsListView$8;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$8;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 7356
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7358
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1828
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1829
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return v1

    .line 1830
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1832
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7330
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7331
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 7332
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 7333
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 7335
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8369
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 8370
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8371
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8372
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8373
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8374
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8375
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8376
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8377
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8378
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8379
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8380
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8382
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 8383
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8387
    :goto_0
    return-void

    .line 8385
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 8011
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 8012
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8014
    :cond_0
    return-void
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 10392
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    .line 10393
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    .line 10394
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    .line 10395
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    .line 10396
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 10398
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10399
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10402
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10403
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 1

    .prologue
    .line 10378
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    .line 10379
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    .line 10380
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    .line 10381
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    .line 10382
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 10384
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10385
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10388
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10389
    return-void
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 10153
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 10154
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10156
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10159
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10161
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-nez v2, :cond_0

    .line 10172
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10173
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10175
    return-void

    .line 10166
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_0

    .line 10167
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

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

    .line 10316
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v6, :cond_5

    .line 10317
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 10318
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10319
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10321
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v3, :cond_4

    .line 10322
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_1

    .line 10323
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10324
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10325
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    .line 10327
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10332
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10334
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 10335
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 10349
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    :goto_1
    return-void

    .line 10328
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_4
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v6, :cond_2

    .line 10329
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 10336
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_5
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    if-ne v2, v3, :cond_3

    .line 10337
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 10338
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10339
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10340
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_6

    .line 10341
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10342
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 10344
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10345
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10346
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3484
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3485
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3486
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3487
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3488
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3489
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3493
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3495
    iget-object v5, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3496
    .local v2, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3498
    if-eqz v1, :cond_1

    .line 3499
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3500
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3501
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3506
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "selectedPosition":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 8611
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 8612
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8613
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8615
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 8057
    sparse-switch p2, :sswitch_data_0

    .line 8090
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 8059
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 8060
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8061
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 8062
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8094
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 8095
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 8096
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 8065
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 8066
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 8067
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8068
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 8069
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8071
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 8072
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8073
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 8074
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8075
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8077
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 8078
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 8079
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8080
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 8081
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8084
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 8085
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8086
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8087
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8088
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8057
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    .prologue
    .line 3647
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3649
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v3

    .line 3677
    :cond_0
    :goto_0
    return-object v3

    .line 3655
    :cond_1
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3661
    .local v1, "enabledState":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3663
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3664
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3665
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3666
    move v0, v2

    .line 3672
    :cond_2
    if-ltz v0, :cond_0

    .line 3673
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 3664
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 8390
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 8391
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8392
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x109016a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 8397
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 8399
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 8400
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8402
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9623
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 9840
    :cond_0
    :goto_0
    return-void

    .line 9625
    :pswitch_0
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 9626
    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 9629
    :pswitch_1
    const/4 v7, 0x0

    .line 9631
    .local v7, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 9632
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 9634
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_1

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 9636
    :cond_1
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eqz v9, :cond_2

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 9640
    :cond_2
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    if-nez v9, :cond_4

    .line 9641
    iget-object v9, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v9, :cond_3

    .line 9642
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 9643
    iget-object v9, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v10, 0x1

    invoke-interface {v9, p0, v10}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 9646
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 9649
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 9654
    .local v5, "count":I
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v9, v10, :cond_f

    const/4 v1, 0x1

    .line 9656
    .local v1, "canScrollDown":Z
    :goto_1
    if-nez v1, :cond_6

    if-lez v5, :cond_6

    .line 9657
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9658
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_10

    :cond_5
    const/4 v1, 0x1

    .line 9663
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    :goto_2
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_11

    const/4 v2, 0x1

    .line 9665
    .local v2, "canScrollUp":Z
    :goto_3
    if-nez v2, :cond_7

    .line 9666
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_7

    .line 9667
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9668
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_12

    const/4 v2, 0x1

    .line 9672
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    :goto_4
    const/4 v9, 0x1

    iget v10, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    iget-object v11, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9675
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x2

    cmp-long v9, v10, v12

    if-lez v9, :cond_13

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-gez v9, :cond_13

    .line 9676
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9683
    :cond_8
    :goto_5
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    .line 9684
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, -0x1

    .line 9685
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v9, :cond_9

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    if-nez v9, :cond_a

    :cond_9
    iget v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_b

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 9686
    :cond_a
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9687
    iget v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 9688
    iget v9, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 9689
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9690
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 9703
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9707
    if-gez v7, :cond_c

    if-nez v2, :cond_d

    :cond_c
    if-lez v7, :cond_18

    if-eqz v1, :cond_18

    .line 9709
    :cond_d
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v9, :cond_e

    .line 9710
    new-instance v9, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 9712
    :cond_e
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v10}, Landroid/widget/AbsListView$FlingRunnable;->start(IZ)V

    .line 9713
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 9715
    iget-object v9, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    iget v11, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9654
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 9658
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 9663
    .end local v3    # "child":Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 9668
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 9677
    .end local v3    # "child":Landroid/view/View;
    :cond_13
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-ltz v9, :cond_14

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-gez v9, :cond_14

    .line 9678
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_5

    .line 9679
    :cond_14
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-ltz v9, :cond_8

    .line 9680
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_5

    .line 9693
    :cond_15
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, 0x1

    .line 9694
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v9, :cond_16

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    if-nez v9, :cond_17

    :cond_16
    iget v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_b

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 9695
    :cond_17
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 9696
    iget v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 9697
    iget v9, p0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 9698
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9699
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_6

    .line 9718
    :cond_18
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    .line 9719
    .local v8, "overscrollMode":I
    if-eqz v8, :cond_19

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1e

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_1e

    :cond_19
    const/4 v0, 0x1

    .line 9722
    .local v0, "canOverscroll":Z
    :goto_7
    if-eqz v0, :cond_1d

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_1d

    .line 9723
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1f

    .line 9724
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9725
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9726
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 9727
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9739
    :cond_1a
    :goto_8
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_1c

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 9740
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9743
    :cond_1c
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9746
    :cond_1d
    if-nez v0, :cond_0

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 9747
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9719
    .end local v0    # "canOverscroll":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_7

    .line 9729
    .restart local v0    # "canOverscroll":Z
    :cond_1f
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    .line 9730
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9731
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9732
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 9733
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 9734
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 9735
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    .line 9755
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v5    # "count":I
    .end local v7    # "offset":I
    .end local v8    # "overscrollMode":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 9757
    .local v4, "childCount":I
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9762
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v4

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v9, v10, :cond_26

    const/4 v1, 0x1

    .line 9764
    .restart local v1    # "canScrollDown":Z
    :goto_9
    if-nez v1, :cond_21

    if-lez v4, :cond_21

    .line 9765
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9766
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_20

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_27

    :cond_20
    const/4 v1, 0x1

    .line 9771
    .end local v3    # "child":Landroid/view/View;
    :cond_21
    :goto_a
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_28

    const/4 v2, 0x1

    .line 9773
    .restart local v2    # "canScrollUp":Z
    :goto_b
    if-nez v2, :cond_22

    .line 9774
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_22

    .line 9775
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9776
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_29

    const/4 v2, 0x1

    .line 9780
    .end local v3    # "child":Landroid/view/View;
    :cond_22
    :goto_c
    const/4 v9, 0x1

    const v10, 0x453b8000    # 3000.0f

    iget-object v11, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 9783
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2a

    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    neg-int v6, v9

    .line 9785
    .local v6, "distanceToMove":I
    :goto_d
    if-gez v6, :cond_23

    if-nez v2, :cond_24

    :cond_23
    if-lez v6, :cond_2b

    if-eqz v1, :cond_2b

    .line 9788
    :cond_24
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v9, :cond_25

    .line 9789
    new-instance v9, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 9791
    :cond_25
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Landroid/widget/AbsListView$FlingRunnable;->start(IZ)V

    .line 9792
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 9794
    iget-object v9, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v10, 0x2

    iget v11, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9762
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v6    # "distanceToMove":I
    :cond_26
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 9766
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_27
    const/4 v1, 0x0

    goto :goto_a

    .line 9771
    .end local v3    # "child":Landroid/view/View;
    :cond_28
    const/4 v2, 0x0

    goto :goto_b

    .line 9776
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_29
    const/4 v2, 0x0

    goto :goto_c

    .line 9783
    .end local v3    # "child":Landroid/view/View;
    :cond_2a
    iget v6, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto :goto_d

    .line 9797
    .restart local v6    # "distanceToMove":I
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    .line 9798
    .restart local v8    # "overscrollMode":I
    if-eqz v8, :cond_2c

    const/4 v9, 0x1

    if-ne v8, v9, :cond_31

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_31

    :cond_2c
    const/4 v0, 0x1

    .line 9801
    .restart local v0    # "canOverscroll":Z
    :goto_e
    if-eqz v0, :cond_30

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_30

    .line 9802
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_32

    .line 9803
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9804
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9805
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 9806
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9816
    :cond_2d
    :goto_f
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_2f

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_2e

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 9817
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9820
    :cond_2f
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9823
    :cond_30
    if-nez v0, :cond_0

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 9824
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9798
    .end local v0    # "canOverscroll":Z
    :cond_31
    const/4 v0, 0x0

    goto :goto_e

    .line 9808
    .restart local v0    # "canOverscroll":Z
    :cond_32
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2d

    .line 9809
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9810
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9811
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 9812
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_f

    .line 9830
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v4    # "childCount":I
    .end local v6    # "distanceToMove":I
    .end local v8    # "overscrollMode":I
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_33

    .line 9831
    invoke-direct {p0}, Landroid/widget/AbsListView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 9832
    :cond_33
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 9833
    invoke-direct {p0}, Landroid/widget/AbsListView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 9623
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1241
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    .line 1242
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 1243
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 1244
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 1245
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1246
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1248
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 1249
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1250
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1251
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1252
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1253
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1254
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1257
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1258
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1261
    :cond_1
    new-instance v5, Landroid/view/HapticPreDrawListener;

    invoke-direct {v5}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v5, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1263
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    .line 1264
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 1268
    :cond_3
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1269
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    .line 1270
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x11600cf

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1272
    .local v1, "resolved":Z
    if-eqz v1, :cond_4

    .line 1273
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1277
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x11600d2

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1279
    if-eqz v1, :cond_5

    .line 1280
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1285
    .end local v1    # "resolved":Z
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10809bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 1286
    return-void
.end method

.method private initGoToTOP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10052
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 10053
    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10054
    :cond_0
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 10055
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 10056
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 10057
    iput v1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 10058
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10059
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10060
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10062
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6521
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6522
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6526
    :goto_0
    return-void

    .line 6524
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6529
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6530
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6532
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    .prologue
    .line 4682
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 4690
    :goto_0
    return-void

    .line 4685
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 4686
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 4687
    .local v0, "bottom":I
    :goto_1
    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4688
    .local v2, "left":I
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 4689
    .local v3, "right":I
    :goto_3
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 4686
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    goto :goto_1

    .line 4687
    .restart local v0    # "bottom":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 4688
    .restart local v2    # "left":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    goto :goto_3
.end method

.method private invalidateTopGlow()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4671
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 4679
    :goto_0
    return-void

    .line 4674
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 4675
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 4676
    .local v3, "top":I
    :goto_1
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4677
    .local v1, "left":I
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 4678
    .local v2, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_2
    move v3, v1

    .line 4675
    goto :goto_1

    .line 4677
    .restart local v1    # "left":I
    .restart local v3    # "top":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    goto :goto_2
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1942
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQCSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 10041
    sget v1, Landroid/widget/AbsListView;->sSpenUspLevel:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 10046
    :cond_0
    :goto_0
    return v0

    .line 10043
    :cond_1
    sget v1, Landroid/widget/AbsListView;->sSpenUspLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    if-eqz v1, :cond_0

    .line 10044
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 9854
    const-string v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9855
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6237
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 6238
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 6241
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 6242
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 6248
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 6249
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 6352
    :cond_2
    :goto_2
    return-void

    .line 6243
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 6244
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 6249
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 6252
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 6255
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 6260
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 6261
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_2

    .line 6262
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 6267
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 6271
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 6272
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6273
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 6277
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 6282
    .local v6, "isFingerAirView":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 6285
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 6288
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 6289
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 6290
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setFingerHovered(Z)V

    .line 6292
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setHovered(Z)V

    .line 6294
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 6295
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 6296
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 6297
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 6298
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 6300
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 6302
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 6303
    if-nez v10, :cond_a

    .line 6304
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6307
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 6308
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 6310
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 6312
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 6348
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 6349
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 6277
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 6282
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 6297
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 6316
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 6318
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6320
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 6322
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 6326
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 6327
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6328
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 6335
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 6336
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 6337
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 6340
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 6341
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 6342
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 6343
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6344
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6345
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6346
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 6330
    :cond_12
    if-nez v10, :cond_10

    .line 6331
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6659
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6660
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6664
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6665
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6666
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6667
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 6668
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6674
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 6676
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6664
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 6184
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 6197
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6198
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 6199
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6200
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6201
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6203
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 6204
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6205
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6208
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 6209
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6210
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6212
    :cond_1
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6213
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 6214
    return-void

    .line 6186
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 6187
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6189
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 6184
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 5895
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5896
    iget v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5898
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 5900
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5901
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 5902
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5904
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5905
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5907
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5908
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5909
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 5952
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5954
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5956
    :cond_1
    return-void

    .line 5911
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 5912
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 5913
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 5915
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 5916
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 5918
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 5919
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5920
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5921
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 5922
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 5940
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 5942
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5943
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5946
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5947
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5948
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5949
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 5923
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5927
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5930
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_6

    .line 5931
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 5934
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 5935
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 5936
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5959
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5960
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 5961
    const/4 v2, 0x0

    .line 5962
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5965
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 5968
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5971
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 5973
    .local v4, "y":I
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 6009
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 5979
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5984
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5985
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 5986
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5987
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 5988
    if-eqz v0, :cond_3

    .line 5989
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 5991
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5993
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5994
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 5991
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 5995
    :cond_5
    if-eqz v0, :cond_2

    .line 5997
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 5998
    .local v1, "point":[F
    aput v3, v1, v7

    .line 5999
    int-to-float v5, v4

    aput v5, v1, v8

    .line 6000
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 6001
    aget v5, v1, v7

    aget v6, v1, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 6006
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 5973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 6012
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 6155
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 6157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 6158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6163
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6165
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6167
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6168
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mPointerCount:I

    .line 6177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 6179
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 6181
    :cond_2
    :goto_1
    return-void

    .line 6016
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6017
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6018
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_e

    .line 6019
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 6020
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6023
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 6024
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_9

    const/4 v10, 0x1

    .line 6025
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_e

    .line 6026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 6027
    new-instance v17, Landroid/widget/AbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 6030
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 6031
    .local v14, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 6032
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 6034
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6036
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 6037
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6039
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6040
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 6041
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6042
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 6043
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 6044
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6045
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6046
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 6047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 6048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 6049
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 6050
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 6052
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6054
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 6055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6057
    :cond_8
    new-instance v17, Landroid/widget/AbsListView$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 6069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 6024
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 6037
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 6072
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6073
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6074
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 6075
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 6079
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 6080
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 6084
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v16    # "x":F
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6085
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 6088
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 6089
    .local v5, "childCount":I
    if-lez v5, :cond_15

    .line 6090
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    .line 6091
    .local v9, "firstChildTop":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 6092
    .local v12, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 6093
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 6094
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    if-lt v9, v7, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_f

    .line 6097
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6098
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6100
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6101
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6103
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 6109
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_13

    .line 6114
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 6115
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6117
    :cond_12
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 6121
    :cond_13
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6122
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 6124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6126
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 6127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 6132
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildBottom":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_15
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6133
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6138
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    .line 6139
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6141
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6142
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6143
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 6145
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6146
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 6147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 6149
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6012
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 4054
    iget v5, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_0

    .line 4055
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4056
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4057
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4058
    .local v1, "longPressPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4059
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4060
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4061
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4062
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4063
    const/4 v4, 0x1

    .line 4067
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_0
    return v4
.end method

.method private playQCBtnFadeIn()V
    .locals 2

    .prologue
    .line 10352
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10355
    :goto_0
    return-void

    .line 10353
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 10354
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 10353
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

    .line 10357
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10360
    :goto_0
    return-void

    .line 10358
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 10359
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 8030
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8031
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 8032
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 8035
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 8036
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8037
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8042
    :goto_0
    return-void

    .line 8040
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 3296
    iget v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_7

    const/4 v1, 0x1

    .line 3297
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 3298
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 3301
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3302
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3303
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 3304
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3308
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3309
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3310
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3311
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v6, p2, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3314
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3315
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 3317
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3320
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3321
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3323
    :cond_2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3324
    if-eqz v1, :cond_4

    .line 3325
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 3326
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3328
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3330
    :cond_4
    if-eqz p3, :cond_5

    .line 3331
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3334
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 3335
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_6

    .line 3336
    if-nez v0, :cond_8

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 3337
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 3338
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 3341
    :cond_6
    return-void

    .line 3296
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3336
    .restart local v0    # "isChildViewEnabled":Z
    .restart local v1    # "positionChanged":Z
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 6535
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6536
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6537
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6539
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 0

    .prologue
    .line 9560
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1068
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 1070
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 1072
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4476
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v33, p2, v3

    .line 4477
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 4478
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4479
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4480
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4482
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4484
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4485
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4486
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 4487
    if-eqz p3, :cond_1

    .line 4488
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4489
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4492
    :cond_1
    move/from16 v20, v33

    .line 4493
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 4495
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    .line 4497
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 4505
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 4507
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4510
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 4514
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 4516
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4517
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 4518
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4523
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 4524
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4531
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4532
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4533
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 4534
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4538
    :cond_4
    const/16 v18, 0x0

    .line 4539
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 4540
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4544
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4545
    if-eqz v25, :cond_7

    .line 4548
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4549
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_6

    .line 4552
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 4554
    .local v7, "overscroll":I
    const/4 v4, 0x0

    sub-int v5, v7, v21

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4556
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 4557
    if-eqz p3, :cond_6

    .line 4558
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4559
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4596
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4598
    .end local v27    # "motionViewRealTop":I
    :cond_7
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 4668
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_8
    :goto_4
    return-void

    .line 4482
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .restart local v20    # "deltaY":I
    :cond_a
    move/from16 v21, v20

    .line 4493
    goto/16 :goto_1

    .line 4528
    .restart local v21    # "incrementalDeltaY":I
    .restart local v22    # "lastYCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4562
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_c
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4565
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 4567
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4570
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 4571
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4574
    :cond_e
    if-nez v19, :cond_f

    .line 4575
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 4576
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4578
    :cond_f
    if-lez v21, :cond_11

    .line 4579
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4581
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    .line 4582
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4584
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_3

    .line 4585
    :cond_11
    if-gez v21, :cond_6

    .line 4586
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4588
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 4589
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4591
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_3

    .line 4600
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 4601
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 4602
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v30, v0

    .line 4603
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4604
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1c

    const/16 v28, 0x1

    .line 4606
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_14

    .line 4607
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 4610
    :cond_14
    move/from16 v0, v21

    neg-int v10, v0

    .line 4611
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_15

    if-gez v30, :cond_16

    :cond_15
    if-lez v29, :cond_1d

    if-gtz v30, :cond_1d

    .line 4612
    :cond_16
    move/from16 v0, v30

    neg-int v10, v0

    .line 4613
    add-int v21, v21, v10

    .line 4618
    :goto_6
    if-eqz v10, :cond_19

    .line 4619
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4621
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 4622
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_17

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_19

    .line 4625
    :cond_17
    if-lez v33, :cond_1e

    .line 4626
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4628
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_18

    .line 4629
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4631
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 4643
    .end local v31    # "overscrollMode":I
    :cond_19
    :goto_7
    if-eqz v21, :cond_1b

    .line 4645
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1a

    .line 4646
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4647
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4650
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4652
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4656
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4658
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4659
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4660
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4661
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4662
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4664
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1b
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 4665
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_4

    .line 4604
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1c
    const/16 v28, -0x1

    goto/16 :goto_5

    .line 4615
    .restart local v10    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4632
    .restart local v31    # "overscrollMode":I
    :cond_1e
    if-gez v33, :cond_19

    .line 4633
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4635
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4636
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4638
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_7

    .line 4660
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto :goto_8
.end method

.method private semIsSupportGotoTop()Z
    .locals 1

    .prologue
    .line 5322
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

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
    .line 5310
    const/4 v2, 0x0

    .line 5311
    .local v2, "isRunning":Z
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 5312
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5313
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5315
    .local v1, "enabledServices":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "(?i).*TalkBackService.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 5318
    .end local v1    # "enabledServices":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 5315
    .restart local v1    # "enabledServices":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private semPlayGotoToFadeIn()V
    .locals 4

    .prologue
    .line 10371
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10375
    :goto_0
    return-void

    .line 10372
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10373
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 10374
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private semPlayGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10364
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10368
    :goto_0
    return-void

    .line 10365
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10366
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 10367
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1933
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1936
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1869
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1870
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1876
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1878
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1879
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1881
    :cond_1
    return-void

    .line 1871
    :cond_2
    if-eqz p1, :cond_0

    .line 1872
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1873
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 3129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3131
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 3132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 3139
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 3140
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 3142
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 3143
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 3144
    if-eq v0, v1, :cond_1

    .line 3145
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3147
    :cond_1
    return-void

    .line 3133
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3134
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    move-object v0, v1

    .line 3136
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 23
    .param p1, "where"    # I

    .prologue
    .line 10178
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v17

    .line 10179
    .local v17, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    .line 10180
    .local v11, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 10181
    .local v9, "contentW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    div-int/lit8 v19, v9, 0x2

    add-int v7, v18, v19

    .line 10183
    .local v7, "centerX":I
    const/16 v16, 0x0

    .line 10184
    .local v16, "paddingTop":I
    const/4 v15, 0x0

    .line 10186
    .local v15, "paddingBottom":I
    const/4 v6, 0x0

    .line 10187
    .local v6, "btnW":I
    const/4 v5, 0x0

    .line 10189
    .local v5, "btnH":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10190
    .local v13, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10192
    const/4 v8, 0x1

    .line 10193
    .local v8, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    .line 10194
    .local v4, "basePkgName":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v18, "cocktailbarservice"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 10197
    :cond_0
    const/4 v8, 0x0

    .line 10202
    :cond_1
    if-eqz v8, :cond_3

    .line 10203
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    fill-array-data v12, :array_0

    .line 10204
    .local v12, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 10205
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 10208
    .local v10, "dm":Landroid/util/DisplayMetrics;
    const/16 v18, 0x0

    aget v18, v12, v18

    if-gez v18, :cond_2

    .line 10209
    const/16 v18, 0x0

    aget v18, v12, v18

    move/from16 v0, v18

    neg-int v14, v0

    .line 10210
    .local v14, "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_2

    .line 10211
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    div-int/lit8 v18, v18, 0x2

    add-int v7, v7, v18

    .line 10216
    .end local v14    # "overlappedW":I
    :cond_2
    const/16 v18, 0x0

    aget v18, v12, v18

    add-int v18, v18, v17

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 10217
    const/16 v18, 0x0

    aget v18, v12, v18

    add-int v18, v18, v17

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 10218
    .restart local v14    # "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_3

    .line 10219
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    div-int/lit8 v18, v18, 0x2

    sub-int v7, v7, v18

    .line 10224
    .end local v10    # "dm":Landroid/util/DisplayMetrics;
    .end local v12    # "locOnScr":[I
    .end local v14    # "overlappedW":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 10225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 10226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 10231
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 10267
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10270
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 10271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$14;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10284
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 10285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$15;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$16;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$16;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10313
    return-void

    .line 10228
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    move/from16 v16, v0

    .line 10229
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    goto/16 :goto_0

    .line 10233
    :pswitch_0
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10237
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCLocation:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v13, :cond_5

    .line 10238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1080556

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10239
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1080557

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10242
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502be

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 10243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502be

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 10244
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v7, v19

    add-int/lit8 v20, v16, 0x0

    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v7

    add-int v22, v5, v16

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10248
    :pswitch_2
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10252
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCLocation:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v13, :cond_6

    .line 10253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1080554

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10254
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1080555

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10257
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502be

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 10258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502be

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 10259
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v7, v19

    sub-int v20, v11, v5

    sub-int v20, v20, v15

    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v7

    sub-int v22, v11, v15

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10203
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 10231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 10270
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 10284
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
    .line 9844
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9846
    const/4 v1, 0x1

    .line 9849
    :goto_0
    return v1

    .line 9847
    :catch_0
    move-exception v0

    .line 9848
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AbsListView"

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

    .line 9849
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 8021
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8022
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 8023
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 8025
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 8027
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4430
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, p2, v7

    .line 4431
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4432
    .local v2, "distance":I
    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v7, :cond_2

    move v5, v8

    .line 4433
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 4435
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4436
    if-eqz v5, :cond_3

    .line 4437
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4438
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4443
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4444
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4445
    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4446
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4447
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4450
    :cond_1
    iget v7, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4456
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4457
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4458
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4457
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4432
    goto :goto_0

    .line 4440
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4441
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4461
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4464
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4465
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4466
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4468
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v8

    .line 4472
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v9

    goto :goto_4
.end method

.method private totwNotifyMultiSelectedStop(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4424
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStop(II)V

    .line 4426
    return-void
.end method

.method private twNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1599
    const/4 v0, 0x0

    .line 1600
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1602
    return v0
.end method

.method private twSetFluidScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 10511
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-nez v0, :cond_0

    .line 10512
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 10516
    :goto_0
    return-void

    .line 10514
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FluidScroller;->setStyle(I)V

    goto :goto_0
.end method

.method private twSetFluidScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 10490
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_2

    .line 10491
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FluidScroller;->setEnabled(Z)V

    .line 10497
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 10499
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_1

    .line 10500
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 10502
    :cond_1
    return-void

    .line 10492
    :cond_2
    if-eqz p1, :cond_0

    .line 10493
    new-instance v0, Landroid/widget/FluidScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FluidScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    .line 10494
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FluidScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private unregisterMotionListener()V
    .locals 0

    .prologue
    .line 9570
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1611
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1612
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1613
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1615
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1616
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1617
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1619
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1620
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1615
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1613
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1621
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1622
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1625
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2345
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2347
    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4810
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 4813
    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4801
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 4804
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 6683
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 6684
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6685
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6687
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 6698
    :cond_0
    return-void

    .line 6691
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 6692
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6693
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6694
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6696
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6691
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8488
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8447
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7380
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7381
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7393
    :cond_0
    :goto_0
    return v6

    .line 7385
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7386
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7387
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 7388
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 7389
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 7390
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 7392
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 7393
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8360
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8516
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1439
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1442
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1443
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 8409
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8410
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 8412
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8413
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 8416
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2713
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2714
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2715
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2716
    mul-int/lit8 v2, v1, 0x64

    .line 2718
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2719
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2720
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2721
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2722
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2725
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2726
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2727
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2728
    if-lez v3, :cond_1

    .line 2729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2737
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2734
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2737
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2742
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2743
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2744
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2745
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2746
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2747
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2748
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2749
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2750
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2766
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 2755
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2756
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2757
    const/4 v4, 0x0

    .line 2763
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2758
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2759
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 2761
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2772
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2773
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2774
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2776
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2781
    :cond_0
    :goto_0
    return v0

    .line 2779
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 7795
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7797
    const/4 v2, 0x0

    .line 7798
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 7799
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 7800
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7802
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 7803
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 7805
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7806
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7807
    .local v10, "end":I
    const/4 v11, 0x0

    .line 7808
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 7809
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 7810
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 7811
    const/4 v11, 0x1

    .line 7812
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7813
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7818
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 7819
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7820
    add-int/lit8 v9, v9, -0x1

    .line 7821
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 7822
    const/4 v2, 0x1

    .line 7823
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 7824
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7798
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 7808
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 7829
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7833
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 7834
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 7836
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3896
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 7074
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 8663
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8664
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 5154
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 5156
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 5157
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_0

    const-string v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 5158
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 5306
    :goto_0
    return v13

    .line 5162
    :cond_1
    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    .line 5163
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_2

    .line 5164
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 5168
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 5171
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 5172
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 5173
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 5174
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 5175
    .local v8, "contentBottom":I
    const/4 v10, 0x0

    .line 5176
    .local v10, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    .line 5180
    .local v9, "count":I
    if-eqz v7, :cond_5

    .line 5181
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 5185
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v13, v14, :cond_f

    const/4 v3, 0x1

    .line 5187
    .local v3, "canScrollDown":Z
    :goto_1
    if-nez v3, :cond_7

    if-lez v9, :cond_7

    .line 5188
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5189
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_10

    :cond_6
    const/4 v3, 0x1

    .line 5194
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v13, :cond_11

    const/4 v4, 0x1

    .line 5196
    .local v4, "canScrollUp":Z
    :goto_3
    if-nez v4, :cond_8

    .line 5197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 5198
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5199
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_12

    const/4 v4, 0x1

    .line 5204
    .end local v6    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_a

    if-nez v4, :cond_13

    if-nez v3, :cond_13

    .line 5207
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 5208
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5211
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_d

    .line 5212
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5215
    :cond_d
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5216
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5217
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5220
    const/4 v13, 0x2

    if-ne v2, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_e

    .line 5221
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5222
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5225
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 5185
    .end local v3    # "canScrollDown":Z
    .end local v4    # "canScrollUp":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5189
    .restart local v3    # "canScrollDown":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 5194
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 5199
    .restart local v4    # "canScrollUp":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    .line 5229
    .end local v6    # "child":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v13, :cond_14

    .line 5230
    new-instance v13, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 5232
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_15

    .line 5233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5235
    :cond_15
    packed-switch v2, :pswitch_data_0

    .line 5306
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 5237
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5238
    if-ltz v12, :cond_17

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_17

    .line 5240
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 5241
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5243
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5244
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 5246
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v8, :cond_16

    .line 5248
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 5249
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5251
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5252
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 5258
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    .line 5259
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5262
    :cond_18
    if-ltz v12, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_19

    .line 5264
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 5265
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5267
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5268
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 5270
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v8, :cond_16

    .line 5272
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 5273
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5275
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5276
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 5283
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_1a

    .line 5284
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5285
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5291
    :cond_1a
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 5292
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5294
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5296
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5297
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5298
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5299
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 5235
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    .line 3345
    const/4 v4, 0x0

    .line 3346
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3347
    .local v7, "trackChildTop":I
    const/4 v2, 0x0

    .line 3348
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3350
    .local v3, "lastChildPosition":I
    iget v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v9, v9, 0x22

    const/16 v10, 0x22

    if-ne v9, v10, :cond_5

    move v0, v8

    .line 3351
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3353
    iget v5, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 3354
    .local v5, "scrollX":I
    iget v6, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3355
    .local v6, "scrollY":I
    iget v9, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v10, v6

    iget v11, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v11, v5

    iget v12, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v12, v6

    iget v13, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v12, v13

    iget v13, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3358
    iget v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v9, v9, -0x23

    iput v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 3361
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3362
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 3363
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3366
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3368
    if-eqz v1, :cond_2

    .line 3369
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3372
    :cond_2
    if-eqz v0, :cond_3

    .line 3373
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3374
    iget v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v9, v9, 0x22

    iput v9, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 3377
    :cond_3
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-ne v9, v8, :cond_4

    .line 3378
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    if-nez v8, :cond_6

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    if-nez v8, :cond_6

    .line 3400
    :cond_4
    :goto_1
    return-void

    .line 3350
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3381
    .restart local v0    # "clipToPadding":Z
    .restart local v1    # "drawSelectorOnTop":Z
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3382
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 3384
    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    if-lt v8, v2, :cond_8

    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    if-gt v8, v3, :cond_8

    .line 3385
    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 3386
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 3387
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3389
    :cond_7
    iget v8, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 3392
    :cond_8
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    :goto_2
    iput v8, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 3393
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    if-le v8, v9, :cond_a

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 3395
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    iget v10, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    iget v11, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    iget v12, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3396
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3397
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 3392
    :cond_9
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    goto :goto_2

    .line 3393
    :cond_a
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    goto :goto_3
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4265
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4818
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 4259
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 5331
    .local v23, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 5332
    .local v24, "y":I
    const/4 v14, 0x0

    .line 5333
    .local v14, "contentTop":I
    const/4 v13, 0x0

    .line 5334
    .local v13, "contentBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 5335
    .local v6, "action":I
    const/16 v18, 0x0

    .line 5337
    .local v18, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 5338
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5341
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 5342
    new-instance v25, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 5345
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 5346
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v18

    .line 5348
    const/16 v25, 0xd3

    move/from16 v0, v25

    if-ne v6, v0, :cond_2

    .line 5349
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 5350
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchdownX:I

    .line 5351
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchdownY:I

    .line 5352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "car_mode_on"

    const/16 v27, 0x0

    const/16 v28, -0x3

    invoke-static/range {v25 .. v28}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    .line 5355
    .local v17, "isCarModeOn":Z
    :goto_0
    if-eqz v17, :cond_2

    .line 5356
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 5360
    .end local v17    # "isCarModeOn":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 5361
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 5364
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v25, v0

    if-lez v25, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v25, v0

    if-gtz v25, :cond_5

    .line 5365
    :cond_4
    const/16 v25, 0x1

    const/high16 v26, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v25

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 5369
    const/16 v25, 0x1

    const/high16 v26, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v25

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 5374
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 5375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 5376
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v13, v25, v26

    .line 5382
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move/from16 v0, v24

    if-lt v0, v14, :cond_6

    move/from16 v0, v24

    if-le v0, v13, :cond_9

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    const/16 v26, 0xd4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 5384
    const/16 v25, 0x1

    .line 5771
    :goto_2
    return v25

    .line 5352
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 5378
    :cond_8
    const/4 v14, 0x0

    .line 5379
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    goto :goto_1

    .line 5387
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 5771
    :cond_a
    :goto_3
    :sswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v25

    goto :goto_2

    .line 5389
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 5391
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 5392
    const-string v25, "AbsListView"

    const-string v26, " GTP Pressed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 5395
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5397
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 5400
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 5401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsQCShown:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 5402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 5403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5405
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 5406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5410
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5412
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    .line 5413
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 5414
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 5417
    :cond_f
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_3

    .line 5425
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 5427
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 5429
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 5430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-nez v25, :cond_11

    .line 5431
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 5432
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 5433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    sget-object v26, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5435
    :cond_11
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 5439
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchdownX:I

    move/from16 v25, v0

    sub-int v25, v23, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDeltamoveX:I

    .line 5440
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchdownY:I

    move/from16 v25, v0

    sub-int v25, v24, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDeltamoveY:I

    .line 5442
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDeltamoveX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDeltamoveX:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDeltamoveY:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDeltamoveY:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_12

    .line 5443
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 5445
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2e

    .line 5446
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v15

    .line 5448
    .local v15, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 5449
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 5450
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 5451
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5452
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5454
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 5456
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    .line 5457
    const/16 v22, 0x0

    .line 5458
    .local v22, "oldDistanceFromTop":I
    const/16 v21, 0x0

    .line 5459
    .local v21, "oldDistanceFromBottom":I
    const/16 v20, 0x0

    .line 5460
    .local v20, "newDistanceFromTop":I
    const/16 v19, 0x0

    .line 5462
    .local v19, "newDistanceFromBottom":I
    add-int/lit8 v16, v15, -0x1

    .local v16, "i":I
    :goto_4
    if-ltz v16, :cond_13

    .line 5463
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5464
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_23

    .line 5465
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    .line 5466
    .local v12, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5469
    .local v8, "childBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v0, v12, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v0, v8, :cond_22

    .line 5470
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5471
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v25

    add-int v25, v25, v16

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 5498
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v12    # "childTop":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v25, v0

    if-nez v25, :cond_15

    .line 5499
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 5500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    .line 5501
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 5504
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 5505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    .line 5506
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 5513
    .end local v16    # "i":I
    .end local v19    # "newDistanceFromBottom":I
    .end local v20    # "newDistanceFromTop":I
    .end local v21    # "oldDistanceFromBottom":I
    .end local v22    # "oldDistanceFromTop":I
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    .line 5514
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 5516
    :cond_16
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 5519
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v25, v0

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    if-nez v25, :cond_18

    .line 5520
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 5521
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 5522
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5523
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5526
    :cond_18
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 5527
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 5529
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v25, v0

    if-gez v25, :cond_27

    .line 5530
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 5535
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5537
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v25, v0

    :goto_7
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 5538
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    :goto_8
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 5539
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v25, v0

    :goto_9
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 5540
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v25, v0

    :goto_a
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 5542
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v15, :cond_2d

    .line 5543
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5544
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_21

    .line 5545
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 5546
    .local v10, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    .line 5547
    .restart local v12    # "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    .line 5548
    .local v11, "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5550
    .restart local v8    # "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_21

    .line 5551
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v10, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v12, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v0, v11, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v0, v8, :cond_20

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v10, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v0, v11, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v0, v10, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v0, v10, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v0, v11, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v11, :cond_2c

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v0, v12, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v8, :cond_20

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v0, v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v0, v12, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v0, v8, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v0, v8, :cond_2c

    .line 5555
    :cond_20
    add-int/lit8 v25, v10, 0x1

    add-int/lit8 v26, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5556
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_21

    .line 5557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5558
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 5559
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5542
    .end local v8    # "childBottom":I
    .end local v10    # "childLeft":I
    .end local v11    # "childRight":I
    .end local v12    # "childTop":I
    :cond_21
    :goto_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    .line 5476
    .restart local v8    # "childBottom":I
    .restart local v12    # "childTop":I
    .restart local v19    # "newDistanceFromBottom":I
    .restart local v20    # "newDistanceFromTop":I
    .restart local v21    # "oldDistanceFromBottom":I
    .restart local v22    # "oldDistanceFromTop":I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    sub-int v25, v25, v12

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 5477
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    sub-int v25, v25, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 5479
    add-int/lit8 v25, v15, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 5480
    add-int/lit8 v25, v15, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 5481
    add-int/lit8 v25, v15, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 5482
    move/from16 v22, v20

    .line 5483
    move/from16 v21, v19

    .line 5462
    .end local v8    # "childBottom":I
    .end local v12    # "childTop":I
    :cond_23
    :goto_d
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_4

    .line 5485
    .restart local v8    # "childBottom":I
    .restart local v12    # "childTop":I
    :cond_24
    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_25

    .line 5486
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v25

    add-int v25, v25, v16

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 5487
    move/from16 v22, v20

    .line 5490
    :cond_25
    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_23

    .line 5491
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v25

    add-int v25, v25, v16

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 5492
    move/from16 v21, v19

    goto :goto_d

    .line 5510
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v12    # "childTop":I
    .end local v16    # "i":I
    .end local v19    # "newDistanceFromBottom":I
    .end local v20    # "newDistanceFromTop":I
    .end local v21    # "oldDistanceFromBottom":I
    .end local v22    # "oldDistanceFromTop":I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    goto/16 :goto_5

    .line 5531
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v13, :cond_19

    .line 5532
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    goto/16 :goto_6

    .line 5537
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v25, v0

    goto/16 :goto_7

    .line 5538
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v25, v0

    goto/16 :goto_8

    .line 5539
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v25, v0

    goto/16 :goto_9

    .line 5540
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v25, v0

    goto/16 :goto_a

    .line 5562
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v10    # "childLeft":I
    .restart local v11    # "childRight":I
    .restart local v12    # "childTop":I
    .restart local v16    # "i":I
    :cond_2c
    add-int/lit8 v25, v10, 0x1

    add-int/lit8 v26, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5563
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21

    .line 5564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5565
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 5566
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_c

    .line 5572
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v10    # "childLeft":I
    .end local v11    # "childRight":I
    .end local v12    # "childTop":I
    :cond_2d
    const/16 v18, 0x1

    .line 5574
    .end local v15    # "count":I
    .end local v16    # "i":I
    :cond_2e
    if-eqz v18, :cond_37

    .line 5575
    add-int/lit8 v25, v14, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v25, v0

    add-int v25, v25, v14

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_32

    .line 5576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v25, v0

    if-nez v25, :cond_2f

    .line 5577
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2f

    .line 5581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5585
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-nez v25, :cond_30

    .line 5586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5587
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5622
    :cond_30
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_31

    .line 5623
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5631
    :cond_31
    :goto_f
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_3

    .line 5590
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v25, v0

    sub-int v25, v13, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_34

    move/from16 v0, v24

    if-gt v0, v13, :cond_34

    .line 5591
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v25, v0

    if-nez v25, :cond_33

    .line 5592
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_33

    .line 5596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5600
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-nez v25, :cond_30

    .line 5601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5602
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5606
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_35

    .line 5607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5610
    :cond_35
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5611
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5612
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_36

    .line 5616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5619
    :cond_36
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5625
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    move/from16 v25, v0

    if-eqz v25, :cond_31

    .line 5627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_31

    .line 5628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5634
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v25

    if-eqz v25, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v25, v0

    if-eqz v25, :cond_39

    .line 5635
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_38

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 5637
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    sget-object v26, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5643
    :cond_39
    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3c

    .line 5645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_3a

    .line 5646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5649
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_3b

    .line 5650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5653
    :cond_3b
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5656
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    .line 5657
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 5658
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 5664
    :cond_3c
    :sswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    move/from16 v25, v0

    if-nez v25, :cond_40

    .line 5665
    const/16 v25, 0xd4

    move/from16 v0, v25

    if-ne v6, v0, :cond_3d

    .line 5666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    move/from16 v25, v0

    if-nez v25, :cond_43

    const/16 v25, 0x1

    :goto_10
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 5668
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3e

    .line 5669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5672
    :cond_3e
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5673
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5674
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 5678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v25, v0

    if-nez v25, :cond_3f

    new-instance v25, Landroid/widget/AbsListView$CheckForDoublePenClick;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    .line 5680
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    .line 5681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    .line 5683
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    move/from16 v25, v0

    if-eqz v25, :cond_45

    .line 5684
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    move/from16 v25, v0

    if-eqz v25, :cond_44

    .line 5685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5696
    :cond_40
    :goto_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v25

    if-eqz v25, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_46

    .line 5697
    const-string v25, "AbsListView"

    const-string v26, " GTP pressed and up"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5700
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v25

    if-eqz v25, :cond_42

    .line 5701
    const-string v25, "AbsListView"

    const-string v26, " can scroll top "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5702
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    .line 5704
    .local v9, "childCount":I
    if-lez v9, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_41

    .line 5705
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 5708
    :cond_41
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 5709
    new-instance v25, Landroid/widget/AbsListView$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v25, v0

    const/high16 v26, 0x43fa0000    # 500.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 5718
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v27

    const/16 v28, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 5722
    .end local v9    # "childCount":I
    :cond_42
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 5723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    sget-object v26, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5724
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->playSoundEffect(I)V

    .line 5726
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 5666
    :cond_43
    const/16 v25, 0x0

    goto/16 :goto_10

    .line 5687
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_11

    .line 5690
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 5692
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    goto/16 :goto_11

    .line 5729
    :cond_46
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5730
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 5731
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 5733
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 5734
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 5735
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 5736
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 5738
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 5739
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 5740
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 5741
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 5744
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 5745
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 5747
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 5748
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 5749
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByTop:Landroid/view/View;

    .line 5750
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByTop:I

    .line 5751
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildTop:I

    .line 5752
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwCloseChildByBottom:Landroid/view/View;

    .line 5753
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwCloseChildPositionByBottom:I

    .line 5754
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromCloseChildBottom:I

    .line 5756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_47

    .line 5757
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5761
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v25

    if-eqz v25, :cond_48

    .line 5762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5764
    :cond_48
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    goto/16 :goto_3

    .line 5387
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_6
        0xd5 -> :sswitch_3
    .end sparse-switch

    .line 5396
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 6464
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6465
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_4

    .line 6466
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 6467
    .local v5, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 6473
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_6

    .line 6474
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v8, v10, v11

    .line 6475
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 6476
    .local v3, "height":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 6477
    .local v6, "translateX":I
    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 6484
    .local v7, "translateY":I
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 6485
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 6486
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6488
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    .line 6489
    .local v2, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6490
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6491
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6492
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 6494
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6496
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    .line 6497
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 6498
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int v11, v6, v8

    add-int v12, v7, v3

    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6500
    neg-int v10, v8

    add-int v1, v10, v6

    .line 6501
    .local v1, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v0, :cond_2

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :cond_2
    sub-int v2, v10, v9

    .line 6503
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6504
    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6505
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6506
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 6507
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 6509
    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6515
    .end local v0    # "clipToPadding":Z
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollY":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "width":I
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6517
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v9, :cond_5

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 6518
    :cond_5
    return-void

    .line 6479
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    .line 6480
    .restart local v8    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 6481
    .restart local v3    # "height":I
    const/4 v6, 0x0

    .line 6482
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .restart local v7    # "translateY":I
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3641
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3642
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3643
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 9509
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9511
    const-string v1, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9512
    const-string v1, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9513
    const-string v1, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9514
    const-string v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9515
    const-string v1, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9516
    const-string v1, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9518
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 9519
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 9520
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 9521
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 9523
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9587
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9589
    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 7648
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7649
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 7654
    :cond_0
    :goto_0
    return v1

    .line 7653
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 7654
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 2263
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2266
    .end local p0    # "this":Landroid/widget/AbsListView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/widget/AbsListView;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 6410
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6411
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6413
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6414
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 6415
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 8500
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8506
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8511
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2110
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2912
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2913
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2914
    check-cast p1, Landroid/view/View;

    .line 2915
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2918
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2919
    const/4 p1, 0x0

    .line 2922
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2803
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2804
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2805
    .local v2, "fadeEdge":F
    if-nez v1, :cond_1

    .line 2815
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 2808
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2809
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2812
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2813
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2814
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2815
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3424
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 8578
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1353
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1417
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1418
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1429
    :cond_1
    return-object v3

    .line 1421
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1422
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1423
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1425
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1426
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1385
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1386
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1389
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1402
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1405
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4103
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2332
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2333
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2336
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2337
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2342
    :goto_0
    return-void

    .line 2340
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7590
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7580
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 9443
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 9444
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 9445
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 9446
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 9448
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9449
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 9456
    :goto_0
    return v2

    .line 9452
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 9453
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9454
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 9455
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3409
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2998
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 3010
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2986
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3419
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2970
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2971
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2973
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 2133
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 2142
    :goto_0
    :pswitch_0
    return v1

    .line 2137
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2140
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3555
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 8545
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2658
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2659
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2661
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2786
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2787
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2788
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2797
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2791
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2792
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2795
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2796
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2797
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3414
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8540
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1967
    :goto_0
    return v0

    .line 1964
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1965
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v1}, Landroid/widget/FluidScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1967
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7840
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 7841
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7842
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7845
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 7847
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 7848
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 7849
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 7853
    :cond_0
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7854
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 7858
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7860
    if-lez v1, :cond_f

    .line 7865
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 7867
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 7868
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7870
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7871
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7987
    :cond_2
    :goto_0
    return-void

    .line 7873
    :cond_3
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 7874
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7875
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 7876
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 7879
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7880
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7881
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7882
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7883
    .local v2, "lastBottom":I
    :goto_1
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_6

    if-gt v2, v5, :cond_6

    .line 7885
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2    # "lastBottom":I
    :cond_5
    move v2, v5

    .line 7882
    goto :goto_1

    .line 7890
    .restart local v2    # "lastBottom":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 7893
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_7
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7941
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7943
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 7946
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 7947
    add-int/lit8 v6, v1, -0x1

    .line 7949
    :cond_9
    if-gez v6, :cond_a

    .line 7950
    const/4 v6, 0x0

    .line 7954
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7956
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 7957
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7895
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7900
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7901
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 7907
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 7908
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 7910
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7911
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 7913
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7915
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 7918
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7926
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7922
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_2

    .line 7934
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7935
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7961
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7962
    if-ltz v7, :cond_f

    .line 7963
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7970
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7978
    :cond_f
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7979
    iput v13, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 7980
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 7981
    iput v13, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 7982
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 7983
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 7984
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7985
    iput v13, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 7986
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7978
    goto :goto_3

    .line 7893
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 8422
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 7604
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7605
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7606
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7608
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7609
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7611
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 7612
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 7613
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 7614
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 7616
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7661
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 7662
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 7663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7664
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 7665
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2070
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 2071
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 2075
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2076
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 2078
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 2079
    return-void

    .line 2072
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FluidScroller;->onScroll(III)V

    goto :goto_0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1953
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v2, :cond_2

    .line 1954
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1956
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1954
    goto :goto_0

    .line 1956
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1978
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1979
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1981
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 8101
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1368
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 4732
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4733
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4734
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4736
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4737
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4738
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 4746
    :cond_0
    const/4 v1, 0x0

    .line 4747
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 4749
    :goto_0
    return v1

    .line 4747
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 9884
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 2040
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3404
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2280
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2053
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2357
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2327
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 7180
    invoke-super {p0}, Landroid/widget/AdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwFluidScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTwUsingAdapterView()Z
    .locals 1

    .prologue
    .line 7205
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->twIsFluidScrollEnabled()Z

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

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3687
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3688
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3689
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 3563
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3609
    :cond_0
    :goto_0
    return-void

    .line 3567
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3568
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3569
    .local v4, "selectorRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3572
    iget v8, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3574
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 3575
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3576
    invoke-virtual {v5, v10}, Landroid/view/View;->setPressed(Z)V

    .line 3578
    :cond_3
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3581
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3582
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 3583
    .local v6, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 3586
    .local v7, "y":F
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    .line 3587
    .local v2, "longClickable":Z
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3588
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    instance-of v8, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v8, :cond_4

    .line 3589
    if-eqz v2, :cond_5

    .line 3590
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3597
    :cond_4
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3599
    if-eqz v2, :cond_0

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v8, :cond_0

    .line 3600
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v8, :cond_6

    .line 3601
    new-instance v8, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 3605
    :goto_2
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v8}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3606
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3593
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3603
    :cond_6
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2904
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 3038
    const-wide/16 v6, 0x8

    const-string/jumbo v8, "obtainView"

    invoke-static {v6, v7, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3040
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, p2, v6

    .line 3041
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 3044
    .local v5, "viewType":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 3045
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 3046
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 3049
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v6, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v5, :cond_0

    .line 3050
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3053
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    .line 3054
    invoke-direct {p0, v4, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3055
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3059
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-boolean v7, p2, v6

    .line 3062
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3124
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "transientView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 3066
    .restart local v3    # "transientView":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    .line 3068
    .local v2, "scrapView":Landroid/view/View;
    const/4 v6, -0x2

    if-eq v5, v6, :cond_3

    .line 3069
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 3073
    :goto_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3075
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 3076
    if-eq v0, v2, :cond_4

    .line 3078
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3088
    :cond_2
    :goto_2
    if-nez v0, :cond_5

    .line 3089
    const-string v6, "AbsListView"

    const-string v7, " try again to check child on obtainview"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    invoke-interface {v6, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3091
    if-nez v0, :cond_5

    .line 3092
    const-string v6, "AbsListView"

    const-string v7, " child is null again"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mAdapter ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getChildCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mAdapter.getCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3071
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const-string v6, "AbsListView"

    const-string/jumbo v7, "viewType is heaer or footer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3080
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-boolean v7, p2, v6

    .line 3083
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto/16 :goto_2

    .line 3101
    :cond_5
    iget v6, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v6, :cond_6

    .line 3102
    iget v6, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3105
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 3106
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3109
    :cond_7
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3114
    iget-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v6, :cond_8

    .line 3115
    new-instance v6, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v6, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 3117
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v6

    if-nez v6, :cond_9

    .line 3118
    iget-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 3122
    :cond_9
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v0

    .line 3124
    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 3693
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3695
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 3696
    .local v1, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3698
    iget-boolean v2, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    .line 3699
    iget-object v2, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3702
    :cond_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v2, :cond_1

    .line 3703
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3706
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v2, :cond_2

    .line 3707
    new-instance v2, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3708
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3711
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3712
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3713
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3716
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_5

    .line 3717
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3722
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_4

    .line 3723
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/preference/PreferenceGroupAdapter;

    iget v0, v2, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    .line 3724
    .local v0, "extraPaddingTop":I
    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-nez v2, :cond_4

    if-lez v0, :cond_4

    .line 3725
    iput v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 3728
    .end local v0    # "extraPaddingTop":I
    :cond_4
    return-void

    .line 3718
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v2, :cond_3

    .line 3719
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3901
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3902
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3903
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3905
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3906
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3908
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3909
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3911
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3912
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3914
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_4

    .line 3915
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3917
    :cond_4
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 8196
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8197
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 8198
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 8199
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 8201
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 8202
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 8203
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 8205
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3732
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3734
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3737
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3740
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3742
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3743
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3744
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3745
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3746
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3749
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3750
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3751
    iput-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3754
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3755
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3756
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3759
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3760
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3761
    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3764
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3765
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3768
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3769
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3772
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3773
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3776
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3777
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3780
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3781
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3782
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3785
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    .line 3786
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3789
    :cond_9
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3790
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3794
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    .line 3795
    iput v3, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 3798
    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3799
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3800
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7991
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 7992
    sparse-switch p1, :sswitch_data_0

    .line 8004
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 8005
    return-void

    .line 7994
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7995
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 7999
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8000
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 8004
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7992
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 8492
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8493
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8494
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 8496
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2666
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2667
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2668
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2671
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2672
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2673
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2675
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2677
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 6369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 6370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 6397
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 6372
    :pswitch_1
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 6373
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 6374
    .local v2, "vscroll":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_0

    .line 6375
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-int v1, v4

    .line 6376
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 6384
    .end local v1    # "delta":I
    .end local v2    # "vscroll":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 6385
    .local v0, "actionButton":I
    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    :cond_1
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v4, v3, :cond_0

    .line 6388
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6389
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6390
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6370
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 8427
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8429
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 8430
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 8439
    :cond_0
    :goto_0
    return-void

    .line 8434
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8435
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x1

    .line 3234
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 3268
    :cond_0
    :goto_0
    return-void

    .line 3240
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3241
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_3

    .line 3242
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 3247
    .local v0, "isItemEnabled":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_4

    .line 3248
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 3244
    .end local v0    # "isItemEnabled":Z
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isItemEnabled":Z
    goto :goto_1

    .line 3252
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_6

    .line 3253
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3254
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3259
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3260
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3261
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3264
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3265
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3266
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 3256
    :cond_6
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 2116
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2117
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2118
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2120
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2121
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2123
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2124
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2125
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2126
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2129
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 6551
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6557
    :cond_0
    :goto_0
    return v0

    .line 6553
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FluidScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6557
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6562
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6565
    .local v0, "actionMasked":I
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v9, :cond_0

    .line 6566
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6569
    :cond_0
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 6653
    :cond_2
    :goto_0
    return v7

    .line 6577
    :cond_3
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6579
    :cond_4
    iget-object v9, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FluidScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6583
    :cond_5
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    move v7, v8

    .line 6653
    goto :goto_0

    .line 6585
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6586
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_7

    const/4 v9, 0x5

    if-ne v3, v9, :cond_8

    .line 6587
    :cond_7
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 6591
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 6592
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 6593
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6595
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 6596
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_9

    if-ltz v1, :cond_9

    .line 6599
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6600
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6601
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6602
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6603
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6604
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6605
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 6607
    .end local v4    # "v":Landroid/view/View;
    :cond_9
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 6608
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 6609
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6610
    iput v8, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 6611
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 6612
    if-ne v3, v11, :cond_6

    goto :goto_0

    .line 6619
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 6621
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6622
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_a

    .line 6623
    const/4 v2, 0x0

    .line 6624
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6626
    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 6627
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 6628
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6629
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v10}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_0

    .line 6639
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6640
    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6641
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6642
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6643
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 6648
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 6619
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 4148
    sparse-switch p1, :sswitch_data_0

    .line 4163
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4151
    :sswitch_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4155
    :sswitch_1
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 4158
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_0

    .line 4159
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 4148
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 4168
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4169
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 4171
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4172
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4252
    :goto_0
    return v3

    .line 4175
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 4179
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4180
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4181
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v6, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4182
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4184
    :cond_1
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    goto :goto_0

    .line 4189
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 4252
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 4195
    :sswitch_0
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    .line 4196
    iget v4, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    .line 4197
    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 4203
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 4207
    iget v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4209
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    .line 4210
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 4211
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 4212
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4213
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4216
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 4217
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 4226
    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 4227
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_1

    .line 4199
    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 4219
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 4220
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4222
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 4234
    :sswitch_1
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 4238
    :sswitch_2
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 4239
    iput v8, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 4240
    iput v8, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 4241
    iput v6, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 4242
    iput v6, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto :goto_1

    .line 4245
    :sswitch_3
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 4246
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 4189
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x1

    .line 2848
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2850
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2852
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2853
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2855
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2854
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2857
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2860
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2861
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2863
    if-eqz p1, :cond_2

    .line 2864
    const-string v2, "AbsListView"

    const-string v3, " onsize change "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 2866
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 2867
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 2870
    :cond_2
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2873
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_4

    .line 2874
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2878
    :cond_3
    :goto_1
    return-void

    .line 2875
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v2, :cond_3

    .line 2876
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FluidScroller;->onItemCountChanged(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2822
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2823
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2825
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2826
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2827
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2828
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2829
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2832
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2833
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2834
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2835
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2836
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2837
    .local v1, "lastBottom":I
    :goto_0
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2840
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .line 2836
    goto :goto_0

    .line 2837
    .restart local v1    # "lastBottom":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6447
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6448
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6450
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6451
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6452
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6454
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6455
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 6457
    :cond_1
    const/4 v1, 0x1

    .line 6459
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 6431
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 6432
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6433
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 6434
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6435
    :cond_0
    move v4, p5

    .line 6436
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 6437
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 6438
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 6439
    sub-int/2addr v4, v2

    .line 6441
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 6443
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .end local v8    # "oldTop":I
    :cond_3
    move v8, v1

    .line 6433
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6424
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6425
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 6426
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 6358
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 6359
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 6360
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 6361
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 6363
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 6365
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 8671
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 8672
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8673
    const-string v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRemoteAdapter() #2 getCount()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8674
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 8675
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 8676
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8683
    :cond_0
    :goto_0
    return v0

    .line 8679
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 8680
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 8681
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 8696
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2573
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2575
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2576
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2578
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2580
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 2581
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2582
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2583
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2584
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2585
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2586
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2600
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2602
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2603
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2606
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2607
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2610
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2612
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2614
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2617
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2618
    return-void

    .line 2587
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 2588
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2590
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2591
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2592
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2593
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2594
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2595
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2596
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2597
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3876
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3877
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 3878
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3882
    :cond_0
    :goto_0
    return-void

    .line 3879
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_0

    .line 3880
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2481
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2483
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2485
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2487
    .local v8, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v12, :cond_1

    .line 2489
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2490
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2491
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2492
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2493
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->height:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2494
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2495
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2496
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2497
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2498
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2568
    :cond_0
    :goto_0
    return-object v8

    .line 2502
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 2503
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 2504
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2505
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2507
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 2509
    iget v12, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2510
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2511
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2538
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2539
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 2540
    iget-object v10, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2541
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 2542
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2543
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 2544
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2549
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2551
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 2552
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2554
    :cond_3
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 2555
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2556
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2557
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 2558
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2557
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2502
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2513
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 2523
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2524
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2525
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2526
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 2527
    iget v12, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2529
    :cond_6
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2530
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_2

    .line 2532
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2533
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2534
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2549
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 2560
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2562
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2564
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    .line 2565
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3429
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3430
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3431
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 3435
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 3436
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 3440
    :cond_1
    :goto_0
    return-void

    .line 3437
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_1

    .line 3438
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FluidScroller;->onSizeChanged(IIII)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6419
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 8456
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8457
    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 8458
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8459
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8460
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 8462
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 8463
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 8469
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 8470
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8472
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 8473
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8480
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 8464
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 8466
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 8467
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 8475
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5787
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 5790
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    :cond_1
    move v10, v9

    .line 5891
    :cond_2
    :goto_0
    return v10

    .line 5793
    :cond_3
    iget-object v11, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_4

    .line 5794
    iget-object v11, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5797
    :cond_4
    iget-boolean v11, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v11, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    move v10, v9

    .line 5802
    goto :goto_0

    .line 5805
    :cond_6
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 5807
    iget-object v11, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v11, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 5809
    :cond_7
    iget-object v11, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v11, :cond_9

    .line 5810
    iget-object v11, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v11, p1}, Landroid/widget/FluidScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5811
    .local v4, "intercepted":Z
    iget-object v11, p0, Landroid/widget/AbsListView;->mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    if-eqz v11, :cond_8

    .line 5812
    iget-object v11, p0, Landroid/widget/AbsListView;->mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    iget-object v12, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v12}, Landroid/widget/FluidScroller;->getEffectState()I

    move-result v12

    iget-object v13, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v13}, Landroid/widget/FluidScroller;->getScrollY()F

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/widget/AbsListView$OnFluidScrollEffectListener;->onEffectStateChanged(IF)V

    .line 5814
    :cond_8
    if-nez v4, :cond_2

    .line 5819
    .end local v4    # "intercepted":Z
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 5820
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5822
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5823
    .local v0, "actionMasked":I
    if-nez v0, :cond_a

    .line 5824
    iput v9, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 5826
    :cond_a
    const/4 v11, 0x0

    iget v12, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5827
    packed-switch v0, :pswitch_data_0

    .line 5887
    :goto_1
    :pswitch_0
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 5888
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5890
    :cond_b
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 5829
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5834
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5839
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5844
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_1

    .line 5849
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5850
    iget v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5851
    .local v7, "x":I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5852
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 5853
    .local v5, "motionPosition":I
    if-ltz v5, :cond_c

    .line 5855
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5856
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5857
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5859
    .end local v1    # "child":Landroid/view/View;
    :cond_c
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5860
    iget v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_1

    .line 5866
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5867
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5868
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 5869
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 5870
    .restart local v8    # "y":I
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5871
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5872
    iput v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5873
    iput v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5874
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 5875
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_d

    .line 5877
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5878
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5879
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5881
    .end local v1    # "child":Landroid/view/View;
    :cond_d
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5882
    iget v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_1

    .line 5827
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 4694
    if-eqz p1, :cond_2

    .line 4696
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4700
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4703
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4705
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4724
    :cond_1
    :goto_0
    return-void

    .line 4707
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4708
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4709
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4710
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4712
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4713
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4716
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4717
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4718
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 4719
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 4720
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9574
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9575
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9577
    if-nez p2, :cond_0

    .line 9581
    :goto_0
    return-void

    .line 9579
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3804
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3809
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 3810
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 3812
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 3814
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 3816
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 3817
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3818
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3819
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3822
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3823
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 3824
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3826
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3827
    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3828
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3829
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3830
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3834
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3836
    if-ne v0, v2, :cond_2

    .line 3838
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3842
    :cond_2
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eqz v2, :cond_3

    .line 3843
    iput v1, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 3867
    :cond_3
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3869
    if-nez p1, :cond_4

    .line 3870
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3872
    :cond_4
    return-void

    .end local v0    # "touchMode":I
    :cond_5
    move v0, v2

    .line 3814
    goto :goto_0

    .line 3846
    .restart local v0    # "touchMode":I
    :cond_6
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_7

    .line 3848
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3852
    :cond_7
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 3854
    if-ne v0, v2, :cond_8

    .line 3856
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3860
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3861
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3862
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2149
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2237
    :cond_0
    :goto_0
    return v3

    .line 2153
    :cond_1
    const/4 v0, 0x7

    .line 2154
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_2

    .line 2155
    const-string v5, "auto_scroll_speed_level_count"

    const/16 v6, 0xf

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2156
    .local v1, "autoScrollSpeedLevelCount":I
    const/16 v5, 0x78c

    add-int/lit8 v6, v1, -0x1

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 2158
    const-string v5, "auto_scroll_speed_level"

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2161
    .end local v1    # "autoScrollSpeedLevelCount":I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v3, v4

    .line 2237
    goto :goto_0

    .line 2164
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2165
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v5

    .line 2166
    .local v2, "viewportHeight":I
    invoke-virtual {p0, v2, v7}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v2    # "viewportHeight":I
    :cond_4
    move v3, v4

    .line 2169
    goto :goto_0

    .line 2172
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v5, :cond_5

    .line 2173
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v5

    .line 2174
    .restart local v2    # "viewportHeight":I
    neg-int v4, v2

    invoke-virtual {p0, v4, v7}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v2    # "viewportHeight":I
    :cond_5
    move v3, v4

    .line 2177
    goto :goto_0

    .line 2179
    :sswitch_2
    const-string v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case ACTION_AUTOSCROLL_DOWN  canScrollDown():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2181
    const/16 v4, 0xfa0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->fling(I)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 2184
    goto/16 :goto_0

    .line 2186
    :sswitch_3
    const-string v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case ACTION_AUTOSCROLL_UP  canScrollUp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2188
    const/16 v4, -0xfa0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->fling(I)V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 2191
    goto/16 :goto_0

    .line 2194
    :sswitch_4
    const-string v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case ACTION_AUTOSCROLL_ON, canScrollDown = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2196
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    mul-int/2addr v4, v0

    rsub-int v4, v4, 0x7f0

    iput v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 2197
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 2200
    goto/16 :goto_0

    .line 2202
    :sswitch_5
    const-string v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AUTOSCROLL_SPEED_UP, current duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2204
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v5, 0x64

    if-le v4, v5, :cond_9

    .line 2205
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v5, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 2206
    :cond_9
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 2209
    goto/16 :goto_0

    .line 2211
    :sswitch_6
    const-string v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AUTOSCROLL_SPEED_DOWN, current duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2213
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v5, 0x7f0

    if-ge v4, v5, :cond_b

    .line 2214
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v5, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 2216
    :cond_b
    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    .line 2219
    goto/16 :goto_0

    .line 2221
    :sswitch_7
    const-string v5, "AbsListView"

    const-string v6, "ACTION_AUTOSCROLL_TOP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2223
    invoke-virtual {p0, v4, v4, v4}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    goto/16 :goto_0

    :cond_d
    move v3, v4

    .line 2226
    goto/16 :goto_0

    .line 2228
    :sswitch_8
    const-string v5, "AbsListView"

    const-string v6, "ACTION_AUTOSCROLL_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    invoke-virtual {p0, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 2230
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 2231
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 2161
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

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1525
    const/4 v8, 0x0

    .line 1526
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1527
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1529
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 1530
    const/4 v8, 0x1

    .line 1531
    const/4 v0, 0x0

    .line 1533
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1535
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1536
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1537
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1538
    if-eqz v6, :cond_7

    .line 1539
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1544
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1545
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1549
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1550
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1552
    const/4 v7, 0x0

    .line 1554
    :cond_2
    const/4 v0, 0x1

    .line 1571
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1572
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1576
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1577
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1580
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1535
    goto :goto_0

    .line 1541
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1547
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1555
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1556
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1557
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 1558
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1559
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1560
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1561
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1562
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1564
    :cond_a
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1568
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1556
    goto :goto_4

    .line 1565
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1566
    :cond_e
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const v7, 0xc369

    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 4073
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_2

    .line 4074
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 4077
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 4078
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 4080
    :cond_0
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 4081
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 4098
    :cond_1
    :goto_0
    return v6

    .line 4086
    :cond_2
    const/4 v6, 0x0

    .line 4087
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 4088
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4091
    :cond_3
    if-nez v6, :cond_4

    .line 4092
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4093
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 4095
    :cond_4
    if-eqz v6, :cond_1

    .line 4096
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 4276
    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4277
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 4278
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4279
    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4281
    :cond_0
    instance-of v6, p0, Landroid/widget/ListView;

    if-eqz v6, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget v2, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 4282
    .local v2, "dividerHeight":I
    :goto_0
    if-lez v2, :cond_1

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget-object v6, v6, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 4284
    .local v3, "drawDividers":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4285
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4286
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4287
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4288
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4289
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4291
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4292
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 4296
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v6

    .end local v1    # "count":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    move v2, v3

    .line 4281
    goto :goto_0

    .line 4285
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "drawDividers":Z
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4296
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/4 v6, -0x1

    goto :goto_2
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4309
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 4310
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4311
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4313
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 3292
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3293
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 3281
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3282
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3283
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 3284
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 3285
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3289
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3287
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3274
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3275
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8589
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8590
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$5600(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 8593
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8594
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8595
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 8597
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8598
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8599
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8600
    if-eqz v3, :cond_0

    .line 8602
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 8593
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8606
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 8607
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 8608
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 7624
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 7625
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7626
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7628
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7629
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7630
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1102
    invoke-direct {p0}, Landroid/widget/AbsListView;->registerMotionListener()V

    .line 1103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 1104
    return-void
.end method

.method public registerIRMotion()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6708
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_7

    .line 6710
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v0, v3, :cond_0

    .line 6711
    invoke-static {v2}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6712
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 6714
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eq v0, v3, :cond_5

    .line 6715
    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_2

    .line 6718
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 6719
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6720
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 6723
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    .line 6724
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6725
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 6728
    :cond_2
    if-nez p1, :cond_4

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_4

    .line 6730
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_3

    .line 6731
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 6733
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_4

    .line 6734
    invoke-static {v2}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6735
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 6738
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_5

    .line 6740
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 6744
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 6745
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_6

    .line 6747
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 6753
    :cond_6
    :goto_0
    return-void

    .line 6749
    :cond_7
    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6750
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6543
    if-eqz p1, :cond_0

    .line 6544
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6546
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6547
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2681
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2682
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2684
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2375
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2376
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 2377
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2378
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2380
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2690
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2691
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2693
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2694
    iput v2, p0, Landroid/widget/AbsListView;->mLastPosition:I

    .line 2697
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2698
    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2699
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2700
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2701
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2702
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2703
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2704
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2705
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2706
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2707
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2708
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2709
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 9949
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 9959
    :cond_0
    :goto_0
    return-void

    .line 9952
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 9954
    .local v0, "checkCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 9957
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9958
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7692
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 7694
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 7695
    const/16 v17, 0x0

    .line 7790
    :goto_0
    return v17

    .line 7698
    :cond_0
    const/4 v13, 0x0

    .line 7700
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7701
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7702
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7703
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7704
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 7706
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 7707
    move v12, v14

    .line 7709
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7710
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7711
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7714
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 7715
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7771
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7776
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7777
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 7778
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7779
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 7780
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 7781
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7782
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7783
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 7784
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 7788
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7790
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7716
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 7717
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 7721
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 7723
    move v12, v7

    .line 7724
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 7725
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7726
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7728
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 7730
    move v13, v15

    .line 7732
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 7735
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7738
    :cond_6
    if-lt v15, v5, :cond_7

    .line 7740
    add-int v12, v7, v8

    .line 7741
    move v13, v15

    .line 7742
    goto/16 :goto_1

    .line 7724
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7746
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 7747
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 7748
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7750
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 7751
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7752
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7753
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7755
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 7756
    move v13, v15

    .line 7757
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 7758
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7762
    :cond_a
    if-gt v2, v4, :cond_b

    .line 7763
    add-int v12, v7, v8

    .line 7764
    move v13, v15

    .line 7765
    goto/16 :goto_1

    .line 7750
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 7786
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 7790
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7672
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7673
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7674
    const/4 v0, 0x1

    .line 7676
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 7367
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 7368
    return-void
.end method

.method public semAutoHide(I)V
    .locals 4
    .param p1, "when"    # I

    .prologue
    .line 1810
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    if-nez p1, :cond_2

    .line 1812
    invoke-virtual {p0}, Landroid/widget/AbsListView;->twIsFluidScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1814
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1817
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1818
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1819
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public semEnableGoToTop(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/16 v4, 0x14d

    const/4 v2, 0x2

    .line 1740
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1741
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 1743
    if-eqz p1, :cond_1

    .line 1744
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1748
    :goto_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 1749
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1750
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1752
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$1;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1763
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 1764
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1765
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1767
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$2;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1778
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$3;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1802
    :cond_0
    return-void

    .line 1746
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 1748
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 1763
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public semSetupGoToTop(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    .line 10069
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v14, :cond_0

    .line 10150
    :goto_0
    return-void

    .line 10070
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10071
    const-string v14, "AbsListView"

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

    iget v0, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10073
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v14

    if-nez v14, :cond_1

    const/16 p1, 0x0

    .line 10075
    :cond_1
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v14, :cond_d

    .line 10076
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v14

    if-nez v14, :cond_c

    const/16 p1, 0x0

    .line 10081
    :cond_2
    :goto_1
    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10084
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    if-nez v14, :cond_4

    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10086
    :cond_4
    const/4 v14, 0x2

    move/from16 v0, p1

    if-eq v0, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10089
    :cond_5
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 10091
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v13

    .line 10092
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 10093
    .local v8, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v5, v14, v15

    .line 10094
    .local v5, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    div-int/lit8 v15, v5, 0x2

    add-int v4, v14, v15

    .line 10096
    .local v4, "centerX":I
    const/4 v12, 0x0

    .line 10097
    .local v12, "paddingTop":I
    const/4 v11, 0x0

    .line 10099
    .local v11, "paddingBottom":I
    const/4 v3, 0x0

    .line 10100
    .local v3, "btnW":I
    const/4 v2, 0x0

    .line 10101
    .local v2, "btnH":I
    const/4 v7, 0x0

    .line 10104
    .local v7, "gapH":I
    const/4 v14, 0x2

    new-array v9, v14, [I

    fill-array-data v9, :array_0

    .line 10105
    .local v9, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 10106
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 10109
    .local v6, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v9, v14

    if-gez v14, :cond_6

    .line 10110
    const/4 v14, 0x0

    aget v14, v9, v14

    neg-int v10, v14

    .line 10111
    .local v10, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    if-le v10, v14, :cond_6

    .line 10112
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v14, v10, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v4, v14

    .line 10117
    .end local v10    # "overlappedW":I
    :cond_6
    const/4 v14, 0x0

    aget v14, v9, v14

    add-int/2addr v14, v13

    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_7

    .line 10118
    const/4 v14, 0x0

    aget v14, v9, v14

    add-int/2addr v14, v13

    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v10, v14, v15

    .line 10119
    .restart local v10    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    if-le v10, v14, :cond_7

    .line 10120
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v14, v10, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v4, v14

    .line 10124
    .end local v10    # "overlappedW":I
    :cond_7
    packed-switch p1, :pswitch_data_0

    .line 10143
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 10144
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10146
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v14, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10148
    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 10149
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    goto/16 :goto_0

    .line 10077
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
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    goto/16 :goto_1

    .line 10079
    :cond_d
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_e
    const/16 p1, 0x1

    goto/16 :goto_1

    .line 10082
    :cond_f
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 10126
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

    iget v14, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 10127
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 10131
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10132
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 10133
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 10134
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502c0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 10135
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

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 10104
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 10124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method semShowGoToTOP()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2082
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2083
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 2084
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 2086
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2094
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 2095
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2096
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 2097
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 2106
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 2101
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 2102
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 2105
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 8113
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 8188
    :cond_0
    :goto_0
    return v2

    .line 8117
    :cond_1
    const/4 v2, 0x0

    .line 8118
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 8119
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 8151
    :goto_1
    if-eqz v3, :cond_0

    .line 8152
    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 8154
    move-object v1, p3

    .line 8155
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 8156
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 8159
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 8160
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8162
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8163
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 8164
    :cond_3
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 8126
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 8127
    goto :goto_1

    .line 8129
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 8132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 8133
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 8134
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 8136
    :cond_4
    const/4 v2, 0x1

    .line 8143
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 8144
    goto :goto_1

    .line 8137
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 8139
    const/4 v2, 0x1

    .line 8140
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8147
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 8165
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 8166
    :cond_8
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 8171
    :pswitch_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8172
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 8173
    :cond_9
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 8174
    iput v5, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 8175
    iput v5, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 8176
    iput v9, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 8177
    iput v9, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 8178
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 8179
    :cond_b
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 8184
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 8119
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 8160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 142
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x1

    .line 1308
    if-eqz p1, :cond_1

    .line 1309
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1310
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1312
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1314
    :cond_0
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    .line 1315
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 1316
    const-string v0, "AbsListView"

    const-string v1, " setAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    .line 1318
    invoke-direct {p0}, Landroid/widget/AbsListView;->initGoToTOP()V

    .line 1322
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 1323
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1326
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    .line 1327
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1331
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 1333
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 1334
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1337
    :cond_4
    return-void
.end method

.method public setAirScrollEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1094
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 6232
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6233
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 8559
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 8560
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 8561
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8562
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8563
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8565
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 8567
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1646
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1647
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1649
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1651
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1652
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1653
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1655
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1656
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1659
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1660
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1661
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1665
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1666
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1673
    :cond_4
    :goto_0
    return-void

    .line 1667
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1668
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1669
    :cond_6
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_4

    .line 1670
    :cond_7
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3518
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3519
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9877
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 9878
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9865
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 9866
    return-void
.end method

.method public setEnableOnclickInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9895
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsTwOnClickEnabled:Z

    .line 9896
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4794
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4795
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1912
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1913
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1914
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1917
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1919
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1920
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1930
    :cond_1
    :goto_0
    return-void

    .line 1922
    :cond_2
    new-instance v0, Landroid/widget/AbsListView$5;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1852
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1853
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1855
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1891
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 1895
    :goto_0
    return-void

    .line 1893
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2633
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2634
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2637
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2638
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2639
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2641
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2642
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2643
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2647
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2648
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2651
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3946
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 3947
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2885
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2887
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2892
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2893
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2897
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2891
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 7054
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7055
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7057
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2900(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 7058
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4787
    iput p1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 4788
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4761
    if-eqz p1, :cond_0

    .line 4762
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 4766
    :goto_0
    return-void

    .line 4764
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4776
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 4777
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1454
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1460
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1462
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1466
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1469
    :cond_4
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1470
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1471
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1472
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1473
    if-eqz p2, :cond_a

    .line 1474
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1479
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1480
    if-eqz p2, :cond_b

    .line 1481
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1486
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1487
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1488
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1515
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 1516
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v1, :cond_9

    .line 1517
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1518
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1519
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1476
    .restart local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1483
    :cond_b
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1492
    .end local v0    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v7, v8

    .line 1495
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1496
    :cond_d
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1497
    if-eqz v7, :cond_e

    .line 1498
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1503
    :cond_e
    if-eqz p2, :cond_11

    .line 1504
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1505
    if-eqz v7, :cond_f

    .line 1506
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1508
    :cond_f
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v1

    .line 1492
    goto :goto_4

    .line 1509
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1510
    :cond_12
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1125
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 1126
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1685
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1686
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1688
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1689
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 9966
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9971
    :goto_0
    return-void

    .line 9969
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 9970
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnFluidScrollEffectListener(Landroid/widget/AbsListView$OnFluidScrollEffectListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    .prologue
    .line 10451
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    .line 10452
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 2062
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2063
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2064
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1290
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1291
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1292
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1293
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1294
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1300
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1301
    return-void

    .line 1297
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1298
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 8720
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$5602(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 8721
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8625
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 8626
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8627
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8629
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8640
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 8633
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8635
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 8636
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8637
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8638
    const-string v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteAdapter #1 getCount()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 8652
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8653
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 8655
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1997
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1998
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1999
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 2001
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3612
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3613
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3614
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2297
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2298
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2300
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 2301
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 9470
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 9504
    :cond_0
    :goto_0
    return-void

    .line 9474
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v0, v1, :cond_2

    .line 9475
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9476
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 9478
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 9481
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9482
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 9483
    if-ltz p1, :cond_3

    .line 9484
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 9490
    :cond_3
    :goto_1
    if-ltz p1, :cond_0

    .line 9491
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 9492
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 9494
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 9495
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 9496
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 9499
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    .line 9500
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 9502
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0

    .line 9487
    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3529
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3530
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3533
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3534
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3535
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3537
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3538
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3539
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3540
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 3541
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 3542
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 3543
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 3544
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3545
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3546
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2031
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 2032
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2368
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2369
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 2370
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2372
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2314
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2315
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1141
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1142
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8530
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 8531
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 7067
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 7068
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1987
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1988
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1989
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8703
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8704
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 8706
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3466
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 3467
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 3472
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4
    move v0, v3

    .line 3466
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 3467
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3479
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 4109
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 4110
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4111
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4112
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4113
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 4114
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4115
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 4120
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 4118
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4120
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 4125
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 4126
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 4127
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 4128
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 4130
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 4131
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4134
    :cond_0
    if-nez v6, :cond_1

    .line 4135
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4138
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 4143
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 7149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 7150
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 9
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v8, 0x0

    .line 7259
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 7260
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7264
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7265
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7266
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 7267
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 7268
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 7270
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_5

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_5

    if-lez p1, :cond_5

    .line 7274
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 7275
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 7276
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7283
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v5, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    if-nez v5, :cond_4

    .line 7284
    const-string v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " re calculate done2 mPositionScroller = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7285
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 7286
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 7287
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_4

    .line 7288
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7291
    :cond_4
    return-void

    .line 7279
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7280
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 7297
    const/4 v2, -0x1

    .line 7298
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 7299
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 7304
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 7305
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7306
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 7307
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7308
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7310
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 7311
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 7312
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 7313
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7314
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 7317
    add-int/lit8 v2, v2, 0x1

    .line 7324
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 7327
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 7300
    :cond_3
    if-lez p1, :cond_0

    .line 7301
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 7318
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 7321
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 7083
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7084
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7086
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 7087
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 7137
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7138
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7140
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 7141
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 7120
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7121
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7123
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 7124
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 7102
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7103
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7105
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 7106
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3448
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3453
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3451
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 7406
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 7407
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 7408
    const/16 v29, 0x1

    .line 7570
    :goto_0
    return v29

    .line 7411
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 7412
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 7414
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 7419
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 7420
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 7421
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 7422
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 7423
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 7427
    :cond_1
    sub-int v25, v13, v16

    .line 7428
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 7429
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 7431
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 7432
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 7433
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7438
    :goto_1
    if-gez p2, :cond_4

    .line 7439
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7444
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7447
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 7448
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 7452
    :goto_3
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 7453
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 7458
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 7460
    .local v5, "cannotScrollDown":Z
    :goto_5
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 7463
    .local v6, "cannotScrollUp":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 7464
    :cond_2
    if-eqz p2, :cond_9

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 7435
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 7441
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 7450
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 7455
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 7458
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 7460
    .restart local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 7464
    .restart local v6    # "cannotScrollUp":Z
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 7467
    :cond_a
    if-gez p2, :cond_15

    const/4 v11, 0x1

    .line 7469
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 7470
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_b

    .line 7471
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 7474
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 7475
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 7477
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 7478
    .local v27, "start":I
    const/4 v10, 0x0

    .line 7480
    .local v10, "count":I
    if-eqz v11, :cond_18

    .line 7481
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 7482
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 7483
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 7485
    :cond_c
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 7486
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7487
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 7523
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 7525
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 7527
    if-lez v10, :cond_e

    .line 7528
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 7529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7534
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_f

    .line 7535
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 7538
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 7540
    if-eqz v11, :cond_10

    .line 7541
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7544
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7545
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_11

    move/from16 v0, v26

    if-ge v0, v3, :cond_12

    .line 7546
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 7549
    :cond_12
    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b

    .line 7550
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7551
    .local v9, "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 7552
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7563
    .end local v9    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 7564
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    move/from16 v29, v0

    if-eqz v29, :cond_14

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v29

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    .line 7565
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 7566
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 7568
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 7570
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 7467
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 7490
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_16
    add-int/lit8 v10, v10, 0x1

    .line 7491
    add-int v24, v15, v20

    .line 7494
    .local v24, "position":I
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7495
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 7496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7485
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 7501
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 7502
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 7503
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 7505
    :cond_19
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_d

    .line 7506
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7507
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_d

    .line 7510
    move/from16 v27, v20

    .line 7511
    add-int/lit8 v10, v10, 0x1

    .line 7512
    add-int v24, v15, v20

    .line 7515
    .restart local v24    # "position":I
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7516
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    .line 7517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7505
    :cond_1a
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 7554
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1c

    .line 7555
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7556
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 7557
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 7560
    .end local v9    # "childIndex":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 7192
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 7193
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public twIsFluidScrollEnabled()Z
    .locals 1

    .prologue
    .line 10528
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    if-nez v0, :cond_0

    .line 10529
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwFluidScrollEnabled:Z

    .line 10531
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1589
    const/4 v0, 0x0

    .line 1591
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1592
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1594
    :cond_0
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1720
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 1721
    return-void
.end method

.method public twSetFluidScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 10473
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwFluidScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 10474
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTwFluidScrollEnabled:Z

    .line 10476
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10477
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->twSetFluidScrollerEnabledUiThread(Z)V

    .line 10487
    :cond_0
    :goto_0
    return-void

    .line 10479
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$18;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$18;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 7218
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 7219
    return-void
.end method

.method public twSetSmoothScrollEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 10542
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 10543
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 10545
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2900(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->twSetSmoothScrollEnable(Z)V

    .line 10546
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1700
    if-eqz p1, :cond_1

    .line 1701
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1705
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1707
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 7231
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 7232
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7235
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 7236
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 7237
    new-instance v1, Landroid/widget/AbsListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 7238
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    .line 7241
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 7242
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/AbsListView;->mTwScrollAmount:I

    if-le v1, v2, :cond_3

    .line 7243
    if-lez p1, :cond_2

    .line 7244
    :goto_0
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    if-le p1, v1, :cond_3

    .line 7245
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mTwScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7244
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 7248
    :cond_2
    :goto_1
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 7249
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mTwScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7248
    sget v1, Landroid/widget/AbsListView;->mTwScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 7253
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7254
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7255
    :cond_4
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1112
    invoke-direct {p0}, Landroid/widget/AbsListView;->unregisterMotionListener()V

    .line 1113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 1114
    return-void
.end method

.method public unregisterIRMotion()V
    .locals 0

    .prologue
    .line 1087
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1151
    return-void
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2926
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2927
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2930
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2931
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2933
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2927
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2931
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3617
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3618
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3620
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3621
    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3622
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3623
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3624
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3625
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3637
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3627
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3630
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3634
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3682
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
