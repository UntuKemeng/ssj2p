.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$8;,
        Landroid/widget/TextView$StylusEventListener;,
        Landroid/widget/TextView$TouchMonitorListener;,
        Landroid/widget/TextView$MoreInfoHPW;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$TextViewClipboardEventListener;
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field public static final CLIPBOARD_ID:I = 0x5

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field public static final DICTIONARY_ID:I = 0x9

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field static final HCT_LETTER_SPACING:F = 0.06f

.field static final HCT_LETTER_SPACING_NOT_BACKUPPED:F = -300.0f

.field static final ID_CLIPBOARD:I = 0x1020057

.field static final ID_CLOSE:I = 0x1020059

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_DELETE:I = 0x1020058

.field static final ID_DICTIONARY:I = 0x1020055

.field static final ID_MULTI_SELECT_ALL:I = 0x102005d

.field static final ID_MULTI_SELECT_COPY:I = 0x102005e

.field static final ID_MULTI_SELECT_DICTIONARY:I = 0x102005f

.field static final ID_MULTI_SELECT_SHARE:I = 0x1020061

.field static final ID_MULTI_SELECT_TRANSLATE:I = 0x1020060

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field static final ID_WEBSEARCH:I = 0x1020510

.field private static final IS_PEN_SELECTION_ENABLED:Z = false

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field public static final SHARE_ID:I = 0x7

.field private static final SIGNED:I = 0x2

.field private static final STRIKE_ANIMATION_DURATION:I = 0x190

.field private static final STRIKE_VERTICAL_POS_VALUE:F = 0.72f

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final TRANSLATE_ID:I = 0x6

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field public static final WEBSEARCH_ID:I = 0x8

.field private static final emailPattern:Ljava/util/regex/Pattern;

.field private static mCurTime:J

.field private static mIsFindTargetView:Z

.field private static mLastHoveredTime:J

.field private static mLastHoveredView:Landroid/widget/TextView;

.field private static mLastPenDownTime:J

.field private static mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

.field private static mShowPenSelectionRunnable:Ljava/lang/Runnable;

.field private static mTargetView:Landroid/widget/TextView;

.field static sLastCutCopyOrTextChangedTime:J

.field private static final urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final HOVER_INTERVAL:I

.field private SEC_CLIPBOARD_DISABLED:I

.field private SEC_CLIPBOARD_ENABLED:I

.field private SEC_CLIPBOARD_UNKNOWN:I

.field private TOUCH_DELTA:F

.field private doShowingHermes:Z

.field private fromResLock:Z

.field private final isOverlayThemesEnabled:Z

.field private mAllowTransformationLengthChange:Z

.field private mAttachedWindow:Z

.field private mAutoLinkMask:I

.field private mBackuppedLetterSpacing:F

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mCanSelectText:Z

.field private mCanTextMultiSelection:Z

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mChangedSelectionBySIP:Z

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mClipboardDataFormat:I

.field private mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field mCursorWidth:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDisplayText:Ljava/lang/CharSequence;

.field private mDrawStrikeAnimationValue:F

.field private mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsisKeywordCount:I

.field private mEllipsisKeywordStart:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableClipboard:Z

.field private mEnableDictionary:Z

.field private mEnableLinkPreview:Z

.field private mEnableMultiSelection:Z

.field private mEnableShare:Z

.field private mEnableWebSearch:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstTouch:Z

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mHideSoftInput:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHoverEnterTime:J

.field private mHoverExitTime:J

.field private mHoveredSpan:Ljava/lang/Object;

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIsSecClipboardEnabled:I

.field mIsTouchDown:Z

.field private mKeycodeDpadCenterStatus:Z

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastTouchUpTime:J

.field private mLayout:Landroid/text/Layout;

.field private mLineIsDrawed:Z

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mMultiHighlightColor:I

.field private mMultiHighlightPaint:Landroid/graphics/Paint;

.field private mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field protected mOnDragResult:Z

.field protected mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

.field private mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSkipDrawTextStrike:Z

.field private mSkipUpdateDisplayText:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mStrikeThroughPaint:Landroid/graphics/Paint;

.field private mStringName:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTextStrikeThroughEnabled:Z

.field protected mToolType:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUseDisplayText:Z

.field private mUserSetTextScaleX:Z

.field private mWBMaxLength:I

.field private mWBTextBuffer:Ljava/lang/CharSequence;

.field private mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

.field private mhasMultiSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 380
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 386
    new-array v1, v4, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 387
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 392
    new-array v1, v5, [I

    const v2, 0x101034d

    aput v2, v1, v4

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 818
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v1, Landroid/widget/TextView;->urlPattern:Ljava/util/regex/Pattern;

    .line 819
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v1, Landroid/widget/TextView;->emailPattern:Ljava/util/regex/Pattern;

    .line 912
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 913
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 915
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 8045
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 13050
    sput-object v3, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .line 13252
    sput-object v3, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    .line 13253
    sput-object v3, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    .line 13254
    sput-boolean v4, Landroid/widget/TextView;->mIsFindTargetView:Z

    .line 13255
    sput-wide v6, Landroid/widget/TextView;->mLastHoveredTime:J

    .line 13256
    sput-wide v6, Landroid/widget/TextView;->mLastPenDownTime:J

    .line 13257
    sput-wide v6, Landroid/widget/TextView;->mCurTime:J

    .line 13258
    sput-object v3, Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 949
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 950
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 953
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 954
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 958
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 73
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 963
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 358
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorWidth:I

    .line 424
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    .line 429
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->fromResLock:Z

    .line 431
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 432
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 448
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    .line 449
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    .line 452
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mToolType:I

    .line 456
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isOverlayThemesEnabled:Z

    .line 461
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    .line 462
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 465
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->SEC_CLIPBOARD_UNKNOWN:I

    .line 466
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->SEC_CLIPBOARD_DISABLED:I

    .line 467
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->SEC_CLIPBOARD_ENABLED:I

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->SEC_CLIPBOARD_UNKNOWN:I

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mIsSecClipboardEnabled:I

    .line 470
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    .line 473
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mWBMaxLength:I

    .line 478
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    .line 481
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDrawStrikeAnimationValue:F

    .line 483
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    .line 484
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLineIsDrawed:Z

    .line 485
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSkipDrawTextStrike:Z

    .line 761
    const/16 v70, 0x3

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 763
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 770
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 783
    sget-object v70, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 795
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    .line 796
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mUseDisplayText:Z

    .line 797
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    .line 798
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mhasMultiSelection:Z

    .line 799
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableMultiSelection:Z

    .line 800
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableLinkPreview:Z

    .line 801
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCanTextMultiSelection:Z

    .line 803
    const v70, -0x66ff8747

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMultiHighlightColor:I

    .line 806
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->doShowingHermes:Z

    .line 807
    const/16 v70, 0x12c

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->HOVER_INTERVAL:I

    .line 808
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    .line 809
    const-wide/16 v70, -0x1

    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    .line 810
    const-wide/16 v70, -0x1

    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    .line 811
    const/high16 v70, 0x41400000    # 12.0f

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->TOUCH_DELTA:F

    .line 813
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 815
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    .line 816
    invoke-static {}, Lcom/samsung/android/penselect/PenSelectionController;->getInstance()Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    .line 828
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLocaleChanged:Z

    .line 830
    const/high16 v70, -0x3c6a0000    # -300.0f

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    .line 833
    const v70, 0x800033

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 838
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 840
    const/high16 v70, 0x3f800000    # 1.0f

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 841
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 846
    const v70, 0x7fffffff

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 847
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 848
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 849
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 851
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 852
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 854
    const v70, 0x7fffffff

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 855
    const/16 v70, 0x2

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 856
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 857
    const/16 v70, 0x2

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 860
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 861
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 862
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 874
    sget-object v70, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 880
    const v70, 0x6633b5e5

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 883
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 885
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFirstTouch:Z

    .line 886
    const-wide/16 v70, 0x0

    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastTouchUpTime:J

    .line 6936
    const/16 v70, 0x2

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mClipboardDataFormat:I

    .line 11432
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mOnDragResult:Z

    .line 12095
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHideSoftInput:Z

    .line 13045
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13673
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCanSelectText:Z

    .line 13674
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableShare:Z

    .line 13675
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableClipboard:Z

    .line 13676
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableDictionary:Z

    .line 13677
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableWebSearch:Z

    .line 13763
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 14017
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->getInstance()Landroid/widget/MultiSelectPopupWindow;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    .line 965
    const-string v70, ""

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    .line 968
    .local v54, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v54 .. v54}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v18

    .line 971
    .local v18, "compat":Landroid/content/res/CompatibilityInfo;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 974
    new-instance v70, Landroid/text/TextPaint;

    const/16 v71, 0x1

    invoke-direct/range {v70 .. v71}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v70, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v71

    move-object/from16 v0, v71

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v71, v0

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v70, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 978
    new-instance v70, Landroid/graphics/Paint;

    const/16 v71, 0x1

    invoke-direct/range {v70 .. v71}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v70, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 991
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 993
    const/16 v62, 0x0

    .line 994
    .local v62, "textColorHighlight":I
    const/16 v61, 0x0

    .line 995
    .local v61, "textColor":Landroid/content/res/ColorStateList;
    const/16 v63, 0x0

    .line 996
    .local v63, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v64, 0x0

    .line 997
    .local v64, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v65, 0xf

    .line 998
    .local v65, "textSize":I
    const/16 v37, 0x0

    .line 999
    .local v37, "fontFamily":Ljava/lang/String;
    const/16 v38, 0x0

    .line 1000
    .local v38, "fontFamilyExplicit":Z
    const/16 v67, -0x1

    .line 1001
    .local v67, "typefaceIndex":I
    const/16 v59, -0x1

    .line 1002
    .local v59, "styleIndex":I
    const/4 v7, 0x0

    .line 1003
    .local v7, "allCaps":Z
    const/16 v56, 0x0

    .line 1004
    .local v56, "shadowcolor":I
    const/16 v29, 0x0

    .local v29, "dx":F
    const/16 v30, 0x0

    .local v30, "dy":F
    const/16 v53, 0x0

    .line 1005
    .local v53, "r":F
    const/16 v33, 0x0

    .line 1006
    .local v33, "elegant":Z
    const/16 v44, 0x0

    .line 1007
    .local v44, "letterSpacing":F
    const/16 v39, 0x0

    .line 1008
    .local v39, "fontFeatureSettings":Ljava/lang/String;
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    .line 1009
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 1011
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v66

    .line 1019
    .local v66, "theme":Landroid/content/res/Resources$Theme;
    sget-object v70, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    move-object/from16 v2, v70

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1021
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 1022
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/16 v70, 0x0

    const/16 v71, -0x1

    move/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1024
    .local v8, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1025
    const/16 v70, -0x1

    move/from16 v0, v70

    if-eq v8, v0, :cond_0

    .line 1026
    sget-object v70, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v66

    move-object/from16 v1, v70

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1029
    :cond_0
    if-eqz v9, :cond_2

    .line 1030
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v47

    .line 1031
    .local v47, "n":I
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_0
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_1

    .line 1032
    move/from16 v0, v41

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1034
    .local v10, "attr":I
    packed-switch v10, :pswitch_data_0

    .line 1031
    :goto_1
    add-int/lit8 v41, v41, 0x1

    goto :goto_0

    .line 1036
    :pswitch_0
    move/from16 v0, v62

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v62

    .line 1037
    goto :goto_1

    .line 1040
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    .line 1041
    goto :goto_1

    .line 1044
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v63

    .line 1045
    goto :goto_1

    .line 1048
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v64

    .line 1049
    goto :goto_1

    .line 1052
    :pswitch_4
    move/from16 v0, v65

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v65

    .line 1053
    goto :goto_1

    .line 1056
    :pswitch_5
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    .line 1057
    goto :goto_1

    .line 1060
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1061
    goto :goto_1

    .line 1064
    :pswitch_7
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v59

    .line 1065
    goto :goto_1

    .line 1068
    :pswitch_8
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1069
    goto :goto_1

    .line 1072
    :pswitch_9
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    .line 1073
    goto :goto_1

    .line 1076
    :pswitch_a
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 1077
    goto :goto_1

    .line 1080
    :pswitch_b
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    .line 1081
    goto :goto_1

    .line 1084
    :pswitch_c
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v53

    .line 1085
    goto :goto_1

    .line 1088
    :pswitch_d
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 1089
    goto :goto_1

    .line 1092
    :pswitch_e
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v44

    .line 1093
    goto :goto_1

    .line 1096
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    goto :goto_1

    .line 1101
    .end local v10    # "attr":I
    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1104
    .end local v41    # "i":I
    .end local v47    # "n":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v32

    .line 1105
    .local v32, "editable":Z
    const/16 v42, 0x0

    .line 1106
    .local v42, "inputMethod":Ljava/lang/CharSequence;
    const/16 v49, 0x0

    .line 1107
    .local v49, "numeric":I
    const/16 v19, 0x0

    .line 1108
    .local v19, "digits":Ljava/lang/CharSequence;
    const/16 v52, 0x0

    .line 1109
    .local v52, "phone":Z
    const/4 v12, 0x0

    .line 1110
    .local v12, "autotext":Z
    const/4 v11, -0x1

    .line 1111
    .local v11, "autocap":I
    const/4 v14, 0x0

    .line 1112
    .local v14, "buffertype":I
    const/16 v55, 0x0

    .line 1113
    .local v55, "selectallonfocus":Z
    const/16 v22, 0x0

    .local v22, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x0

    .local v28, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 1114
    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .local v25, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .line 1115
    .local v21, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    .line 1116
    .local v26, "drawableTint":Landroid/content/res/ColorStateList;
    const/16 v27, 0x0

    .line 1117
    .local v27, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    const/16 v23, 0x0

    .line 1118
    .local v23, "drawablePadding":I
    const/16 v34, -0x1

    .line 1119
    .local v34, "ellipsize":I
    const/16 v57, 0x0

    .line 1120
    .local v57, "singleLine":Z
    const/16 v46, -0x1

    .line 1121
    .local v46, "maxlength":I
    const-string v60, ""

    .line 1122
    .local v60, "text":Ljava/lang/CharSequence;
    const/16 v40, 0x0

    .line 1123
    .local v40, "hint":Ljava/lang/CharSequence;
    const/16 v50, 0x0

    .line 1124
    .local v50, "password":Z
    const/16 v43, 0x0

    .line 1126
    .local v43, "inputType":I
    const/16 v58, -0x1

    .line 1127
    .local v58, "stringID":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v70

    const v71, 0x1050275

    invoke-virtual/range {v70 .. v71}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v70

    move/from16 v0, v70

    float-to-int v0, v0

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorWidth:I

    .line 1129
    sget-object v70, Lcom/android/internal/R$styleable;->TextView:[I

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    move-object/from16 v2, v70

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1132
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v47

    .line 1133
    .restart local v47    # "n":I
    const/16 v41, 0x0

    .restart local v41    # "i":I
    :goto_2
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_4

    .line 1134
    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1136
    .restart local v10    # "attr":I
    packed-switch v10, :pswitch_data_1

    .line 1133
    :cond_3
    :goto_3
    :pswitch_10
    add-int/lit8 v41, v41, 0x1

    goto :goto_2

    .line 1138
    :pswitch_11
    move/from16 v0, v32

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 1139
    goto :goto_3

    .line 1142
    :pswitch_12
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v42

    .line 1143
    goto :goto_3

    .line 1146
    :pswitch_13
    move/from16 v0, v49

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    .line 1147
    goto :goto_3

    .line 1150
    :pswitch_14
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1151
    goto :goto_3

    .line 1154
    :pswitch_15
    move/from16 v0, v52

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    .line 1155
    goto :goto_3

    .line 1158
    :pswitch_16
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 1159
    goto :goto_3

    .line 1162
    :pswitch_17
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1163
    goto :goto_3

    .line 1166
    :pswitch_18
    invoke-virtual {v6, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 1167
    goto :goto_3

    .line 1170
    :pswitch_19
    move/from16 v0, v55

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v55

    .line 1171
    goto :goto_3

    .line 1174
    :pswitch_1a
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 1178
    :pswitch_1b
    const/16 v70, 0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 1182
    :pswitch_1c
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 1183
    goto :goto_3

    .line 1186
    :pswitch_1d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 1187
    goto :goto_3

    .line 1190
    :pswitch_1e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1191
    goto :goto_3

    .line 1194
    :pswitch_1f
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1195
    goto :goto_3

    .line 1198
    :pswitch_20
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 1199
    goto :goto_3

    .line 1202
    :pswitch_21
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 1203
    goto :goto_3

    .line 1206
    :pswitch_22
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v26

    .line 1207
    goto :goto_3

    .line 1210
    :pswitch_23
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v27

    .line 1211
    goto/16 :goto_3

    .line 1214
    :pswitch_24
    move/from16 v0, v23

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    .line 1215
    goto/16 :goto_3

    .line 1218
    :pswitch_25
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 1222
    :pswitch_26
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 1226
    :pswitch_27
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 1230
    :pswitch_28
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 1234
    :pswitch_29
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 1238
    :pswitch_2a
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 1242
    :pswitch_2b
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 1246
    :pswitch_2c
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 1250
    :pswitch_2d
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 1254
    :pswitch_2e
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 1258
    :pswitch_2f
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 1262
    :pswitch_30
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 1266
    :pswitch_31
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 1270
    :pswitch_32
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v40

    .line 1271
    sget-boolean v70, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v70, :cond_3

    .line 1272
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v58

    goto/16 :goto_3

    .line 1277
    :pswitch_33
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v60

    .line 1278
    sget-boolean v70, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v70, :cond_3

    .line 1279
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v58

    goto/16 :goto_3

    .line 1284
    :pswitch_34
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    if-eqz v70, :cond_3

    .line 1285
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 1290
    :pswitch_35
    move/from16 v0, v57

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    .line 1291
    goto/16 :goto_3

    .line 1294
    :pswitch_36
    move/from16 v0, v34

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    .line 1295
    goto/16 :goto_3

    .line 1298
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v70, v0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 1302
    :pswitch_38
    const/16 v70, 0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    if-nez v70, :cond_3

    .line 1303
    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 1308
    :pswitch_39
    const/16 v70, 0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    if-nez v70, :cond_3

    .line 1309
    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 1314
    :pswitch_3a
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v46

    .line 1315
    goto/16 :goto_3

    .line 1318
    :pswitch_3b
    const/high16 v70, 0x3f800000    # 1.0f

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 1322
    :pswitch_3c
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 1326
    :pswitch_3d
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    .line 1327
    goto/16 :goto_3

    .line 1330
    :pswitch_3e
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 1331
    goto/16 :goto_3

    .line 1334
    :pswitch_3f
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    .line 1335
    goto/16 :goto_3

    .line 1338
    :pswitch_40
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v53

    .line 1339
    goto/16 :goto_3

    .line 1342
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v70

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1346
    :pswitch_42
    move/from16 v0, v62

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v62

    .line 1347
    goto/16 :goto_3

    .line 1350
    :pswitch_43
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    .line 1351
    goto/16 :goto_3

    .line 1354
    :pswitch_44
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v63

    .line 1355
    goto/16 :goto_3

    .line 1358
    :pswitch_45
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v64

    .line 1359
    goto/16 :goto_3

    .line 1362
    :pswitch_46
    move/from16 v0, v65

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v65

    .line 1363
    goto/16 :goto_3

    .line 1366
    :pswitch_47
    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    .line 1367
    goto/16 :goto_3

    .line 1370
    :pswitch_48
    move/from16 v0, v59

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v59

    .line 1371
    goto/16 :goto_3

    .line 1374
    :pswitch_49
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1375
    const/16 v38, 0x1

    .line 1376
    goto/16 :goto_3

    .line 1379
    :pswitch_4a
    move/from16 v0, v50

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v50

    .line 1380
    goto/16 :goto_3

    .line 1383
    :pswitch_4b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v70, v0

    move/from16 v0, v70

    float-to-int v0, v0

    move/from16 v70, v0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 1387
    :pswitch_4c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v70, v0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 1391
    :pswitch_4d
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 1392
    goto/16 :goto_3

    .line 1395
    :pswitch_4e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v71

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_3

    .line 1400
    :pswitch_4f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v70, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move/from16 v71, v0

    move/from16 v0, v71

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 1407
    :pswitch_50
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v70, v0

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1413
    :pswitch_51
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v70, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move/from16 v71, v0

    move/from16 v0, v71

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 1420
    :pswitch_52
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1425
    :pswitch_53
    const/16 v70, 0x0

    :try_start_0
    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1426
    :catch_0
    move-exception v31

    .line 1427
    .local v31, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v70, "TextView"

    const-string v71, "Failure reading input extras"

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1428
    .end local v31    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v31

    .line 1429
    .local v31, "e":Ljava/io/IOException;
    const-string v70, "TextView"

    const-string v71, "Failure reading input extras"

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1434
    .end local v31    # "e":Ljava/io/IOException;
    :pswitch_54
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    .line 1438
    :pswitch_55
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 1442
    :pswitch_56
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 1446
    :pswitch_57
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 1451
    :pswitch_58
    const/16 v70, 0x2

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mClipboardDataFormat:I

    goto/16 :goto_3

    .line 1455
    :pswitch_59
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    .line 1459
    :pswitch_5a
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_3

    .line 1463
    :pswitch_5b
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1464
    goto/16 :goto_3

    .line 1467
    :pswitch_5c
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 1468
    goto/16 :goto_3

    .line 1471
    :pswitch_5d
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v44

    .line 1472
    goto/16 :goto_3

    .line 1475
    :pswitch_5e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1476
    goto/16 :goto_3

    .line 1479
    :pswitch_5f
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    goto/16 :goto_3

    .line 1483
    :pswitch_60
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    goto/16 :goto_3

    .line 1487
    .end local v10    # "attr":I
    :cond_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1489
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 1491
    .local v13, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xfff

    move/from16 v68, v0

    .line 1493
    .local v68, "variation":I
    const/16 v70, 0x81

    move/from16 v0, v68

    move/from16 v1, v70

    if-ne v0, v1, :cond_18

    const/16 v51, 0x1

    .line 1495
    .local v51, "passwordInputType":Z
    :goto_4
    const/16 v70, 0xe1

    move/from16 v0, v68

    move/from16 v1, v70

    if-ne v0, v1, :cond_19

    const/16 v69, 0x1

    .line 1497
    .local v69, "webPasswordInputType":Z
    :goto_5
    const/16 v70, 0x12

    move/from16 v0, v68

    move/from16 v1, v70

    if-ne v0, v1, :cond_1a

    const/16 v48, 0x1

    .line 1500
    .local v48, "numberPasswordInputType":Z
    :goto_6
    if-eqz v42, :cond_1c

    .line 1504
    :try_start_1
    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 1510
    .local v15, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/text/method/KeyListener;

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1518
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    if-eqz v43, :cond_1b

    move/from16 v70, v43

    :goto_7
    move/from16 v0, v70

    move-object/from16 v1, v71

    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1610
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v69

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    .line 1613
    :cond_5
    if-eqz v55, :cond_6

    .line 1614
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1617
    sget-object v70, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v70

    if-ne v13, v0, :cond_6

    .line 1618
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1623
    :cond_6
    if-nez v26, :cond_7

    if-eqz v27, :cond_a

    .line 1624
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    if-nez v70, :cond_8

    .line 1625
    new-instance v70, Landroid/widget/TextView$Drawables;

    move-object/from16 v0, v70

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1627
    :cond_8
    if-eqz v26, :cond_9

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 1631
    :cond_9
    if-eqz v27, :cond_a

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 1638
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1640
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1641
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1645
    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1646
    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v57

    move/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1648
    if-eqz v57, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v70

    if-nez v70, :cond_b

    if-gez v34, :cond_b

    .line 1649
    const/16 v34, 0x3

    .line 1652
    :cond_b
    packed-switch v34, :pswitch_data_2

    .line 1674
    :goto_9
    if-eqz v61, :cond_2e

    .end local v61    # "textColor":Landroid/content/res/ColorStateList;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1675
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1676
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1677
    if-eqz v62, :cond_c

    .line 1678
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1680
    :cond_c
    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v70, v0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1681
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1682
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v70

    if-eqz v70, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v70

    if-eqz v70, :cond_d

    const v70, 0x3d75c28f    # 0.06f

    cmpg-float v70, v44, v70

    if-gez v70, :cond_d

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v70, v0

    const v71, 0x3d75c28f    # 0.06f

    invoke-virtual/range {v70 .. v71}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v70, v0

    if-eqz v70, :cond_d

    .line 1690
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1691
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1692
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 1697
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 1699
    if-eqz v7, :cond_e

    .line 1700
    new-instance v70, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1703
    :cond_e
    if-nez v50, :cond_f

    if-nez v51, :cond_f

    if-nez v69, :cond_f

    if-eqz v48, :cond_2f

    .line 1704
    :cond_f
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v70

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1714
    :cond_10
    :goto_b
    const/16 v70, -0x1

    move/from16 v0, v67

    move/from16 v1, v70

    if-eq v0, v1, :cond_11

    if-nez v38, :cond_11

    .line 1715
    const/16 v37, 0x0

    .line 1717
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v67

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 1719
    if-eqz v56, :cond_12

    .line 1720
    move-object/from16 v0, p0

    move/from16 v1, v53

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1723
    :cond_12
    if-ltz v46, :cond_30

    .line 1724
    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    new-instance v72, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v72

    move/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v72, v70, v71

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1729
    :goto_c
    const/16 v70, -0x1

    move/from16 v0, v58

    move/from16 v1, v70

    if-eq v0, v1, :cond_13

    .line 1730
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setStringName(I)V

    .line 1731
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->fromResLock:Z

    .line 1734
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1735
    if-eqz v40, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1742
    :cond_14
    sget-object v70, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v70

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v70, v0

    if-nez v70, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v70

    if-eqz v70, :cond_31

    :cond_15
    const/16 v36, 0x1

    .line 1746
    .local v36, "focusable":Z
    :goto_d
    if-nez v36, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v70

    if-eqz v70, :cond_32

    :cond_16
    const/16 v17, 0x1

    .line 1747
    .local v17, "clickable":Z
    :goto_e
    if-nez v36, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v70

    if-eqz v70, :cond_33

    :cond_17
    const/16 v45, 0x1

    .line 1749
    .local v45, "longClickable":Z
    :goto_f
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v47

    .line 1750
    const/16 v41, 0x0

    :goto_10
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_34

    .line 1751
    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1753
    .restart local v10    # "attr":I
    sparse-switch v10, :sswitch_data_0

    .line 1750
    :goto_11
    add-int/lit8 v41, v41, 0x1

    goto :goto_10

    .line 1493
    .end local v10    # "attr":I
    .end local v17    # "clickable":Z
    .end local v36    # "focusable":Z
    .end local v45    # "longClickable":Z
    .end local v48    # "numberPasswordInputType":Z
    .end local v51    # "passwordInputType":Z
    .end local v69    # "webPasswordInputType":Z
    .restart local v61    # "textColor":Landroid/content/res/ColorStateList;
    :cond_18
    const/16 v51, 0x0

    goto/16 :goto_4

    .line 1495
    .restart local v51    # "passwordInputType":Z
    :cond_19
    const/16 v69, 0x0

    goto/16 :goto_5

    .line 1497
    .restart local v69    # "webPasswordInputType":Z
    :cond_1a
    const/16 v48, 0x0

    goto/16 :goto_6

    .line 1505
    .restart local v48    # "numberPasswordInputType":Z
    :catch_2
    move-exception v35

    .line 1506
    .local v35, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v70, Ljava/lang/RuntimeException;

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v70

    .line 1512
    .end local v35    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v35

    .line 1513
    .local v35, "ex":Ljava/lang/InstantiationException;
    new-instance v70, Ljava/lang/RuntimeException;

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v70

    .line 1514
    .end local v35    # "ex":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v35

    .line 1515
    .local v35, "ex":Ljava/lang/IllegalAccessException;
    new-instance v70, Ljava/lang/RuntimeException;

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v70

    .line 1518
    .end local v35    # "ex":Ljava/lang/IllegalAccessException;
    :cond_1b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v70, v0

    invoke-interface/range {v70 .. v70}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v70

    goto/16 :goto_7

    .line 1521
    :catch_5
    move-exception v31

    .line 1522
    .local v31, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1524
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_1c
    if-eqz v19, :cond_1e

    .line 1525
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v71 .. v71}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    if-eqz v43, :cond_1d

    move/from16 v70, v43

    :goto_12
    move/from16 v0, v70

    move-object/from16 v1, v71

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_1d
    const/16 v70, 0x1

    goto :goto_12

    .line 1532
    :cond_1e
    if-eqz v43, :cond_20

    .line 1533
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1535
    invoke-static/range {v43 .. v43}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v70

    if-nez v70, :cond_1f

    const/16 v57, 0x1

    :goto_13
    goto/16 :goto_8

    :cond_1f
    const/16 v57, 0x0

    goto :goto_13

    .line 1536
    :cond_20
    if-eqz v52, :cond_21

    .line 1537
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v43, 0x3

    move/from16 v0, v43

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1540
    :cond_21
    if-eqz v49, :cond_26

    .line 1541
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    and-int/lit8 v70, v49, 0x2

    if-eqz v70, :cond_24

    const/16 v70, 0x1

    move/from16 v71, v70

    :goto_14
    and-int/lit8 v70, v49, 0x4

    if-eqz v70, :cond_25

    const/16 v70, 0x1

    :goto_15
    move/from16 v0, v71

    move/from16 v1, v70

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1544
    const/16 v43, 0x2

    .line 1545
    and-int/lit8 v70, v49, 0x2

    if-eqz v70, :cond_22

    .line 1546
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x1000

    move/from16 v43, v0

    .line 1548
    :cond_22
    and-int/lit8 v70, v49, 0x4

    if-eqz v70, :cond_23

    .line 1549
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x2000

    move/from16 v43, v0

    .line 1551
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move/from16 v0, v43

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1542
    :cond_24
    const/16 v70, 0x0

    move/from16 v71, v70

    goto :goto_14

    :cond_25
    const/16 v70, 0x0

    goto :goto_15

    .line 1552
    :cond_26
    if-nez v12, :cond_27

    const/16 v70, -0x1

    move/from16 v0, v70

    if-eq v11, v0, :cond_28

    .line 1555
    :cond_27
    const/16 v43, 0x1

    .line 1557
    packed-switch v11, :pswitch_data_3

    .line 1574
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1578
    .local v16, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move/from16 v0, v43

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1559
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_61
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1560
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x4000

    move/from16 v43, v0

    .line 1561
    goto :goto_16

    .line 1564
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_62
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1565
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x2000

    move/from16 v43, v0

    .line 1566
    goto :goto_16

    .line 1569
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_63
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1570
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x1000

    move/from16 v43, v0

    .line 1571
    goto :goto_16

    .line 1581
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v70

    if-eqz v70, :cond_2a

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_29

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    .line 1587
    :cond_29
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1589
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v70

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    .line 1590
    :cond_2a
    if-eqz v32, :cond_2b

    .line 1591
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1595
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1597
    :cond_2c
    packed-switch v14, :pswitch_data_4

    goto/16 :goto_8

    .line 1599
    :pswitch_64
    sget-object v13, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 1600
    goto/16 :goto_8

    .line 1602
    :pswitch_65
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1603
    goto/16 :goto_8

    .line 1605
    :pswitch_66
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1654
    :pswitch_67
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1657
    :pswitch_68
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1660
    :pswitch_69
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1663
    :pswitch_6a
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v70

    if-eqz v70, :cond_2d

    .line 1664
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1665
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1670
    :goto_17
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1667
    :cond_2d
    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1668
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_17

    .line 1674
    :cond_2e
    const/high16 v70, -0x1000000

    invoke-static/range {v70 .. v70}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    goto/16 :goto_a

    .line 1707
    .end local v61    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v70, v0

    move/from16 v0, v70

    and-int/lit16 v0, v0, 0xfff

    move/from16 v70, v0

    const/16 v71, 0x81

    move/from16 v0, v70

    move/from16 v1, v71

    if-ne v0, v1, :cond_10

    goto/16 :goto_b

    .line 1726
    :cond_30
    sget-object v70, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_c

    .line 1745
    :cond_31
    const/16 v36, 0x0

    goto/16 :goto_d

    .line 1746
    .restart local v36    # "focusable":Z
    :cond_32
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 1747
    .restart local v17    # "clickable":Z
    :cond_33
    const/16 v45, 0x0

    goto/16 :goto_f

    .line 1755
    .restart local v10    # "attr":I
    .restart local v45    # "longClickable":Z
    :sswitch_0
    move/from16 v0, v36

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v36

    .line 1756
    goto/16 :goto_11

    .line 1759
    :sswitch_1
    move/from16 v0, v17

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 1760
    goto/16 :goto_11

    .line 1763
    :sswitch_2
    move/from16 v0, v45

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v45

    goto/16 :goto_11

    .line 1767
    .end local v10    # "attr":I
    :cond_34
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1769
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1770
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1771
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1776
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v70

    if-nez v70, :cond_36

    .line 1777
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1781
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHoverUIFeatureLevel()I

    move-result v70

    const/16 v71, 0x2

    move/from16 v0, v70

    move/from16 v1, v71

    if-lt v0, v1, :cond_37

    .line 1782
    const/16 v70, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1785
    :cond_37
    sget-boolean v70, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v70, :cond_38

    .line 1786
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->fromResLock:Z

    .line 1790
    :cond_38
    new-instance v70, Landroid/widget/TextView$TextViewClipboardEventListener;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$TextViewClipboardEventListener;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    .line 1800
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mWBMaxLength:I

    .line 1803
    invoke-direct/range {p0 .. p1}, Landroid/widget/TextView;->initTextStrikeThroughAnim(Landroid/content/Context;)V

    .line 1804
    return-void

    .line 1034
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1136
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_41
        :pswitch_10
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_43
        :pswitch_42
        :pswitch_44
        :pswitch_45
        :pswitch_36
        :pswitch_31
        :pswitch_1a
        :pswitch_1b
        :pswitch_2c
        :pswitch_26
        :pswitch_30
        :pswitch_2a
        :pswitch_18
        :pswitch_33
        :pswitch_32
        :pswitch_3b
        :pswitch_39
        :pswitch_25
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_34
        :pswitch_4a
        :pswitch_35
        :pswitch_19
        :pswitch_38
        :pswitch_3a
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_3c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1e
        :pswitch_24
        :pswitch_4b
        :pswitch_4c
        :pswitch_37
        :pswitch_4d
        :pswitch_52
        :pswitch_53
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_10
        :pswitch_10
        :pswitch_5a
        :pswitch_10
        :pswitch_10
        :pswitch_54
        :pswitch_59
        :pswitch_5b
        :pswitch_20
        :pswitch_21
        :pswitch_49
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_22
        :pswitch_23
        :pswitch_5f
        :pswitch_60
        :pswitch_4e
        :pswitch_10
        :pswitch_10
        :pswitch_58
    .end packed-switch

    .line 1652
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
    .end packed-switch

    .line 1753
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 1557
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_61
        :pswitch_62
        :pswitch_63
    .end packed-switch

    .line 1597
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_64
        :pswitch_65
        :pswitch_66
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/widget/TextView;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 327
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget v0, p0, Landroid/widget/TextView;->TOUCH_DELTA:F

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    return v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 327
    sget-boolean v0, Landroid/widget/TextView;->mIsFindTargetView:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 327
    sput-boolean p0, Landroid/widget/TextView;->mIsFindTargetView:Z

    return p0
.end method

.method static synthetic access$2800()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    sput-object p0, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/widget/TextView;->canTextMultiSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000()J
    .locals 2

    .prologue
    .line 327
    sget-wide v0, Landroid/widget/TextView;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$3002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 327
    sput-wide p0, Landroid/widget/TextView;->mCurTime:J

    return-wide p0
.end method

.method static synthetic access$3100()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    sput-object p0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200()J
    .locals 2

    .prologue
    .line 327
    sget-wide v0, Landroid/widget/TextView;->mLastHoveredTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->checkPosInView(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->checkPosOnText(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/widget/TextView;->hideMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900()J
    .locals 2

    .prologue
    .line 327
    sget-wide v0, Landroid/widget/TextView;->mLastPenDownTime:J

    return-wide v0
.end method

.method static synthetic access$3902(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 327
    sput-wide p0, Landroid/widget/TextView;->mLastPenDownTime:J

    return-wide p0
.end method

.method static synthetic access$4000()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 327
    sput-object p0, Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Landroid/widget/TextView;->mLineIsDrawed:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4202(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    return p1
.end method

.method static synthetic access$4302(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    return p1
.end method

.method static synthetic access$4600(Landroid/widget/TextView;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/widget/TextView;->showMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$4800(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Landroid/widget/TextView;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # F

    .prologue
    .line 327
    iput p1, p0, Landroid/widget/TextView;->mDrawStrikeAnimationValue:F

    return p1
.end method

.method static synthetic access$600(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 327
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    .prologue
    .line 3014
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v9, :cond_1

    .line 3054
    :cond_0
    return-void

    .line 3018
    :cond_1
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v9, v9, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v9, v9, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v9, :cond_0

    .line 3019
    :cond_2
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v7, v9, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 3020
    .local v7, "tintList":Landroid/content/res/ColorStateList;
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v8, v9, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3021
    .local v8, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v9, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 3022
    .local v2, "hasTint":Z
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v3, v9, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 3023
    .local v3, "hasTintMode":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v6

    .line 3025
    .local v6, "state":[I
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v9, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 3026
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_4

    .line 3025
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3030
    :cond_4
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v1, v9, :cond_3

    .line 3037
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3039
    if-eqz v2, :cond_5

    .line 3040
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3043
    :cond_5
    if-eqz v3, :cond_6

    .line 3044
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3049
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3050
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    .prologue
    const/4 v0, 0x1

    .line 8938
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 8939
    if-eqz p1, :cond_1

    .line 8940
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 8941
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 8942
    if-eqz p2, :cond_0

    .line 8943
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8954
    :cond_0
    :goto_0
    return-void

    .line 8946
    :cond_1
    if-eqz p3, :cond_2

    .line 8947
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8949
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 8950
    if-eqz p2, :cond_0

    .line 8951
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 7640
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 7642
    .local v1, "width":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 7643
    const/4 v1, 0x0

    .line 7646
    :cond_0
    move v2, v1

    .line 7648
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 7649
    const/high16 v1, 0x100000

    .line 7652
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7654
    return-void
.end method

.method private backupLetterSpacing()Z
    .locals 2

    .prologue
    .line 14232
    iget v0, p0, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    const/high16 v1, -0x3c6a0000    # -300.0f

    sub-float/2addr v0, v1

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 14234
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    .line 14235
    const/4 v0, 0x1

    .line 14238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bringTextIntoView()Z
    .locals 15

    .prologue
    const/16 v14, 0x50

    const/4 v11, 0x1

    .line 8447
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 8448
    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    .line 8449
    .local v6, "line":I
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_0

    .line 8450
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 8453
    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 8454
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 8455
    .local v1, "dir":I
    iget v12, p0, Landroid/widget/TextView;->mRight:I

    iget v13, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v2, v12, v13

    .line 8456
    .local v2, "hspace":I
    iget v12, p0, Landroid/widget/TextView;->mBottom:I

    iget v13, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v13

    sub-int v10, v12, v13

    .line 8457
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 8462
    .local v3, "ht":I
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_5

    .line 8463
    if-ne v1, v11, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 8470
    :cond_1
    :goto_1
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_9

    .line 8476
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    .line 8477
    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 8479
    .local v7, "right":I
    sub-int v12, v7, v5

    if-ge v12, v2, :cond_7

    .line 8480
    add-int v12, v7, v5

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v2, 0x2

    sub-int v8, v12, v13

    .line 8495
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    .line 8496
    const/4 v9, 0x0

    .line 8505
    .local v9, "scrolly":I
    :goto_3
    iget v12, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v8, v12, :cond_2

    iget v12, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v9, v12, :cond_d

    .line 8506
    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->scrollTo(II)V

    .line 8509
    :goto_4
    return v11

    .line 8447
    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_0

    .line 8463
    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 8465
    :cond_5
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_1

    .line 8466
    if-ne v1, v11, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_5
    goto :goto_1

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 8482
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    .line 8483
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8485
    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8488
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_a

    .line 8489
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 8490
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    .line 8491
    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8492
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v8, v12

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8498
    :cond_b
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_c

    .line 8499
    sub-int v9, v3, v10

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 8501
    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 8509
    :cond_d
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9105
    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 9106
    .local v0, "width":I
    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private canTextMultiSelection()Z
    .locals 1

    .prologue
    .line 12456
    const/4 v0, 0x0

    return v0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 8380
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 8386
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 8387
    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 8388
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .line 8395
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 8399
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 8401
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 8403
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8427
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    .line 8388
    .restart local v1    # "want":I
    .restart local v7    # "oldht":I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    .line 8409
    .restart local v2    # "hintWant":I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 8411
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 8418
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8419
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 8423
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8424
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8425
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 6

    .prologue
    const/4 v4, -0x2

    .line 8333
    const/4 v2, 0x0

    .line 8335
    .local v2, "sizeChanged":Z
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_2

    .line 8337
    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    .line 8338
    const/4 v2, 0x1

    .line 8339
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8343
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_4

    .line 8344
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v1

    .line 8347
    .local v1, "desiredHeight":I
    const/4 v0, 0x0

    .line 8348
    .local v0, "HCTStrokeWidth":I
    invoke-virtual {p0}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8349
    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 8352
    :cond_1
    add-int v3, v1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 8353
    const/4 v2, 0x1

    .line 8366
    .end local v0    # "HCTStrokeWidth":I
    .end local v1    # "desiredHeight":I
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 8367
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8370
    :cond_3
    return-void

    .line 8355
    :cond_4
    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 8356
    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v3, :cond_2

    .line 8357
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v1

    .line 8359
    .restart local v1    # "desiredHeight":I
    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v1, v3, :cond_2

    .line 8360
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPosInView(III)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "overplus"    # I

    .prologue
    const/4 v2, 0x0

    .line 12534
    invoke-virtual {p0}, Landroid/widget/TextView;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12548
    :cond_0
    :goto_0
    return v2

    .line 12537
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12538
    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12540
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 12541
    .local v1, "startPos":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 12542
    neg-int v3, p3

    neg-int v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 12544
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-gt p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v3, :cond_0

    .line 12545
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPosOnText(III)Z
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "overplus"    # I

    .prologue
    .line 12553
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 12554
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v11, 0x0

    .line 12582
    :goto_0
    return v11

    .line 12556
    :cond_0
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 12557
    .local v8, "screenOffsetOfView":[I
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 12559
    const/4 v11, 0x0

    aget v11, v8, v11

    sub-int v6, p1, v11

    .line 12560
    .local v6, "posX":I
    const/4 v11, 0x1

    aget v11, v8, v11

    sub-int v7, p2, v11

    .line 12562
    .local v7, "posY":I
    int-to-float v11, v7

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 12563
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 12565
    .local v3, "lineStart":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    add-int v4, v11, v12

    .line 12566
    .local v4, "lineTop":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    add-int v2, v11, v12

    .line 12567
    .local v2, "lineBtm":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v11

    float-to-int v5, v11

    .line 12569
    .local v5, "lineWidth":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    add-int v10, v11, v12

    .line 12570
    .local v10, "textStartX":I
    const/4 v9, 0x0

    .line 12571
    .local v9, "textEndX":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 12572
    move v9, v10

    .line 12573
    sub-int v10, v9, v5

    .line 12578
    :goto_1
    sub-int v11, v10, p3

    if-lt v6, v11, :cond_1

    add-int v11, v9, p3

    if-lt v11, v6, :cond_1

    if-lt v7, v4, :cond_1

    if-le v7, v2, :cond_3

    .line 12579
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 12575
    :cond_2
    add-int v9, v10, v5

    goto :goto_1

    .line 12582
    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1, "width"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 7971
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7989
    :cond_0
    :goto_0
    return v2

    .line 7974
    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 7976
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 7977
    .local v1, "textWidth":F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .line 7978
    .local v0, "overflow":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29    # 0.07f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    .line 7979
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 7980
    new-instance v2, Landroid/widget/TextView$4;

    invoke-direct {v2, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 7985
    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 8790
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 8791
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 8792
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 8794
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 8795
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 8796
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 8797
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .prologue
    .line 11610
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 11611
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 11613
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 7993
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7994
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 7995
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 8000
    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 8001
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 8002
    const/4 v4, -0x1

    .line 8009
    :goto_1
    return v4

    .line 8000
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8005
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 8006
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 8005
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8009
    :cond_2
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 7119
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v3, v4

    .line 7254
    :cond_0
    :goto_0
    return v3

    .line 7128
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7129
    iput-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 7132
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 7196
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_a

    .line 7197
    const/4 v0, 0x1

    .line 7198
    .local v0, "doDown":Z
    if-eqz p3, :cond_9

    .line 7200
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 7201
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 7203
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7204
    const/4 v0, 0x0

    .line 7205
    if-eqz v1, :cond_8

    .line 7212
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_0

    .line 7134
    .end local v0    # "doDown":Z
    .end local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7139
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    .line 7142
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7145
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v5, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto :goto_0

    .line 7154
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7156
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    .line 7157
    goto :goto_0

    .line 7165
    :sswitch_1
    iput-boolean v5, p0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    .line 7166
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7167
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    .line 7168
    goto/16 :goto_0

    .line 7174
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7175
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    .line 7176
    goto/16 :goto_0

    .line 7184
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7185
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissDialog()V

    goto/16 :goto_0

    .line 7189
    :cond_7
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    .line 7190
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto/16 :goto_0

    .line 7212
    .restart local v0    # "doDown":Z
    .restart local v1    # "handled":Z
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 7216
    .end local v1    # "handled":Z
    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    .line 7217
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 7218
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 7220
    .restart local v1    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 7221
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 7222
    if-eqz v1, :cond_a

    move v3, v5

    goto/16 :goto_0

    .line 7208
    .end local v1    # "handled":Z
    :catch_0
    move-exception v2

    .line 7212
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 7229
    .end local v0    # "doDown":Z
    :cond_a
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_d

    .line 7230
    const/4 v0, 0x1

    .line 7231
    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_b

    .line 7233
    :try_start_1
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 7235
    .restart local v1    # "handled":Z
    const/4 v0, 0x0

    .line 7236
    if-nez v1, :cond_0

    .line 7244
    .end local v1    # "handled":Z
    :cond_b
    :goto_2
    if-eqz v0, :cond_d

    .line 7245
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7246
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_c

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 7247
    iput-boolean v5, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 7249
    :cond_c
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 7254
    .end local v0    # "doDown":Z
    :cond_d
    iget-boolean v2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v2, :cond_e

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_3
    move v3, v2

    goto/16 :goto_0

    :cond_e
    move v2, v4

    goto :goto_3

    .line 7239
    .restart local v0    # "doDown":Z
    :catch_1
    move-exception v2

    goto :goto_2

    .line 7132
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private drawTextStrikethrough(Landroid/graphics/Canvas;I)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textColor"    # I

    .prologue
    .line 6676
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    .line 6677
    .local v12, "leftPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v16

    .line 6678
    .local v16, "rightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v19

    .line 6679
    .local v19, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v9

    .line 6681
    .local v9, "bottomPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v13

    .line 6682
    .local v13, "lineCount":I
    const/4 v3, 0x0

    .line 6684
    .local v3, "lineY":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    .line 6686
    .local v18, "textLayout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 6687
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6690
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/TextView;->mSkipDrawTextStrike:Z

    if-eqz v1, :cond_2

    .line 6757
    :cond_1
    return-void

    .line 6697
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/TextView;->mDrawStrikeAnimationValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    if-lez v13, :cond_1

    .line 6702
    new-array v7, v13, [F

    .line 6703
    .local v7, "accumLineWidths":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_4

    .line 6704
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    aput v1, v7, v11

    .line 6705
    if-lez v11, :cond_3

    .line 6706
    aget v1, v7, v11

    add-int/lit8 v2, v11, -0x1

    aget v2, v7, v2

    add-float/2addr v1, v2

    aput v1, v7, v11

    .line 6703
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 6711
    :cond_4
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget v20, v7, v1

    .line 6712
    .local v20, "totalLineWidth":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/TextView;->mDrawStrikeAnimationValue:F

    mul-float v17, v20, v1

    .line 6715
    .local v17, "strikethroughCurrLength":F
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_1

    .line 6716
    if-nez v11, :cond_7

    const/4 v15, 0x0

    .line 6717
    .local v15, "lowerBound":F
    :goto_2
    aget v21, v7, v11

    .line 6719
    .local v21, "upperBound":F
    const/4 v10, 0x0

    .line 6720
    .local v10, "currentLineLength":F
    cmpg-float v1, v17, v15

    if-gtz v1, :cond_8

    .line 6721
    const/4 v10, 0x0

    .line 6732
    :cond_5
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    add-int v1, v1, v19

    int-to-float v14, v1

    .line 6733
    .local v14, "lineTop":F
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int v1, v1, v19

    int-to-float v8, v1

    .line 6734
    .local v8, "baseLine":F
    if-nez v11, :cond_6

    .line 6736
    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getTopPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v14, v1

    .line 6746
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const v2, -0x416db6db

    mul-float/2addr v1, v2

    add-float v3, v8, v1

    .line 6748
    int-to-float v2, v12

    int-to-float v1, v12

    add-float v4, v1, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6715
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6716
    .end local v8    # "baseLine":F
    .end local v10    # "currentLineLength":F
    .end local v14    # "lineTop":F
    .end local v15    # "lowerBound":F
    .end local v21    # "upperBound":F
    :cond_7
    add-int/lit8 v1, v11, -0x1

    aget v15, v7, v1

    goto :goto_2

    .line 6723
    .restart local v10    # "currentLineLength":F
    .restart local v15    # "lowerBound":F
    .restart local v21    # "upperBound":F
    :cond_8
    cmpl-float v1, v17, v15

    if-lez v1, :cond_9

    cmpg-float v1, v17, v21

    if-gtz v1, :cond_9

    .line 6725
    sub-float v10, v17, v15

    goto :goto_3

    .line 6726
    :cond_9
    cmpl-float v1, v17, v21

    if-lez v1, :cond_5

    .line 6728
    sub-float v10, v21, v15

    goto :goto_3
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    .prologue
    .line 11624
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 11625
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 11627
    :cond_0
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2205
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 2206
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2207
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2208
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 2214
    :goto_0
    return-void

    .line 2210
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2211
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2212
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5816
    const/4 v4, 0x0

    .line 5817
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5819
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5820
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5821
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5824
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 5825
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5826
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5828
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    .line 5829
    const/16 v5, 0x30

    if-ne v1, v5, :cond_2

    .line 5830
    sub-int v4, v0, v3

    .line 5835
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .line 5832
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    .line 5785
    iget-object v2, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 5786
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 5789
    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .line 5785
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    .line 5786
    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 8270
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    .prologue
    const/4 v6, 0x1

    .line 8276
    if-nez p1, :cond_0

    .line 8277
    const/4 v0, 0x0

    .line 8325
    :goto_0
    return v0

    .line 8280
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 8281
    .local v2, "linecount":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 8282
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 8284
    .local v0, "desired":I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 8285
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 8286
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8287
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8290
    :cond_1
    add-int/2addr v0, v3

    .line 8292
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 8297
    if-eqz p2, :cond_3

    .line 8298
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 8299
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 8301
    if-eqz v1, :cond_2

    .line 8302
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8303
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8306
    :cond_2
    add-int/2addr v0, v3

    .line 8307
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 8314
    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 8315
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 8316
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 8323
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8325
    goto :goto_0

    .line 8311
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 8319
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getFudgedPaddingRight()I
    .locals 4

    .prologue
    .line 6126
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 6127
    .local v0, "cursorWidth":I
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    .prologue
    .line 8780
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 8785
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 8786
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8787
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7658
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 7702
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7705
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    .line 7660
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 7677
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7678
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7662
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7663
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7665
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 7666
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7668
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7669
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7671
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 7672
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7674
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 7675
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7682
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7683
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7685
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 7686
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7688
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 7689
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7691
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 7693
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    goto :goto_0

    .line 7691
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7695
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7697
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_2
    goto :goto_0

    .line 7695
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 7658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 7660
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 12232
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 12233
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 12234
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12235
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 12236
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 12237
    return-object v1
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    .prologue
    .line 10184
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 10185
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 10188
    .end local p2    # "def":I
    :goto_0
    return p2

    .restart local p2    # "def":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 10150
    if-nez p1, :cond_0

    .line 10152
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 10159
    :cond_0
    sget-object v4, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10160
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 10161
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_1

    .line 10162
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 10163
    .local v1, "ap":I
    if-eqz v1, :cond_1

    .line 10164
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10166
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 10167
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10170
    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10172
    return-object v3
.end method

.method private getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "selectedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 12709
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12711
    .local v15, "text":Ljava/lang/CharSequence;
    if-nez v15, :cond_0

    .line 12712
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12714
    :cond_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 12715
    :cond_1
    const/4 v9, 0x0

    .line 12761
    :goto_0
    return-object v9

    .line 12718
    :cond_2
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 12719
    .local v20, "tvRect":Landroid/graphics/Rect;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12721
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    .line 12722
    .local v12, "startPos":Landroid/graphics/Point;
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Rect;->offset(II)V

    .line 12724
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    .line 12726
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v19

    .line 12727
    .local v19, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    .line 12729
    .local v7, "leftPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    .line 12730
    .local v8, "lineCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    sub-int v17, v21, v22

    .line 12731
    .local v17, "textTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    sub-int v16, v21, v22

    .line 12733
    .local v16, "textBtm":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 12734
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 12736
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 12737
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 12740
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    .line 12741
    .local v13, "startX":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v14, v21, v22

    .line 12742
    .local v14, "startY":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v5, v21, v22

    .line 12743
    .local v5, "endX":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    .line 12745
    .local v6, "endY":I
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    .line 12746
    .local v10, "startLine":I
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v11

    .line 12748
    .local v11, "startOffset":I
    int-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v3

    .line 12749
    .local v3, "endLine":I
    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v4

    .line 12751
    .local v4, "endOffset":I
    if-ltz v11, :cond_4

    if-ltz v4, :cond_4

    if-ne v11, v4, :cond_5

    .line 12752
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 12754
    :cond_5
    if-le v11, v4, :cond_6

    .line 12755
    move/from16 v18, v11

    .line 12756
    .local v18, "tmp":I
    move v11, v4

    .line 12757
    move/from16 v4, v18

    .line 12759
    .end local v18    # "tmp":I
    :cond_6
    invoke-interface {v15, v11, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 12761
    .local v9, "retText":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method private getTextForSingleWord(Landroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "selectedRect"    # Landroid/graphics/Rect;
    .param p2, "wordRect"    # Landroid/graphics/Rect;

    .prologue
    .line 12766
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v20

    .line 12767
    .local v20, "text":Ljava/lang/CharSequence;
    if-nez v20, :cond_0

    .line 12768
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    .line 12771
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 12772
    .local v3, "layout":Landroid/text/Layout;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    if-nez v3, :cond_2

    .line 12773
    :cond_1
    const/16 v16, 0x0

    .line 12840
    :goto_0
    return-object v16

    .line 12775
    :cond_2
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v9, v1, v2}, Landroid/widget/TextView;->checkPosOnText(III)Z

    move-result v9

    if-nez v9, :cond_3

    .line 12776
    const/16 v16, 0x0

    goto :goto_0

    .line 12779
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v17

    .line 12781
    .local v17, "startPos":Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v18, v9, v21

    .line 12782
    .local v18, "startX":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sub-int v19, v9, v21

    .line 12783
    .local v19, "startY":I
    move/from16 v0, v18

    int-to-float v9, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v12

    .line 12785
    .local v12, "offset":I
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 12787
    .local v11, "len":I
    if-ltz v12, :cond_4

    if-le v12, v11, :cond_5

    .line 12788
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 12791
    :cond_5
    const/4 v5, -0x1

    .local v5, "selectionStart":I
    const/4 v6, -0x1

    .line 12793
    .local v6, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    if-nez v9, :cond_6

    .line 12794
    new-instance v9, Landroid/text/method/WordIterator;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    .line 12796
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v12, v12}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 12797
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v9, v12}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v5

    .line 12798
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v9, v12}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v6

    .line 12800
    move/from16 v0, v19

    int-to-float v9, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v4

    .line 12801
    .local v4, "line":I
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 12802
    .local v15, "sLine":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 12804
    .local v10, "eLine":I
    if-eq v4, v15, :cond_7

    .line 12805
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 12807
    :cond_7
    if-eq v4, v10, :cond_8

    .line 12808
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 12811
    :cond_8
    const/4 v9, -0x1

    if-eq v5, v9, :cond_9

    const/4 v9, -0x1

    if-eq v6, v9, :cond_9

    if-ne v5, v6, :cond_a

    .line 12814
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 12816
    :cond_a
    if-ltz v5, :cond_b

    if-gez v6, :cond_c

    .line 12817
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 12820
    :cond_c
    if-le v5, v6, :cond_d

    .line 12821
    const-string v9, "TextView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AirDic : start > end !! start = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", end = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12822
    const-string v9, "TextView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AirDic : text = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12823
    const-string v9, "TextView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AirDic : line = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", sLine = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", eLine = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12824
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 12827
    :cond_d
    move-object/from16 v0, v20

    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 12829
    .local v16, "singleWord":Ljava/lang/CharSequence;
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 12830
    .local v7, "top":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .line 12832
    .local v8, "bottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->setEmpty()V

    move-object/from16 v9, p2

    .line 12833
    invoke-virtual/range {v3 .. v9}, Landroid/text/Layout;->getSelectionRect(IIIIILandroid/graphics/Rect;)V

    .line 12835
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v21

    add-int v9, v9, v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v21

    sub-int v13, v9, v21

    .line 12836
    .local v13, "offsetX":I
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v21

    add-int v9, v9, v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v21

    sub-int v14, v9, v21

    .line 12838
    .local v14, "offsetY":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    .prologue
    .line 10277
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    .line 10280
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 6340
    const/4 v0, 0x0

    .line 6341
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 6343
    .local v1, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6344
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 6377
    .local v2, "selEnd":I
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    if-ltz v3, :cond_3

    .line 6378
    if-ne v3, v2, :cond_4

    .line 6379
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v6, v6, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 6382
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_2

    .line 6383
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6384
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 6385
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3, v5, v6}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 6386
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 6387
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6391
    :cond_2
    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6392
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6393
    iget v4, p0, Landroid/widget/TextView;->mCursorWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6394
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6411
    :cond_3
    :goto_0
    return-object v0

    .line 6397
    :cond_4
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_6

    .line 6398
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_5

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6399
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 6400
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6401
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6405
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6406
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6408
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_0
.end method

.method private hideMultiSelectPopupWindow()V
    .locals 0

    .prologue
    .line 14034
    return-void
.end method

.method private initTextStrikeThroughAnim(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6649
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    .line 6650
    iget-object v1, p0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6651
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const v2, 0x3d638e39

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 6652
    .local v0, "strokeWidth":F
    iget-object v1, p0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6657
    iget-object v1, p0, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 6658
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    .line 6659
    iget-object v1, p0, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6660
    iget-object v1, p0, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6665
    iget-object v1, p0, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/TextView$3;

    invoke-direct {v2, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6673
    :cond_0
    return-void

    .line 6658
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 5888
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 5889
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5890
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5891
    .local v0, "end":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 5893
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void
.end method

.method private isCarMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12484
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 12485
    const-string v1, "TextView"

    const-string v2, "TextView does not support text selection on Carmode."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12488
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isCoverOpened()Z
    .locals 5

    .prologue
    .line 12464
    iget-object v3, p0, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v3, :cond_1

    .line 12466
    :try_start_0
    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 12467
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 12468
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 12469
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 12470
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 12479
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :goto_0
    return v3

    .line 12473
    :catch_0
    move-exception v1

    .line 12474
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : RemoteException!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12479
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 12477
    :cond_1
    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : mCoverManager is null!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isDisabledStylusPenEvent()Z
    .locals 1

    .prologue
    .line 13631
    const/4 v0, 0x1

    return v0
.end method

.method private isFinishSetupWizard()Z
    .locals 2

    .prologue
    .line 12513
    const-string v0, "FINISH"

    const-string/jumbo v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12514
    const/4 v0, 0x1

    .line 12517
    :goto_0
    return v0

    .line 12516
    :cond_0
    const-string v0, "TextView"

    const-string v1, "Setup Wizard is not finished."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12517
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 12493
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 12494
    const-string v2, "TextView"

    const-string v3, "isKeyguardLocked. context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12508
    :cond_0
    :goto_0
    return v0

    .line 12498
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 12499
    .local v1, "keyGuard":Landroid/app/KeyguardManager;
    if-nez v1, :cond_2

    .line 12500
    const-string v2, "TextView"

    const-string v3, "keyGuard Service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12504
    :cond_2
    const/4 v0, 0x0

    .line 12505
    .local v0, "isLocked":Z
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 12506
    if-eqz v0, :cond_0

    const-string v2, "TextView"

    const-string v3, "Keyguard is Locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isLinkPreviewEnabled(I)Z
    .locals 1
    .param p1, "toolType"    # I

    .prologue
    .line 12426
    const/4 v0, 0x0

    .line 12428
    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_0

    .line 12437
    const/4 v0, 0x0

    .line 12440
    :goto_0
    return v0

    .line 12430
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->isLinkPreviewSettingsEnabled()Z

    move-result v0

    .line 12431
    goto :goto_0

    .line 12434
    :pswitch_1
    const/4 v0, 0x0

    .line 12435
    goto :goto_0

    .line 12428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLinkPreviewSettingsEnabled()Z
    .locals 6

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12445
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 12446
    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 12447
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 12450
    :goto_1
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_0
    move v0, v2

    .line 12445
    goto :goto_0

    .restart local v0    # "isSPenHoveringOn":Z
    :cond_1
    move v1, v2

    .line 12450
    goto :goto_1
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 5182
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 5311
    and-int/lit16 v0, p0, 0xfff

    .line 5313
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14246
    const/4 v0, 0x0

    .line 14247
    .local v0, "directionality":I
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 14248
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 14249
    :cond_0
    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0x10

    if-eq v0, v3, :cond_1

    const/16 v3, 0x11

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private isRightAligned()Z
    .locals 4

    .prologue
    .line 14260
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    const v3, 0x800007

    and-int v1, v2, v3

    .line 14261
    .local v1, "relGravity":I
    invoke-direct {p0}, Landroid/widget/TextView;->isRTL()Z

    move-result v0

    .line 14262
    .local v0, "isRTLLang":Z
    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    const v2, 0x800003

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const v2, 0x800005

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isShowingHint()Z
    .locals 1

    .prologue
    .line 8440
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubWindow()Z
    .locals 4

    .prologue
    .line 12521
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12522
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 12523
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 12524
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_0

    .line 12526
    const/4 v2, 0x1

    .line 12529
    .end local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 5322
    and-int/lit16 v0, p0, 0xfff

    .line 5324
    .local v0, "variation":I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logLetterMode(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 5399
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5419
    :cond_0
    :goto_0
    return-void

    .line 5402
    :cond_1
    and-int/lit8 v0, p1, 0xf

    .line 5404
    .local v0, "cls":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5406
    const/4 v1, 0x0

    .line 5408
    .local v1, "shift":I
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_2

    .line 5409
    const/4 v1, 0x2

    .line 5417
    :goto_1
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>KEYSELECT: SHIFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5410
    :cond_2
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_3

    .line 5411
    const/4 v1, 0x3

    goto :goto_1

    .line 5412
    :cond_3
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_4

    .line 5413
    const/4 v1, 0x1

    goto :goto_1

    .line 5415
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 38
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    .line 7850
    const/16 v33, 0x0

    .line 7851
    .local v33, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 7859
    .local v17, "transformed":Ljava/lang/CharSequence;
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 7860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7861
    .local v5, "len":I
    new-array v3, v5, [C

    .line 7862
    .local v3, "chars":[C
    new-array v9, v5, [F

    .line 7863
    .local v9, "widths":[F
    const/4 v2, 0x1

    new-array v0, v2, [C

    move-object/from16 v29, v0

    const/4 v2, 0x0

    const/16 v4, 0x2026

    aput-char v4, v29, v2

    .line 7865
    .local v29, "ELLIPSIS_NORMAL":[C
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 7867
    new-instance v35, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    sub-int v4, v5, v4

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 7868
    .local v35, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v37

    .line 7869
    .local v37, "tmpwid":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v4, v6}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v31

    .line 7871
    .local v31, "ellipsWid":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-nez v2, :cond_4

    .line 7872
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 7906
    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v29    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v35    # "s":Ljava/lang/String;
    .end local v37    # "tmpwid":F
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_c

    .line 7907
    new-instance v15, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBreakStrategy:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v27, p6

    :goto_1
    move/from16 v19, p1

    move-object/from16 v20, p4

    move/from16 v28, p3

    invoke-direct/range {v15 .. v28}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    .line 7950
    .end local v33    # "result":Landroid/text/Layout;
    .local v15, "result":Landroid/text/Layout;
    :cond_1
    :goto_2
    if-nez v15, :cond_3

    .line 7951
    const/4 v2, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v2, v4, v6, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v2, v4, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v30

    .line 7959
    .local v30, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz p5, :cond_2

    .line 7960
    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    :goto_3
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 7965
    :cond_2
    invoke-virtual/range {v30 .. v30}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v15

    .line 7967
    .end local v30    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_3
    return-object v15

    .line 7874
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v3    # "chars":[C
    .restart local v5    # "len":I
    .restart local v9    # "widths":[F
    .restart local v29    # "ELLIPSIS_NORMAL":[C
    .restart local v31    # "ellipsWid":F
    .restart local v33    # "result":Landroid/text/Layout;
    .restart local v35    # "s":Ljava/lang/String;
    .restart local v37    # "tmpwid":F
    :cond_4
    add-float v2, v37, v31

    move/from16 v0, p3

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_5

    .line 7875
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    .line 7877
    :cond_5
    const/16 v32, 0x0

    .local v32, "i":I
    const/16 v36, 0x0

    .line 7878
    .local v36, "sum":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v5

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v34

    .line 7880
    .local v34, "ret":F
    const/16 v32, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_6

    .line 7881
    move/from16 v0, v36

    int-to-float v2, v0

    aget v4, v9, v32

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v36, v0

    .line 7882
    move/from16 v0, v36

    int-to-float v2, v0

    cmpg-float v2, v31, v2

    if-gtz v2, :cond_7

    .line 7886
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_a

    .line 7887
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-char v4, v29, v4

    aput-char v4, v3, v2

    .line 7888
    const/16 v32, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_8

    .line 7889
    const v2, 0xfeff

    aput-char v2, v3, v32

    .line 7888
    add-int/lit8 v32, v32, 0x1

    goto :goto_5

    .line 7880
    :cond_7
    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    .line 7891
    :cond_8
    new-instance v35, Ljava/lang/String;

    .end local v35    # "s":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v2, v5}, Ljava/lang/String;-><init>([CII)V

    .line 7892
    .restart local v35    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_9

    .line 7893
    new-instance v14, Landroid/text/SpannableString;

    move-object/from16 v0, v35

    invoke-direct {v14, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7894
    .local v14, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    const/4 v11, 0x0

    const-class v13, Ljava/lang/Object;

    const/4 v15, 0x0

    move v12, v5

    invoke-static/range {v10 .. v15}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 7895
    move-object/from16 v17, v14

    .line 7899
    .end local v14    # "ss":Landroid/text/SpannableString;
    :goto_6
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    .line 7897
    :cond_9
    move-object/from16 v17, v35

    goto :goto_6

    .line 7901
    :cond_a
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    .line 7907
    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v29    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v32    # "i":I
    .end local v34    # "ret":F
    .end local v35    # "s":Ljava/lang/String;
    .end local v36    # "sum":I
    .end local v37    # "tmpwid":F
    :cond_b
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 7912
    :cond_c
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_d

    .line 7913
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v4, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 7914
    if-eqz p2, :cond_d

    .line 7915
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7919
    :cond_d
    if-eqz p2, :cond_13

    .line 7920
    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_10

    if-eqz p6, :cond_e

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_10

    .line 7922
    :cond_e
    if-eqz p7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_f

    .line 7923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .line 7932
    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    :goto_7
    if-eqz p7, :cond_1

    move-object v2, v15

    .line 7933
    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_2

    .line 7927
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-static/range {v17 .. v24}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto :goto_7

    .line 7935
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_10
    if-eqz p5, :cond_13

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_13

    .line 7936
    if-eqz p7, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_11

    .line 7937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .line 7942
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-static/range {v17 .. v26}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .line 7960
    .restart local v30    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_12
    const v2, 0x7fffffff

    goto/16 :goto_3

    .end local v15    # "result":Landroid/text/Layout;
    .end local v30    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_13
    move-object/from16 v15, v33

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7620
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 7621
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 7623
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 7624
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 7627
    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7629
    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7632
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 7633
    :cond_2
    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 3
    .param p1, "dimens"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1807
    if-nez p1, :cond_1

    .line 1808
    const/4 v1, 0x0

    .line 1814
    :cond_0
    return-object v1

    .line 1810
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 1811
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1812
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v1, v0

    .line 1811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private paste(IIZ)V
    .locals 12
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "withFormatting"    # Z

    .prologue
    .line 11231
    iget-object v9, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v9}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v9

    if-nez v9, :cond_4

    .line 11232
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 11234
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 11235
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_4

    .line 11236
    const/4 v4, 0x0

    .line 11237
    .local v4, "didFirst":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 11238
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11239
    .local v7, "paste":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    .line 11240
    if-nez v4, :cond_1

    .line 11241
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11242
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11243
    const/4 v4, 0x1

    .line 11237
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11245
    :cond_1
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    const-string v11, "\n"

    invoke-interface {v9, v10, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11246
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    invoke-interface {v9, v10, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 11250
    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 11251
    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 11323
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v4    # "didFirst":Z
    .end local v6    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 11258
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 11259
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 11261
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 11262
    .local v3, "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/sec/clipboard/ClipboardExManager;->requestPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 11263
    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    goto :goto_2

    .line 11268
    .end local v3    # "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 11269
    .local v2, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v2, :cond_3

    .line 11270
    const/4 v7, 0x0

    .line 11271
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 11272
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_6

    .line 11273
    if-eqz p3, :cond_7

    instance-of v9, v8, Landroid/text/Spanned;

    if-eqz v9, :cond_7

    move-object v7, v8

    .line 11275
    :cond_6
    :goto_3
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 11276
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeEasyEditSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11277
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11279
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11280
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 11281
    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 11284
    .end local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7    # "paste":Ljava/lang/CharSequence;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    .line 11285
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string v9, "TextView"

    const-string/jumbo v10, "skip to paste clipdata - ClassCastException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11273
    .end local v5    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_7
    :try_start_1
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_3

    .line 11292
    .end local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7    # "paste":Ljava/lang/CharSequence;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 11294
    .restart local v1    # "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 11295
    .restart local v0    # "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_3

    .line 11296
    const/4 v4, 0x0

    .line 11297
    .restart local v4    # "didFirst":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-ge v6, v9, :cond_d

    .line 11299
    if-eqz p3, :cond_a

    .line 11300
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11306
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    :goto_5
    if-eqz v7, :cond_9

    .line 11307
    if-nez v4, :cond_c

    .line 11308
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11309
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11310
    const/4 v4, 0x1

    .line 11297
    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 11303
    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_a
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 11304
    .restart local v8    # "text":Ljava/lang/CharSequence;
    instance-of v9, v8, Landroid/text/Spanned;

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "paste":Ljava/lang/CharSequence;
    :goto_7
    goto :goto_5

    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_b
    move-object v7, v8

    goto :goto_7

    .line 11312
    .end local v8    # "text":Ljava/lang/CharSequence;
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    :cond_c
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    const-string v11, "\n"

    invoke-interface {v9, v10, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11313
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    invoke-interface {v9, v10, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6

    .line 11317
    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 11318
    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    goto/16 :goto_2
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 14
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v13, 0x0

    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, "min":I
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 512
    .local v2, "max":I
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "prevString":Ljava/lang/CharSequence;
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Editable;

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v12

    if-nez v12, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    if-eqz p1, :cond_0

    .line 522
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 523
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 524
    .local v8, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 526
    .local v7, "selEnd":I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 527
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 529
    .end local v7    # "selEnd":I
    .end local v8    # "selStart":I
    :cond_2
    const/4 v5, 0x0

    .line 531
    .local v5, "paste":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 560
    :cond_3
    :goto_1
    :pswitch_0
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 561
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->removeEasyEditSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 562
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v12, Landroid/text/Spannable;

    invoke-static {v12, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 563
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Spanned;

    if-eqz v12, :cond_4

    .line 564
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 565
    .local v9, "sp":Landroid/text/Spannable;
    move-object v5, v9

    .line 567
    .end local v9    # "sp":Landroid/text/Spannable;
    :cond_4
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v12, Landroid/text/Editable;

    invoke-interface {v12, v3, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 568
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    :pswitch_1
    move-object v10, p1

    .line 533
    check-cast v10, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 534
    .local v10, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 535
    goto :goto_1

    .end local v10    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_2
    move-object v0, p1

    .line 537
    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 538
    .local v0, "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v5

    .line 539
    goto :goto_1

    .end local v0    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_3
    move-object v11, p1

    .line 543
    check-cast v11, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 544
    .local v11, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v11}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 545
    goto :goto_1

    .end local v11    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_4
    move-object v4, p1

    .line 547
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .line 548
    .local v4, "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 549
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .end local v4    # "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    :pswitch_5
    move-object v1, p1

    .line 553
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 554
    .local v1, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 555
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private registerForPreDraw()V
    .locals 1

    .prologue
    .line 5954
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 5955
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5958
    :cond_0
    return-void
.end method

.method private registerForStylusPenEvent()V
    .locals 0

    .prologue
    .line 13599
    return-void
.end method

.method private removeForStylusPenEvent()V
    .locals 0

    .prologue
    .line 13619
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 9241
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 9252
    :cond_0
    return-void

    .line 9242
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 9244
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 9245
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .line 9246
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9247
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 9248
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 9249
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_0

    if-eq v3, p2, :cond_0

    .line 9250
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 9246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7477
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 7478
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    .line 7479
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 7480
    add-int/lit8 v0, v0, -0x1

    .line 7481
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 7483
    :cond_0
    return-void
.end method

.method private requestWritingBuddy()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 13928
    const-string v1, "TextView"

    const-string v2, "Request WritingBuddy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13929
    invoke-virtual {p0}, Landroid/widget/TextView;->isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->show()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13932
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 5718
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 5719
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 5720
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5722
    :cond_0
    return-void
.end method

.method private selectCurrentWordForMultiSelection(II)Z
    .locals 1
    .param p1, "minOffset"    # I
    .param p2, "maxOffset"    # I

    .prologue
    .line 13185
    const/4 v0, 0x0

    return v0
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 9226
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 9227
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9228
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9229
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9230
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 9229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9235
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 9236
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 9237
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v4, 0x0

    .line 5747
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    .line 5748
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 5749
    .local v3, "undoFilter":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v5, Landroid/text/InputFilter;

    .line 5750
    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    .line 5751
    .local v2, "num":I
    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5752
    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 5753
    :cond_1
    if-lez v2, :cond_5

    .line 5754
    array-length v5, p2

    add-int/2addr v5, v2

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 5756
    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v5, p2

    invoke-static {p2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5757
    const/4 v2, 0x0

    .line 5758
    if-eqz v3, :cond_2

    .line 5759
    array-length v4, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v5, v1, v4

    .line 5760
    add-int/lit8 v2, v2, 0x1

    .line 5762
    :cond_2
    if-eqz v0, :cond_3

    .line 5763
    array-length v4, p2

    add-int v5, v4, v2

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v1, v5

    .line 5766
    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 5771
    .end local v0    # "keyFilter":Z
    .end local v1    # "nf":[Landroid/text/InputFilter;
    .end local v2    # "num":I
    .end local v3    # "undoFilter":Z
    :goto_1
    return-void

    :cond_4
    move v3, v4

    .line 5748
    goto :goto_0

    .line 5770
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5347
    and-int/lit8 v2, p1, 0xf

    .line 5349
    .local v2, "cls":I
    if-ne v2, v4, :cond_5

    .line 5350
    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_1

    move v0, v4

    .line 5352
    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_2

    .line 5353
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 5361
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 5383
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 5384
    if-eqz p2, :cond_b

    .line 5385
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5386
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 5392
    :goto_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5393
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    .line 5395
    :cond_0
    return-void

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_1
    move v0, v5

    .line 5350
    goto :goto_0

    .line 5354
    .restart local v0    # "autotext":Z
    :cond_2
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_3

    .line 5355
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 5356
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_4

    .line 5357
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 5359
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 5362
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    .line 5363
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_6

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_7

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_6
    move v6, v5

    goto :goto_4

    :cond_7
    move v4, v5

    goto :goto_5

    .line 5366
    :cond_8
    const/4 v4, 0x4

    if-ne v2, v4, :cond_9

    .line 5367
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 5375
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 5376
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5369
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 5370
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5372
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 5373
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5378
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    const/4 v4, 0x3

    if-ne v2, v4, :cond_a

    .line 5379
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5381
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_a
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5388
    :cond_b
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 5367
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    .line 8926
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8928
    if-eqz p1, :cond_1

    .line 8929
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 8934
    :cond_0
    :goto_0
    return-void

    .line 8931
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 2156
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 2167
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2159
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_0

    .line 2160
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 2161
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_2

    .line 2162
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2165
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 11338
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 11340
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 11341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 11342
    return-void
.end method

.method private setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V
    .locals 2
    .param p1, "clip"    # Landroid/sec/clipboard/data/list/ClipboardDataText;

    .prologue
    .line 11346
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 11348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 11349
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 3301
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3302
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3304
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3305
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3306
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3307
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3310
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1874
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    move v2, v5

    .line 1875
    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1876
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1877
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    .line 1878
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1880
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 1881
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1882
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1883
    .local v3, "state":[I
    if-eqz p1, :cond_4

    .line 1884
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1885
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1886
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1887
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1889
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1890
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1891
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1895
    :goto_1
    if-eqz p2, :cond_5

    .line 1896
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1897
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1898
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1899
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1901
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1902
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1903
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1907
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 1908
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1909
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 1911
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    move v2, v4

    .line 1874
    goto :goto_0

    .line 1893
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v2    # "hasRelativeDrawables":Z
    .restart local v3    # "state":[I
    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    .line 1905
    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    .prologue
    .line 4845
    if-nez p1, :cond_0

    .line 4846
    const-string p1, ""

    .line 4850
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4851
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4854
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 4856
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 4858
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4859
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4860
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 4865
    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4868
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 4869
    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_6

    .line 4870
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 4871
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    .line 4872
    move-object/from16 p1, v16

    .line 4869
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4862
    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4863
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    .line 4876
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_6
    if-eqz p3, :cond_7

    .line 4877
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    .line 4878
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 4879
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4885
    :cond_7
    :goto_2
    const/4 v15, 0x0

    .line 4887
    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 4888
    const/4 v15, 0x1

    .line 4891
    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v15, :cond_e

    .line 4893
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4894
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    .line 4895
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 4896
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 4897
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4898
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 4899
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4913
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    .line 4916
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_11

    :cond_b
    move-object/from16 v17, p1

    .line 4917
    check-cast v17, Landroid/text/Spannable;

    .line 4922
    .local v17, "s2":Landroid/text/Spannable;
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4923
    move-object/from16 p1, v17

    .line 4924
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 4931
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4935
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_c

    .line 4936
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4942
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setMyanmarEncoding(Ljava/util/Locale;)V

    .line 4945
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 4946
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4948
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_13

    .line 4949
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 4954
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 4956
    .local v20, "textLength":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_18

    move-object/from16 v18, p1

    .line 4957
    check-cast v18, Landroid/text/Spannable;

    .line 4960
    .local v18, "sp":Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 4961
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 4962
    .local v11, "count":I
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_14

    .line 4963
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4962
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 4881
    .end local v11    # "count":I
    .end local v15    # "needEditableForNotification":Z
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v20    # "textLength":I
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_d
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    .line 4900
    .restart local v15    # "needEditableForNotification":Z
    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    .line 4901
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    .line 4902
    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    .line 4903
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    .line 4919
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_4

    .line 4924
    :cond_12
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .line 4951
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 4966
    .restart local v11    # "count":I
    .restart local v18    # "sp":Landroid/text/Spannable;
    .restart local v20    # "textLength":I
    .restart local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_15

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 4968
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4971
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 4973
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_17

    .line 4974
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4977
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_18

    .line 4978
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 4985
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 5010
    .end local v11    # "count":I
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_19

    .line 5011
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 5014
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 5015
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 5017
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 5019
    if-eqz v15, :cond_1a

    .line 5020
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 5024
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 5025
    :cond_1b
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_1c

    .line 5026
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    .line 5028
    :cond_1c
    return-void
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    .line 1848
    const/4 v0, 0x0

    .line 1849
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 1850
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1851
    if-eqz v0, :cond_0

    .line 1852
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1871
    :goto_0
    return-void

    .line 1856
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1870
    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 1858
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1859
    goto :goto_1

    .line 1862
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1863
    goto :goto_1

    .line 1866
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 1856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shareSelectedText()V
    .locals 5

    .prologue
    .line 11326
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 11327
    .local v0, "selectedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 11328
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11329
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11330
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 11331
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11332
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10409dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11333
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 11335
    .end local v1    # "sharingIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7082
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7099
    :cond_0
    :goto_0
    return v1

    .line 7086
    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 7087
    goto :goto_0

    .line 7090
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    .line 7092
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 7093
    .local v0, "variation":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    .line 7095
    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 7107
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    .line 7109
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 7110
    .local v0, "variation":I
    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_1

    .line 7112
    :cond_0
    const/4 v1, 0x0

    .line 7115
    .end local v0    # "variation":I
    :cond_1
    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10388
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "speak_password"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showMultiSelectPopupWindow()V
    .locals 0

    .prologue
    .line 14022
    return-void
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9113
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9135
    :cond_0
    :goto_0
    return-void

    .line 9115
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9119
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9122
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    .line 9123
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 9124
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9125
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9126
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9127
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 9128
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 9129
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9132
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9133
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 9154
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 9155
    if-eqz p1, :cond_1

    .line 9156
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 9161
    :cond_0
    :goto_0
    return-void

    .line 9158
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    .line 9138
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9139
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    .line 9142
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9143
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 9144
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9145
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9146
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9147
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 9148
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 9149
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9151
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_1
    return-void
.end method

.method private unregisterForPreDraw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5961
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5962
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5963
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5964
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4507
    const/4 v1, 0x0

    .line 4508
    .local v1, "inval":Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4509
    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 4510
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 4511
    const/4 v1, 0x1

    .line 4513
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 4514
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4515
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 4516
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 4517
    const/4 v1, 0x1

    .line 4520
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 4528
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4529
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    .line 4530
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 4531
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 4532
    const/4 v1, 0x1

    .line 4536
    :cond_2
    if-eqz v1, :cond_4

    .line 4538
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4539
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4541
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .prologue
    .line 10330
    new-instance v0, Landroid/widget/TextView$7;

    invoke-direct {v0, p0}, Landroid/widget/TextView$7;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 10336
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    .prologue
    .line 10339
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 10341
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 10343
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 10344
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 10348
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 10349
    return-void

    .line 10346
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addInnerShadowTextEffect(FFFIF)I
    .locals 6
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 3737
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextPaint;->addInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 7
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "colors"    # [I
    .param p4, "alphas"    # [F
    .param p5, "positions"    # [F
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 3785
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->addLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public addOuterGlowTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 3767
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/TextPaint;->addOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addOuterShadowTextEffect(FFFIF)I
    .locals 6
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 3720
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextPaint;->addOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addStrokeTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 3752
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/TextPaint;->addStrokeTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 9203
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9207
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9208
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4490
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 4491
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 4499
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 4500
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4503
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 4504
    return-void
.end method

.method public applyWBTextBuffer(Z)Z
    .locals 7
    .param p1, "initBuffer"    # Z

    .prologue
    const/4 v4, 0x0

    .line 13797
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 13798
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Editable;

    if-eqz v3, :cond_3

    .line 13799
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 13804
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 13805
    .local v2, "selectionStart":I
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 13806
    .local v1, "selectionEnd":I
    const-string v3, "TextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WB index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13807
    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13808
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 13809
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-le v2, v0, :cond_0

    move v2, v0

    .end local v2    # "selectionStart":I
    :cond_0
    if-le v1, v0, :cond_4

    .end local v0    # "length":I
    :goto_1
    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13813
    :cond_1
    if-eqz p1, :cond_2

    .line 13814
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13816
    :cond_2
    const/4 v3, 0x1

    .line 13818
    .end local v1    # "selectionEnd":I
    :goto_2
    return v3

    .line 13801
    :cond_3
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .restart local v0    # "length":I
    .restart local v1    # "selectionEnd":I
    :cond_4
    move v0, v1

    .line 13809
    goto :goto_1

    .end local v0    # "length":I
    .end local v1    # "selectionEnd":I
    :cond_5
    move v3, v4

    .line 13818
    goto :goto_2
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 7582
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    .line 7583
    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 30
    .param p1, "offset"    # I

    .prologue
    .line 8518
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 8519
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 8520
    const/4 v5, 0x0

    .line 8702
    :cond_0
    :goto_0
    return v5

    .line 8522
    :cond_1
    const/4 v5, 0x0

    .line 8524
    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    .line 8526
    .local v16, "layout":Landroid/text/Layout;
    :goto_1
    if-eqz v16, :cond_0

    .line 8528
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    .line 8532
    .local v18, "line":I
    sget-object v25, Landroid/widget/TextView$8;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 8547
    const/4 v11, 0x0

    .line 8561
    .local v11, "grav":I
    :goto_2
    if-lez v11, :cond_11

    const/4 v6, 0x1

    .line 8563
    .local v6, "clamped":Z
    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 8564
    .local v24, "x":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 8565
    .local v20, "top":I
    add-int/lit8 v25, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 8567
    .local v4, "bottom":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v17, v0

    .line 8568
    .local v17, "left":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 8569
    .local v19, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 8571
    .local v15, "ht":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 8572
    .local v14, "hspace":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 8573
    .local v23, "vspace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    sub-int v25, v19, v17

    move/from16 v0, v25

    if-le v0, v14, :cond_2

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 8575
    add-int v25, v17, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 8578
    :cond_2
    sub-int v25, v4, v20

    div-int/lit8 v13, v25, 0x2

    .line 8579
    .local v13, "hslack":I
    move/from16 v22, v13

    .line 8581
    .local v22, "vslack":I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 8582
    div-int/lit8 v22, v23, 0x4

    .line 8583
    :cond_3
    div-int/lit8 v25, v14, 0x4

    move/from16 v0, v25

    if-le v13, v0, :cond_4

    .line 8584
    div-int/lit8 v13, v14, 0x4

    .line 8586
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    .line 8587
    .local v12, "hs":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v21, v0

    .line 8589
    .local v21, "vs":I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 8590
    sub-int v21, v20, v22

    .line 8591
    :cond_5
    sub-int v25, v4, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 8592
    sub-int v25, v23, v22

    sub-int v21, v4, v25

    .line 8593
    :cond_6
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 8594
    sub-int v21, v15, v23

    .line 8595
    :cond_7
    rsub-int/lit8 v25, v21, 0x0

    if-lez v25, :cond_8

    .line 8596
    const/16 v21, 0x0

    .line 8598
    :cond_8
    if-eqz v11, :cond_a

    .line 8599
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_9

    .line 8600
    sub-int v12, v24, v13

    .line 8602
    :cond_9
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 8603
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 8607
    :cond_a
    if-gez v11, :cond_12

    .line 8608
    sub-int v25, v17, v12

    if-lez v25, :cond_b

    .line 8609
    move/from16 v12, v17

    .line 8610
    :cond_b
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_c

    .line 8611
    sub-int v12, v19, v14

    .line 8658
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v12, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 8659
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_1b

    .line 8660
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 8681
    :goto_5
    const/4 v5, 0x1

    .line 8684
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 8692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-nez v25, :cond_f

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 8693
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    add-int/lit8 v26, v24, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 8695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    .line 8697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 8698
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 8524
    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v11    # "grav":I
    .end local v12    # "hs":I
    .end local v13    # "hslack":I
    .end local v14    # "hspace":I
    .end local v15    # "ht":I
    .end local v16    # "layout":Landroid/text/Layout;
    .end local v17    # "left":I
    .end local v18    # "line":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    .end local v21    # "vs":I
    .end local v22    # "vslack":I
    .end local v23    # "vspace":I
    .end local v24    # "x":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 8534
    .restart local v16    # "layout":Landroid/text/Layout;
    .restart local v18    # "line":I
    :pswitch_0
    const/4 v11, 0x1

    .line 8535
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8537
    .end local v11    # "grav":I
    :pswitch_1
    const/4 v11, -0x1

    .line 8538
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8540
    .end local v11    # "grav":I
    :pswitch_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .line 8541
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8543
    .end local v11    # "grav":I
    :pswitch_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    move/from16 v0, v25

    neg-int v11, v0

    .line 8544
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8561
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 8612
    .restart local v4    # "bottom":I
    .restart local v6    # "clamped":Z
    .restart local v12    # "hs":I
    .restart local v13    # "hslack":I
    .restart local v14    # "hspace":I
    .restart local v15    # "ht":I
    .restart local v17    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    .restart local v21    # "vs":I
    .restart local v22    # "vslack":I
    .restart local v23    # "vspace":I
    .restart local v24    # "x":I
    :cond_12
    if-lez v11, :cond_14

    .line 8613
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_13

    .line 8614
    sub-int v12, v19, v14

    .line 8615
    :cond_13
    sub-int v25, v17, v12

    if-lez v25, :cond_c

    .line 8616
    move/from16 v12, v17

    goto/16 :goto_4

    .line 8618
    :cond_14
    sub-int v25, v19, v17

    move/from16 v0, v25

    if-gt v0, v14, :cond_15

    .line 8622
    sub-int v25, v19, v17

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v17, v25

    goto/16 :goto_4

    .line 8623
    :cond_15
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    .line 8628
    sub-int v12, v19, v14

    goto/16 :goto_4

    .line 8629
    :cond_16
    add-int v25, v17, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    .line 8634
    move/from16 v12, v17

    goto/16 :goto_4

    .line 8635
    :cond_17
    move/from16 v0, v17

    if-le v0, v12, :cond_18

    .line 8639
    move/from16 v12, v17

    goto/16 :goto_4

    .line 8640
    :cond_18
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_19

    .line 8644
    sub-int v12, v19, v14

    goto/16 :goto_4

    .line 8649
    :cond_19
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_1a

    .line 8650
    sub-int v12, v24, v13

    .line 8652
    :cond_1a
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 8653
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_4

    .line 8662
    :cond_1b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .line 8663
    .local v8, "duration":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    sub-int v7, v12, v25

    .line 8664
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 8666
    .local v10, "dy":I
    const-wide/16 v26, 0xfa

    cmp-long v25, v8, v26

    if-lez v25, :cond_1c

    .line 8667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 8668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 8669
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 8678
    :goto_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_5

    .line 8671
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 8672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 8675
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_6

    .line 8532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method canClipboard()Z
    .locals 1

    .prologue
    .line 11152
    invoke-virtual {p0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableClipboard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canCopy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11119
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11127
    :cond_0
    :goto_0
    return v0

    .line 11123
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 11124
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canCut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11106
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11115
    :cond_0
    :goto_0
    return v0

    .line 11110
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 11112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canDelete()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11131
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11139
    :cond_0
    :goto_0
    return v0

    .line 11135
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canDictionary()Z
    .locals 1

    .prologue
    .line 11144
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableDictionary:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canPaste()Z
    .locals 3

    .prologue
    .line 11170
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_1

    .line 11175
    invoke-virtual {p0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11176
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11177
    const/4 v0, 0x1

    .line 11188
    :goto_0
    return v0

    .line 11180
    :cond_0
    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipEx is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11181
    const-string v0, "ClipboardServiceEx"

    const-string v1, "clipEx has text data : false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 11184
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    goto :goto_0
.end method

.method canProcessText()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 11193
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11202
    :cond_0
    :goto_0
    return v0

    .line 11198
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 11199
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canRedo()Z
    .locals 1

    .prologue
    .line 11102
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canSelectAllText()Z
    .locals 2

    .prologue
    .line 11206
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canSelectText()Z
    .locals 1

    .prologue
    .line 10257
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isCarMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canShare()Z
    .locals 1

    .prologue
    .line 11157
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableShare:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canUndo()Z
    .locals 1

    .prologue
    .line 11098
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canWebSearch()Z
    .locals 1

    .prologue
    .line 11148
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableWebSearch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 10009
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 10010
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 10011
    :cond_0
    return-void
.end method

.method public changeClipboardDataFormat(I)V
    .locals 1
    .param p1, "newFormat"    # I

    .prologue
    .line 6942
    iget v0, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    .line 6943
    :cond_0
    return-void
.end method

.method public checkValidMultiSelectionForPreDraw()Z
    .locals 1

    .prologue
    .line 12588
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllMultiSelection()Z
    .locals 1

    .prologue
    .line 13036
    const/4 v0, 0x1

    return v0
.end method

.method public clearAllTextEffect()V
    .locals 1

    .prologue
    .line 3823
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearAllTextEffect()V

    .line 3824
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 9597
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 9598
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 9600
    :cond_0
    return-void
.end method

.method public clearMultiSelection()Z
    .locals 1

    .prologue
    .line 12945
    const/4 v0, 0x1

    return v0
.end method

.method public clearTextEffectOpacity()V
    .locals 1

    .prologue
    .line 3814
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearTextEffectOpacity()V

    .line 3815
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 10104
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 10105
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 10109
    :goto_0
    return v0

    .line 10105
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 10109
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 8769
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 8770
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8771
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 8772
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 8773
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 8774
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 8777
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 10122
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 10114
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 10115
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 10117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 11369
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 11371
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11372
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11373
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11374
    return p1
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 8813
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 8815
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 8816
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8820
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 8822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8823
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 8824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8827
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 8828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStringName = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8833
    :cond_1
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8834
    return-void

    .line 8831
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 11570
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 11571
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 1

    .prologue
    .line 922
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 924
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 926
    :cond_0
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 10004
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 9516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 9517
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 9518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 9519
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4573
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4575
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_3

    .line 4576
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 4577
    .local v4, "state":[I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 4578
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4579
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4577
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4584
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4585
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 4586
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4588
    :cond_2
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 4589
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4592
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":[I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 4545
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4546
    iget-object v5, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4549
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 4552
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_7

    .line 4553
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 4554
    .local v4, "state":[I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 4555
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4556
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4554
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4561
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4562
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4563
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4565
    :cond_6
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4566
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4569
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":[I
    :cond_7
    return-void
.end method

.method public enableMultiSelection(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 13154
    return-void
.end method

.method public enableNewActionPopupWindow(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 13718
    iput-boolean p1, p0, Landroid/widget/TextView;->mCanSelectText:Z

    .line 13719
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 11707
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 11709
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    .line 11710
    .local v0, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v3, "text:ellipsize"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11711
    const-string/jumbo v1, "text:textSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 11712
    const-string/jumbo v1, "text:scaledTextSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 11713
    const-string/jumbo v1, "text:typefaceStyle"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11714
    const-string/jumbo v1, "text:selectionStart"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11715
    const-string/jumbo v1, "text:selectionEnd"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11716
    const-string/jumbo v1, "text:curTextColor"

    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11717
    const-string/jumbo v1, "text:text"

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11718
    const-string/jumbo v1, "text:gravity"

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11719
    return-void

    .line 11710
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11717
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 7586
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 7587
    :cond_0
    return-void
.end method

.method public extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x8000000

    .line 13941
    if-nez p1, :cond_1

    .line 14012
    :cond_0
    :goto_0
    return-void

    .line 13948
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 13951
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v2, :cond_2

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_7

    .line 13953
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13957
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 13958
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_9

    .line 13959
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13960
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 13961
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 13962
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 13963
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 13969
    :goto_1
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 13970
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 13971
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13973
    :cond_3
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 13974
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13976
    :cond_4
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_5

    .line 13977
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    .line 13980
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13986
    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-nez v2, :cond_5

    .line 13987
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13990
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13992
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13994
    :cond_6
    iget-object v2, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 13995
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_7

    .line 13996
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 13997
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 14002
    .end local v1    # "v":Landroid/view/View;
    :cond_7
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_8

    .line 14003
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 14007
    :cond_8
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 14008
    .local v0, "maxLength":I
    if-gez v0, :cond_0

    .line 14009
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    iget v4, p0, Landroid/widget/TextView;->mWBMaxLength:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 13965
    .end local v0    # "maxLength":I
    :cond_9
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_1

    .line 13984
    .restart local v1    # "v":Landroid/view/View;
    :cond_a
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_2
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 8
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 12677
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 12680
    .local v2, "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12681
    const-string v4, "TextView"

    const-string v5, "Cannot get text of Password field"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12704
    :goto_0
    return v7

    .line 12685
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v4

    if-nez v4, :cond_2

    .line 12686
    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 12687
    .local v1, "cropRect":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 12688
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 12689
    const-string v0, ""

    .line 12691
    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v5, "plain_text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    goto :goto_0

    .line 12692
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 12693
    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 12694
    .restart local v1    # "cropRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12695
    .local v3, "wordRect":Landroid/graphics/Rect;
    invoke-direct {p0, v1, v3}, Landroid/widget/TextView;->getTextForSingleWord(Landroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 12696
    .restart local v0    # "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    .line 12697
    const-string v0, ""

    .line 12699
    :cond_3
    new-instance v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v5, "plain_text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 12700
    invoke-interface {p1, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 12702
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .end local v3    # "wordRect":Landroid/graphics/Rect;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    goto :goto_0
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 7467
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 7468
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 10127
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 10128
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10130
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 10131
    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 10132
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10133
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10136
    .end local v0    # "searchedLowerCase":Ljava/lang/String;
    .end local v1    # "textLowerCase":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public forceHideSoftInput(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 12106
    iput-boolean p1, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    .line 12107
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 10395
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 11677
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 11662
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 3092
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 3

    .prologue
    .line 6890
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 6891
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 6894
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getBaselineOffset()I
    .locals 3

    .prologue
    .line 6898
    const/4 v0, 0x0

    .line 6899
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 6900
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6903
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6904
    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    .line 6907
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 6116
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6117
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextEffectOffsetBottom()I

    move-result v0

    .line 6121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getBreakStrategy()I
    .locals 1

    .prologue
    .line 3469
    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return v0
.end method

.method protected getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 2940
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2941
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2976
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 3010
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2881
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2882
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2883
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, [Landroid/graphics/drawable/Drawable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    .line 2885
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2899
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2900
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2901
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2906
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    aput-object v2, v1, v3

    aput-object v2, v1, v6

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 2283
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2284
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2285
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    .line 2287
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    .line 2337
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2338
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2341
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    .line 2343
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 2338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 2296
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2297
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2298
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    .line 2300
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 2309
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2310
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2311
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    .line 2313
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    .line 2322
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2323
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2326
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 2328
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    .line 2323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 2270
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2271
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2272
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    .line 2274
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 3986
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 3629
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 11085
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 11048
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1984
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1991
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 9050
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5666
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 2390
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 2391
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2417
    :cond_0
    :goto_0
    return v0

    .line 2394
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_2

    .line 2395
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2398
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    .line 2399
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 2402
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2403
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2404
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2405
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2407
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    .line 2411
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2412
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    .line 2413
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    .line 2414
    :cond_4
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    .line 2417
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 2353
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 2354
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2380
    :cond_0
    :goto_0
    return v3

    .line 2357
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_2

    .line 2358
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2361
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    .line 2362
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    .line 2365
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2366
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2367
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2368
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2370
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    .line 2374
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2375
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    .line 2377
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    .line 2378
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    .line 2380
    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6932
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6915
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6924
    :goto_0
    return v1

    .line 6917
    :cond_0
    const/4 v0, 0x0

    .line 6918
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 6919
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6922
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 6924
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 5779
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    .line 6796
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_0

    .line 6797
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 6848
    :goto_0
    return-void

    .line 6801
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 6802
    .local v6, "selEnd":I
    if-gez v6, :cond_1

    .line 6803
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 6807
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6808
    .local v7, "selStart":I
    if-ltz v7, :cond_2

    if-lt v7, v6, :cond_4

    .line 6809
    :cond_2
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6810
    .local v0, "line":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 6811
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 6812
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6813
    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 6840
    .end local v0    # "line":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 6841
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    .line 6842
    .local v5, "paddingTop":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_3

    .line 6843
    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v5, v8

    .line 6845
    :cond_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 6846
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    .line 6847
    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 6815
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 6816
    .local v2, "lineStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 6817
    .local v1, "lineEnd":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 6818
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 6819
    if-ne v2, v1, :cond_5

    .line 6820
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6821
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 6825
    :cond_5
    iget-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v8, :cond_7

    .line 6826
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v8, :cond_6

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6827
    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 6828
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6829
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6831
    :cond_7
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    .line 6832
    :try_start_0
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6833
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6834
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 6835
    monitor-exit v9

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3440
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 4777
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 4078
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHideSoftInput()Z
    .locals 1

    .prologue
    .line 12119
    iget-boolean v0, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 3654
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 5174
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 2057
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3976
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    .prologue
    .line 6418
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    .line 4133
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .locals 1

    .prologue
    .line 12247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;
    .locals 1
    .param p1, "tooltype"    # I

    .prologue
    .line 12262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    .prologue
    .line 3496
    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 5491
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5480
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 5452
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    .prologue
    .line 8042
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5647
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 5657
    :cond_0
    :goto_0
    return-object v0

    .line 5648
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5649
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v1, :cond_2

    .line 5650
    if-eqz p1, :cond_0

    .line 5651
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5653
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 5654
    if-eqz p1, :cond_0

    .line 5655
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5657
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 5428
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 11620
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    .line 11634
    sparse-switch p1, :sswitch_data_0

    .line 11654
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    :goto_0
    return-object v0

    .line 11636
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 11637
    .local v1, "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11638
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    .line 11640
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    goto :goto_0

    .line 11645
    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v1    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 11646
    .restart local v1    # "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11647
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v0

    .line 11649
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v0, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    goto :goto_0

    .line 11634
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_0
.end method

.method public getKeycodeDpadCenterStatus()Z
    .locals 1

    .prologue
    .line 11553
    iget-boolean v0, p0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    return v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 10030
    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_2

    .line 10032
    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    .line 10033
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 10034
    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10035
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    .line 10036
    .local v3, "scroll":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    .line 10063
    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v3    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 10040
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 10041
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .line 10042
    .local v1, "layoutDirection":I
    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 10043
    .local v0, "absoluteGravity":I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    .line 10063
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    .line 10047
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 10052
    :pswitch_3
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 10053
    .local v4, "textDirection":I
    if-eq v4, v9, :cond_0

    .line 10056
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 10043
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 6093
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6094
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextEffectOffsetLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6098
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getLetterSpacing()F
    .locals 1

    .prologue
    .line 3399
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 11378
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 11380
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11381
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11382
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11383
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 11387
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 11388
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11389
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 6868
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    .line 6869
    if-eqz p2, :cond_0

    .line 6870
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6884
    :cond_0
    :goto_0
    return v2

    .line 6875
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 6877
    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 6878
    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 6879
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 6881
    :cond_2
    if-eqz p2, :cond_3

    .line 6882
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6884
    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 6855
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 2041
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    .line 4481
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 4467
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 4028
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 3916
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .prologue
    .line 9041
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    .prologue
    .line 4366
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 4249
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    .prologue
    .line 4220
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 4393
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    .prologue
    .line 4312
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 4192
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    .prologue
    .line 4164
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 4339
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getMultiSelectionText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 12968
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    .prologue
    .line 3531
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;

    move-result-object v0

    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 11393
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 11394
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 11362
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 11365
    :goto_0
    return v1

    .line 11363
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 11364
    .local v0, "line":I
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 11365
    .local v1, "offset":I
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 3879
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 4086
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5613
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 10068
    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_2

    iget v9, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v9, v12, :cond_2

    .line 10070
    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v9}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v9

    if-nez v9, :cond_1

    .line 10071
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 10072
    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    .line 10073
    .local v4, "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    .line 10074
    .local v5, "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 10099
    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 10075
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    if-ne v9, v12, :cond_2

    .line 10076
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .line 10077
    .local v1, "layoutDirection":I
    iget v9, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v9, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 10078
    .local v0, "absoluteGravity":I
    and-int/lit8 v9, v0, 0x7

    packed-switch v9, :pswitch_data_0

    .line 10099
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    goto :goto_0

    .line 10080
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 10082
    .local v7, "textWidth":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 10083
    .local v2, "lineWidth":F
    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .line 10088
    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_3
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 10089
    .local v6, "textDirection":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 10092
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, Landroid/widget/TextView;->mRight:I

    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .line 10078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 6133
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6134
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextEffectOffsetRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 6138
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 3249
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getSecClipboardEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13741
    iget v2, p0, Landroid/widget/TextView;->mIsSecClipboardEnabled:I

    iget v3, p0, Landroid/widget/TextView;->SEC_CLIPBOARD_UNKNOWN:I

    if-eq v2, v3, :cond_2

    .line 13742
    iget v2, p0, Landroid/widget/TextView;->mIsSecClipboardEnabled:I

    iget v3, p0, Landroid/widget/TextView;->SEC_CLIPBOARD_ENABLED:I

    if-ne v2, v3, :cond_1

    .line 13760
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 13742
    goto :goto_0

    .line 13745
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 13746
    iget v0, p0, Landroid/widget/TextView;->SEC_CLIPBOARD_DISABLED:I

    iput v0, p0, Landroid/widget/TextView;->mIsSecClipboardEnabled:I

    move v0, v1

    .line 13747
    goto :goto_0

    .line 13757
    :cond_3
    iget v2, p0, Landroid/widget/TextView;->SEC_CLIPBOARD_DISABLED:I

    iput v2, p0, Landroid/widget/TextView;->mIsSecClipboardEnabled:I

    .line 13760
    iget v2, p0, Landroid/widget/TextView;->mIsSecClipboardEnabled:I

    iget v3, p0, Landroid/widget/TextView;->SEC_CLIPBOARD_ENABLED:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8863
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8864
    const/4 v2, 0x0

    .line 8869
    :goto_0
    return-object v2

    .line 8867
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8868
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8869
    .local v0, "end":I
    if-le v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8849
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8841
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 3871
    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    .line 3848
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    .line 3859
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 3837
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .prologue
    .line 3673
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 21
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 12173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12174
    .local v15, "text":Ljava/lang/CharSequence;
    instance-of v2, v15, Landroid/text/Spanned;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_6

    move-object v4, v15

    .line 12175
    check-cast v4, Landroid/text/Spanned;

    .line 12176
    .local v4, "spannedText":Landroid/text/Spanned;
    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, v2, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/ReplacementSpan;

    .line 12178
    .local v13, "spans":[Landroid/text/style/ReplacementSpan;
    array-length v2, v13

    if-gtz v2, :cond_1

    const/4 v12, 0x0

    .line 12225
    .end local v4    # "spannedText":Landroid/text/Spanned;
    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_0
    :goto_0
    return-object v12

    .line 12180
    .restart local v4    # "spannedText":Landroid/text/Spanned;
    .restart local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .line 12182
    .local v14, "startPos":Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Point;->x:I

    sub-int v18, v2, v3

    .line 12183
    .local v18, "tx":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Point;->y:I

    sub-int v19, v2, v3

    .line 12185
    .local v19, "ty":I
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v9

    .line 12186
    .local v9, "line":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v10

    .line 12187
    .local v10, "maxLine":I
    if-lez v10, :cond_2

    if-gt v10, v9, :cond_2

    .line 12188
    add-int/lit8 v9, v10, -0x1

    .line 12190
    :cond_2
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v11

    .line 12191
    .local v11, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 12193
    .local v16, "textXPos":I
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 12194
    if-lez v11, :cond_4

    .line 12195
    add-int/lit8 v11, v11, -0x1

    .line 12196
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 12202
    :cond_3
    const/4 v12, 0x0

    .line 12203
    .local v12, "rect":Landroid/graphics/Rect;
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, v11, v11, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    check-cast v13, [Landroid/text/style/ReplacementSpan;

    .line 12204
    .restart local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    array-length v2, v13

    if-lez v2, :cond_0

    .line 12205
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 12206
    .local v5, "start":I
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 12210
    .local v6, "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v9, v2, :cond_5

    .line 12211
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v17, v2, v3

    .line 12212
    .local v17, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v8, v2, v3

    .line 12218
    .local v8, "bottom":I
    :goto_1
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v12, v2, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12219
    .restart local v12    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget-object v2, v13, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 12220
    sub-int v2, v8, v17

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 12221
    iget v2, v14, Landroid/graphics/Point;->x:I

    add-int v2, v2, v16

    iget v3, v14, Landroid/graphics/Point;->y:I

    add-int v3, v3, v17

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0

    .line 12198
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "bottom":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v17    # "top":I
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 12214
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    .restart local v12    # "rect":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 12215
    .restart local v17    # "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .restart local v8    # "bottom":I
    goto :goto_1

    .line 12225
    .end local v4    # "spannedText":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "bottom":I
    .end local v9    # "line":I
    .end local v10    # "maxLine":I
    .end local v11    # "offset":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v14    # "startPos":Landroid/graphics/Point;
    .end local v16    # "textXPos":I
    .end local v17    # "top":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 10323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 2014
    iget-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3619
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11465
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11467
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 11490
    :goto_0
    return-object v1

    .line 11471
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 11474
    .local v0, "defaultIsRtl":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11477
    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11471
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 11477
    .restart local v0    # "defaultIsRtl":Z
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11480
    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11482
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11484
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11486
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11488
    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11490
    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11474
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;
    .locals 2
    .param p1, "isHint"    # Z

    .prologue
    const/4 v0, 0x1

    .line 11498
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    .line 11520
    :goto_0
    return-object v1

    .line 11501
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 11504
    .local v0, "defaultIsRtl":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11507
    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11501
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 11507
    .restart local v0    # "defaultIsRtl":Z
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11510
    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11512
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11514
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11516
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11518
    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11520
    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 11504
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 10723
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10724
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10725
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10727
    :cond_0
    return-object v0
.end method

.method public getTextForMultiSelection()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 12846
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 3317
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 10300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 3240
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 6105
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6106
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextEffectOffsetTop()I

    move-result v0

    neg-int v0, v0

    .line 6110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 2468
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    .line 2450
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 2426
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 2434
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    .line 2442
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 2459
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10929
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 3375
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 3260
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 3261
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 2

    .prologue
    .line 2070
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3927
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 3928
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 3930
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5793
    const/4 v4, 0x0

    .line 5794
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5796
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5797
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5798
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5801
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 5802
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5803
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5805
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    .line 5806
    const/16 v5, 0x50

    if-ne v1, v5, :cond_2

    .line 5807
    sub-int v4, v0, v3

    .line 5812
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .line 5809
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method public getVisibleTextRange([I)Z
    .locals 11
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 12862
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 12863
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v9, p1

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 12931
    :cond_0
    :goto_0
    return v7

    .line 12867
    :cond_1
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 12868
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 12872
    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_4

    .line 12873
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    .line 12874
    .local v4, "start":I
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 12876
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 12877
    add-int v9, v4, v0

    add-int/lit8 v9, v9, -0x1

    aput v9, p1, v7

    .line 12878
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    .end local v0    # "count":I
    .end local v4    # "start":I
    :cond_2
    :goto_1
    move v7, v8

    .line 12931
    goto :goto_0

    .line 12880
    .restart local v0    # "count":I
    .restart local v4    # "start":I
    :cond_3
    aput v7, p1, v7

    .line 12881
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto :goto_1

    .line 12883
    .end local v0    # "count":I
    .end local v4    # "start":I
    :cond_4
    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_5

    .line 12884
    aput v7, p1, v7

    .line 12885
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto :goto_1

    .line 12886
    :cond_5
    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_7

    .line 12887
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    .line 12888
    .restart local v4    # "start":I
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 12890
    .restart local v0    # "count":I
    aput v7, p1, v7

    .line 12891
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    aput v9, p1, v8

    .line 12893
    if-nez v4, :cond_6

    .line 12894
    if-lez v0, :cond_2

    .line 12895
    add-int v9, v4, v0

    add-int/lit8 v9, v9, -0x1

    aput v9, p1, v7

    .line 12896
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto :goto_1

    .line 12899
    :cond_6
    if-lez v0, :cond_2

    .line 12900
    aput v7, p1, v7

    .line 12901
    add-int/lit8 v7, v4, 0x1

    aput v7, p1, v8

    goto :goto_1

    .line 12905
    .end local v0    # "count":I
    .end local v4    # "start":I
    :cond_7
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 12906
    .local v3, "line":I
    if-ltz v3, :cond_0

    .line 12908
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    .line 12909
    .restart local v4    # "start":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 12911
    .restart local v0    # "count":I
    if-lez v0, :cond_9

    .line 12912
    aput v7, p1, v7

    .line 12913
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aput v7, p1, v8

    .line 12914
    aget v7, p1, v8

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v7, v9, :cond_8

    .line 12915
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aput v7, p1, v8

    .line 12919
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v1

    .line 12920
    .local v1, "disText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 12921
    aget v7, p1, v8

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 12922
    .local v5, "startChar":C
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12923
    aget v7, p1, v8

    add-int/lit8 v7, v7, 0x1

    aput v7, p1, v8

    goto/16 :goto_1

    .line 12927
    .end local v1    # "disText":Ljava/lang/CharSequence;
    .end local v5    # "startChar":C
    :cond_9
    aput v7, p1, v7

    .line 12928
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_1
.end method

.method public getWBTextBuffer(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "refresh"    # Z

    .prologue
    .line 13771
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 13772
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2

    .line 13773
    iget-object v0, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13780
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    return-object v0

    .line 13774
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    .line 13775
    iget-object v0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0

    .line 13777
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    .prologue
    .line 10362
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10363
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    .line 10365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6979
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 6999
    :cond_1
    :goto_0
    return v1

    .line 6983
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 6984
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6985
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 6986
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 6989
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 6990
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6991
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 6992
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 6994
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6995
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    move v1, v2

    .line 6999
    goto :goto_0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 9341
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 9343
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 9344
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 9345
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 9347
    :cond_1
    if-eqz v0, :cond_2

    .line 9348
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 9349
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_4

    .line 9350
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9351
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 9356
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 9358
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 9359
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 9360
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 9361
    return-void

    .line 9343
    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto :goto_0

    .line 9353
    .restart local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_4
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9354
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1
.end method

.method public hasMultiSelection()Z
    .locals 1

    .prologue
    .line 12937
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 6230
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

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

.method hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 5307
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    .line 8856
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8857
    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8859
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideCursorControllers()V
    .locals 1

    .prologue
    .line 12137
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 12138
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 12139
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 12141
    :cond_0
    return-void
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7276
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    .line 7277
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 7279
    :cond_0
    return-void
.end method

.method invalidateCursor()V
    .locals 1

    .prologue
    .line 5882
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5884
    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 5885
    return-void
.end method

.method invalidateCursorPath()V
    .locals 12

    .prologue
    .line 5839
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    .line 5840
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 5879
    :cond_0
    :goto_0
    return-void

    .line 5842
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 5843
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 5845
    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_3

    .line 5846
    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    .line 5856
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 5857
    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 5858
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5861
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 5864
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5866
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 5870
    monitor-exit v6

    goto :goto_0

    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5872
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_0

    .line 5873
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5874
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 5872
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6169
    const/4 v7, 0x0

    .line 6171
    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 6172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 6173
    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mScrollX:I

    .line 6174
    .local v9, "scrollX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    .line 6179
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 6180
    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_0

    .line 6181
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 6182
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .line 6183
    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 6184
    .local v1, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 6186
    .local v11, "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v9, v12

    .line 6187
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 6188
    const/4 v7, 0x1

    .line 6216
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 6217
    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 6222
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-nez v7, :cond_2

    .line 6223
    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6225
    :cond_2
    return-void

    .line 6189
    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_3
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 6190
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .line 6191
    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 6192
    .restart local v1    # "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 6194
    .restart local v11    # "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 6195
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 6196
    const/4 v7, 0x1

    .line 6197
    goto :goto_0

    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_4
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 6198
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 6199
    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 6200
    .local v3, "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 6202
    .local v8, "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 6203
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v10, v12

    .line 6204
    const/4 v7, 0x1

    .line 6205
    goto :goto_0

    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v8    # "hspace":I
    :cond_5
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 6206
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 6207
    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 6208
    .restart local v3    # "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 6210
    .restart local v8    # "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 6211
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 6212
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    .prologue
    .line 5899
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    .line 5900
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 5951
    :goto_0
    return-void

    .line 5902
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5903
    .local v8, "lineStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 5911
    .local v10, "top":I
    if-lez v8, :cond_1

    .line 5912
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 5917
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 5918
    move v7, v8

    .line 5922
    .local v7, "lineEnd":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 5925
    .local v2, "bottom":I
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_3

    .line 5926
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_3

    .line 5927
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 5928
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5929
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5926
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5920
    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7    # "lineEnd":I
    goto :goto_1

    .line 5933
    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 5934
    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 5937
    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    .line 5938
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 5939
    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 5940
    .local v9, "right":I
    add-int/2addr v6, v4

    .line 5941
    add-int/2addr v9, v4

    .line 5948
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 5944
    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_4
    move v6, v4

    .line 5945
    .restart local v6    # "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9    # "right":I
    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    .line 11669
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorControllersShowing()Z
    .locals 1

    .prologue
    .line 12147
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    .line 9101
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_0
.end method

.method public isEllipsis()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12157
    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 12159
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isEnableMultiSelection()Z
    .locals 1

    .prologue
    .line 13172
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableNewActionPopupWindow()Z
    .locals 1

    .prologue
    .line 13728
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 13729
    iget-boolean v0, p0, Landroid/widget/TextView;->mCanSelectText:Z

    .line 13731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 11443
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_1

    .line 11448
    :cond_0
    :goto_0
    return v1

    .line 11444
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 11445
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    .line 11446
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 11448
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInExtractedMode()Z
    .locals 1

    .prologue
    .line 10309
    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 10746
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10747
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiSelectionLinkArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 13005
    const/4 v0, 0x0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 6083
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

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

.method isSingleLine()Z
    .locals 1

    .prologue
    .line 5178
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10997
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_1

    .line 11004
    :cond_0
    :goto_0
    return v1

    .line 10998
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    .line 11001
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    .line 11003
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 11004
    .local v0, "variation":I
    if-eqz v0, :cond_2

    const/16 v3, 0x30

    if-eq v0, v3, :cond_2

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method isTextEditable()Z
    .locals 1

    .prologue
    .line 9994
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    .line 6248
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_0
.end method

.method public isValidMultiSelection()Z
    .locals 1

    .prologue
    .line 12615
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 5

    .prologue
    .line 6157
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6158
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v4, :cond_1

    .line 6159
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 6160
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 6161
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6159
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6165
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 33
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    .line 7717
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 7720
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 7721
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 7723
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7725
    if-gez p1, :cond_0

    .line 7726
    const/16 p1, 0x0

    .line 7728
    :cond_0
    if-gez p2, :cond_1

    .line 7729
    const/16 p2, 0x0

    .line 7732
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 7733
    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_11

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_11

    :cond_2
    const/16 v32, 0x1

    .line 7736
    .local v32, "testDirChange":Z
    :goto_0
    const/16 v30, 0x0

    .line 7737
    .local v30, "oldDir":I
    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v30

    .line 7738
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v7, 0x1

    .line 7739
    .local v7, "shouldEllipsize":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_13

    const/16 v31, 0x1

    .line 7741
    .local v31, "switchEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 7742
    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 7744
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 7747
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_5

    .line 7748
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7751
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;

    move-result-object v29

    .line 7753
    .local v29, "hintTextDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_14

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7755
    if-eqz v31, :cond_6

    .line 7756
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_15

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 7758
    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_16

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7762
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_17

    const/4 v7, 0x1

    .line 7763
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7765
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    .line 7766
    if-eqz v7, :cond_7

    move/from16 p2, p1

    .line 7768
    :cond_7
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 7769
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 7771
    if-eqz p4, :cond_8

    .line 7772
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 7776
    :cond_8
    if-eqz p4, :cond_a

    .line 7777
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_19

    if-eqz v7, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_19

    .line 7779
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_18

    .line 7780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7790
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 7807
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_c

    .line 7808
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p2

    invoke-static {v2, v3, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v27

    .line 7816
    .local v27, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz v7, :cond_b

    .line 7817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    :goto_9
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 7821
    :cond_b
    invoke-virtual/range {v27 .. v27}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7825
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_c
    if-nez p6, :cond_d

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v30

    if-eq v0, v2, :cond_e

    .line 7826
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 7829
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_f

    .line 7830
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_f

    .line 7831
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    .line 7834
    .local v28, "height":I
    const/4 v2, -0x2

    move/from16 v0, v28

    if-eq v0, v2, :cond_1c

    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_1c

    .line 7835
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7844
    .end local v28    # "height":I
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 7845
    :cond_10
    return-void

    .line 7733
    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v29    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    .end local v30    # "oldDir":I
    .end local v31    # "switchEllipsize":Z
    .end local v32    # "testDirChange":Z
    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 7738
    .restart local v30    # "oldDir":I
    .restart local v32    # "testDirChange":Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 7739
    .restart local v7    # "shouldEllipsize":Z
    :cond_13
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 7753
    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v29    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    .restart local v31    # "switchEllipsize":Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 7756
    :cond_15
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_4

    .line 7758
    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 7762
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 7785
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 7791
    :cond_19
    if-eqz v7, :cond_a

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_a

    .line 7792
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_1a

    .line 7793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 7799
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 7817
    .restart local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_1b
    const v2, 0x7fffffff

    goto/16 :goto_9

    .line 7838
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v28    # "height":I
    :cond_1c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_a
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    .line 8714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 8715
    const/16 v17, 0x0

    .line 8764
    :goto_0
    return v17

    .line 8717
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 8718
    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 8719
    .local v3, "end":I
    if-eq v12, v3, :cond_1

    .line 8720
    const/16 v17, 0x0

    goto :goto_0

    .line 8725
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 8727
    .local v8, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 8728
    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 8729
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 8730
    .local v16, "vspace":I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 8731
    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 8732
    div-int/lit8 v15, v16, 0x4

    .line 8733
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .line 8735
    .local v14, "vs":I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 8736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 8743
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 8744
    .local v6, "hspace":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .line 8745
    .local v5, "hs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 8746
    .local v7, "leftChar":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 8749
    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    move v9, v7

    .line 8750
    .local v9, "lowChar":I
    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    .line 8752
    .local v4, "highChar":I
    :goto_3
    move v10, v12

    .line 8753
    .local v10, "newStart":I
    if-ge v10, v9, :cond_8

    .line 8754
    move v10, v9

    .line 8759
    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    .line 8760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8761
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 8737
    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    .line 8738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_6
    move v9, v11

    .line 8749
    goto :goto_2

    .restart local v9    # "lowChar":I
    :cond_7
    move v4, v11

    .line 8750
    goto :goto_3

    .line 8755
    .restart local v4    # "highChar":I
    .restart local v10    # "newStart":I
    :cond_8
    if-le v10, v4, :cond_4

    .line 8756
    move v10, v4

    goto :goto_4

    .line 8764
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1822
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 1823
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 1824
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1825
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1827
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    .line 1841
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1842
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 1845
    :cond_1
    return-void

    .line 1829
    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1830
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1835
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1837
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 1838
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6021
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 6023
    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6040
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 6042
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_1

    .line 6043
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6044
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 6046
    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 7595
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 7406
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 7567
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 7578
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 7579
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3208
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3209
    iget-boolean v4, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    if-nez v4, :cond_0

    .line 3210
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 3212
    :cond_0
    instance-of v4, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v4, :cond_1

    .line 3213
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1

    .line 3215
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->onScrollChanged()V

    .line 3225
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3226
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 3228
    .local v1, "isMobileKeyboard":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 3229
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3230
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    .line 3233
    :cond_2
    return-void

    .end local v1    # "isMobileKeyboard":Z
    :cond_3
    move v1, v3

    .line 3226
    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    .line 6313
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    .line 6314
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 6320
    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6325
    array-length v2, v0

    .line 6326
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 6327
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    .line 6328
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 6329
    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 6330
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 6336
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :goto_2
    return-object v3

    .line 6316
    .end local v0    # "drawableState":[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 6317
    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 6326
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    move-object v3, v0

    .line 6336
    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x8000000

    .line 7411
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7412
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 7413
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7414
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    .line 7415
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7416
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 7417
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 7418
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 7419
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 7423
    :goto_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 7424
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 7425
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7427
    :cond_0
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7428
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7430
    :cond_1
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_2

    .line 7432
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    .line 7435
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7441
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7442
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7445
    :cond_2
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7447
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7449
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 7450
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_6

    .line 7451
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 7452
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 7453
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 7454
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 7458
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "view":Landroid/view/View;
    :goto_2
    return-object v0

    .line 7421
    :cond_4
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 7439
    .restart local v1    # "view":Landroid/view/View;
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 7458
    .end local v1    # "view":Landroid/view/View;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .prologue
    .line 6051
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    .line 6052
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6053
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 6068
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 6070
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 6072
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 6073
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    .line 11399
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11424
    :goto_0
    :pswitch_0
    return v2

    .line 11401
    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 11404
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 11408
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 11409
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 11413
    .end local v0    # "offset":I
    :pswitch_4
    iput-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    .line 11415
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 11416
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    .line 11419
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    goto :goto_0

    .line 11399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 44
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6423
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 6426
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6428
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v16

    .line 6429
    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v18

    .line 6430
    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    .line 6431
    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v15

    .line 6432
    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v35, v0

    .line 6433
    .local v35, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v36, v0

    .line 6434
    .local v36, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v33, v0

    .line 6435
    .local v33, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v28, v0

    .line 6436
    .local v28, "left":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mBottom:I

    .line 6437
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v37, v0

    .line 6438
    .local v37, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v26

    .line 6439
    .local v26, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v31

    .line 6440
    .local v31, "offset":I
    if-eqz v26, :cond_13

    const/16 v29, 0x0

    .line 6441
    .local v29, "leftOffset":I
    :goto_0
    if-eqz v26, :cond_14

    move/from16 v34, v31

    .line 6443
    .local v34, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v19, v0

    .line 6444
    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_3

    .line 6450
    sub-int v2, v9, v37

    sub-int/2addr v2, v15

    sub-int v40, v2, v18

    .line 6451
    .local v40, "vspace":I
    sub-int v2, v33, v28

    sub-int v2, v2, v17

    sub-int v25, v2, v16

    .line 6455
    .local v25, "hspace":I
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 6456
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6457
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v2, v2, v35

    add-int v2, v2, v29

    int-to-float v2, v2

    add-int v3, v36, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move/from16 v42, v0

    sub-int v42, v40, v42

    div-int/lit8 v42, v42, 0x2

    add-int v3, v3, v42

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6460
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6461
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6466
    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 6467
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6468
    add-int v2, v35, v33

    sub-int v2, v2, v28

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v34

    int-to-float v2, v2

    add-int v3, v36, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move/from16 v42, v0

    sub-int v42, v40, v42

    div-int/lit8 v42, v42, 0x2

    add-int v3, v3, v42

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6471
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6472
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6477
    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 6478
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6479
    add-int v2, v35, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v25, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v3, v3, v36

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6481
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6487
    :cond_2
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 6488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6489
    add-int v2, v35, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v25, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int v3, v36, v9

    sub-int v3, v3, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPaddingBottom:I

    move/from16 v42, v0

    sub-int v3, v3, v42

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move/from16 v42, v0

    sub-int v3, v3, v42

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6492
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6493
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6497
    .end local v25    # "hspace":I
    .end local v40    # "vspace":I
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    .line 6499
    .local v14, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_4

    .line 6500
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 6503
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6505
    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 6506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 6507
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 6510
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6513
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 6514
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 6516
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6521
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v22

    .line 6522
    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v21

    .line 6524
    .local v21, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    sub-int v40, v2, v18

    .line 6525
    .restart local v40    # "vspace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v30, v2, v40

    .line 6527
    .local v30, "maxScrollY":I
    add-int v2, v16, v35

    int-to-float v11, v2

    .line 6528
    .local v11, "clipLeft":F
    if-nez v36, :cond_15

    const/4 v13, 0x0

    .line 6529
    .local v13, "clipTop":F
    :goto_2
    sub-int v2, v33, v28

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, v35

    int-to-float v12, v2

    .line 6530
    .local v12, "clipRight":F
    sub-int v2, v9, v37

    add-int v2, v2, v36

    move/from16 v0, v36

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    const/16 v21, 0x0

    .end local v21    # "extendedPaddingBottom":I
    :cond_7
    sub-int v2, v2, v21

    int-to-float v10, v2

    .line 6534
    .local v10, "clipBottom":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 6535
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v11, v2

    .line 6536
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    .line 6538
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v13, v2

    .line 6539
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    .line 6550
    :cond_8
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 6552
    const/16 v39, 0x0

    .line 6553
    .local v39, "voffsetText":I
    const/16 v38, 0x0

    .line 6557
    .local v38, "voffsetCursor":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    .line 6558
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v39

    .line 6559
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v38

    .line 6563
    :cond_9
    const/16 v23, 0x0

    .line 6564
    .local v23, "hctHor":I
    const/16 v24, 0x0

    .line 6566
    .local v24, "hctVert":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v27

    .line 6567
    .local v27, "layoutDirection":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v27

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 6568
    .local v8, "absoluteGravity":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6569
    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    .line 6570
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v23, v0

    .line 6571
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isRightAligned()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6572
    mul-int/lit8 v23, v23, -0x1

    .line 6575
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lt v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v42

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v42

    add-double v2, v2, v42

    double-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 6580
    const/16 v23, 0x0

    .line 6582
    :cond_b
    and-int/lit8 v2, v8, 0x70

    const/16 v3, 0x10

    if-eq v2, v3, :cond_c

    .line 6583
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v24, v0

    .line 6588
    :cond_c
    add-int v2, v16, v23

    int-to-float v2, v2

    add-int v3, v22, v39

    add-int v3, v3, v24

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6591
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v27

    .line 6592
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v27

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 6593
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    .line 6595
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_d

    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    .line 6597
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    sub-int v41, v2, v3

    .line 6598
    .local v41, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v32, v2, v3

    .line 6599
    .local v32, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v41, v32

    int-to-float v3, v3

    sub-float v20, v2, v3

    .line 6600
    .local v20, "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6603
    .end local v20    # "dx":F
    .end local v32    # "padding":I
    .end local v41    # "width":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6604
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .line 6605
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6609
    .end local v20    # "dx":F
    :cond_e
    sub-int v7, v38, v39

    .line 6611
    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    .line 6614
    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 6620
    .local v6, "highlightPaint":Landroid/graphics/Paint;
    if-eqz v4, :cond_f

    .line 6621
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/text/Layout;->setHighContastTextMode(Z)V

    .line 6624
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_17

    .line 6625
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 6632
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v4, :cond_11

    .line 6633
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v20

    .line 6634
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6635
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 6639
    .end local v20    # "dx":F
    :cond_11
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Landroid/util/GateConfig;->isGateLcdtextEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6640
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "<GATE-M>LCDSTR:"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v42, "/LCDSTR</GATE-M>"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6642
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6644
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Landroid/widget/TextView;->drawTextStrikethrough(Landroid/graphics/Canvas;I)V

    .line 6645
    return-void

    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v6    # "highlightPaint":Landroid/graphics/Paint;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v10    # "clipBottom":F
    .end local v11    # "clipLeft":F
    .end local v12    # "clipRight":F
    .end local v13    # "clipTop":F
    .end local v14    # "color":I
    .end local v19    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "extendedPaddingTop":I
    .end local v23    # "hctHor":I
    .end local v24    # "hctVert":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "leftOffset":I
    .end local v30    # "maxScrollY":I
    .end local v34    # "rightOffset":I
    .end local v38    # "voffsetCursor":I
    .end local v39    # "voffsetText":I
    .end local v40    # "vspace":I
    :cond_13
    move/from16 v29, v31

    .line 6440
    goto/16 :goto_0

    .line 6441
    .restart local v29    # "leftOffset":I
    :cond_14
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 6528
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v11    # "clipLeft":F
    .restart local v14    # "color":I
    .restart local v19    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v21    # "extendedPaddingBottom":I
    .restart local v22    # "extendedPaddingTop":I
    .restart local v30    # "maxScrollY":I
    .restart local v34    # "rightOffset":I
    .restart local v40    # "vspace":I
    :cond_15
    add-int v2, v22, v36

    int-to-float v13, v2

    goto/16 :goto_2

    .line 6540
    .end local v21    # "extendedPaddingBottom":I
    .restart local v10    # "clipBottom":F
    .restart local v12    # "clipRight":F
    .restart local v13    # "clipTop":F
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    .line 6541
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v42, v0

    sub-float v3, v3, v42

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v11, v2

    .line 6542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v42, v0

    add-float v3, v3, v42

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    .line 6544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v42, v0

    sub-float v3, v3, v42

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    .line 6545
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v42, v0

    add-float v3, v3, v42

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v10, v2

    goto/16 :goto_3

    .line 6627
    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v6    # "highlightPaint":Landroid/graphics/Paint;
    .restart local v7    # "cursorOffsetVertical":I
    .restart local v8    # "absoluteGravity":I
    .restart local v23    # "hctHor":I
    .restart local v24    # "hctVert":I
    .restart local v27    # "layoutDirection":I
    .restart local v38    # "voffsetCursor":I
    .restart local v39    # "voffsetText":I
    :cond_17
    if-eqz v4, :cond_10

    .line 6628
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto/16 :goto_4
.end method

.method public onEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    .prologue
    .line 5530
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 5531
    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v2, :cond_5

    .line 5532
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_2

    .line 5533
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5589
    :cond_0
    :goto_1
    return-void

    .line 5530
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    goto :goto_0

    .line 5544
    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_2
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 5545
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 5546
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_0

    .line 5547
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5548
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5554
    .end local v20    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 5555
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 5556
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_0

    .line 5557
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5558
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5564
    .end local v20    # "v":Landroid/view/View;
    :cond_4
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 5565
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 5566
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5567
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 5573
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .line 5574
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_0

    .line 5575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5576
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 5582
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 7603
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9535
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 9538
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 9539
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 9540
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 9544
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 9546
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 9566
    :goto_0
    return-void

    .line 9550
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 9552
    :cond_1
    if-eqz p1, :cond_2

    .line 9553
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 9554
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    .line 9555
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 9559
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 9561
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    .line 9562
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 9565
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9975
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9977
    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 9978
    const/4 v0, 0x1

    .line 9986
    :goto_0
    return v0

    .line 9980
    :catch_0
    move-exception v0

    .line 9986
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9632
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9875
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 10511
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10513
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 10514
    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 10516
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 10517
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 10518
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 10519
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 10521
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v8, 0x1

    .line 10526
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10528
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    .line 10529
    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 10531
    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10532
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 10535
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_2

    .line 10536
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 10539
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    .line 10540
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 10542
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 10543
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 10544
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 10548
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 10549
    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10550
    const/16 v4, 0x200

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10551
    const/16 v4, 0x1f

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 10556
    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10559
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 10560
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10561
    const/16 v4, 0x4000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10563
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 10564
    const v4, 0x8000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10566
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 10567
    const/high16 v4, 0x10000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10569
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 10570
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/high16 v5, 0x10000000

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040466

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 10574
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 10575
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10580
    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v3, v4

    .line 10581
    .local v3, "numFilters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_b

    .line 10582
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v4, v1

    .line 10583
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_a

    .line 10584
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 10581
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10588
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    if-nez v4, :cond_c

    .line 10589
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 10591
    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 7005
    invoke-virtual {p0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3f1

    if-ne p1, v3, :cond_0

    .line 7006
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v5, p0, Landroid/widget/TextView;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v0

    .line 7007
    .local v0, "isShownClipboard":Z
    if-nez v0, :cond_0

    .line 7008
    const-string v3, "TextView"

    const-string v4, "Samsung clipboard is not shown"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7014
    .end local v0    # "isShownClipboard":Z
    :cond_0
    const/16 v3, 0x13

    if-eq p1, v3, :cond_1

    const/16 v3, 0x14

    if-eq p1, v3, :cond_1

    const/16 v3, 0x15

    if-eq p1, v3, :cond_1

    const/16 v3, 0x16

    if-ne p1, v3, :cond_2

    .line 7016
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 7018
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7019
    iput-boolean v2, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    .line 7024
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v1

    .line 7025
    .local v1, "which":I
    if-nez v1, :cond_3

    .line 7026
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7029
    :cond_3
    return v2
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 7034
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 7036
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 7037
    .local v2, "which":I
    if-nez v2, :cond_0

    .line 7039
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 7072
    :goto_0
    return v3

    .line 7041
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    .line 7043
    goto :goto_0

    .line 7046
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 7053
    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7054
    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_4

    .line 7056
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 7057
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 7058
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 7059
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 7061
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    .line 7072
    goto :goto_0

    .line 7063
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 7065
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 7066
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 7067
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 7068
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6968
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6969
    const/4 v0, 0x1

    .line 6971
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v1, 0x1020033

    .line 10194
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10196
    sparse-switch p1, :sswitch_data_0

    .line 10247
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 10198
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10199
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10203
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10204
    const v0, 0x1020032

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10208
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10209
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10213
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10214
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10218
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10219
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10223
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10224
    const v0, 0x1020058

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10228
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10229
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10233
    :cond_1
    const/16 v0, 0x1001

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10235
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 10242
    :sswitch_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10243
    const v0, 0x1020031

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 10237
    :sswitch_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10238
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto/16 :goto_1

    .line 10196
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_3
        0x20 -> :sswitch_5
        0x32 -> :sswitch_4
        0x34 -> :sswitch_2
        0x35 -> :sswitch_6
        0x36 -> :sswitch_1
    .end sparse-switch

    .line 10235
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_7
        0x36 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6959
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7283
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7284
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 7401
    :goto_0
    return v5

    .line 7287
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7288
    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 7291
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 7375
    :cond_2
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_3

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_5

    :cond_3
    iget-boolean v5, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    if-eqz v5, :cond_5

    .line 7376
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7378
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 7379
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 7381
    .local v0, "accessoryKeyboardState":I
    and-int/lit8 v5, v0, 0x7

    if-nez v5, :cond_5

    .line 7382
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 7383
    .local v3, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 7384
    .local v1, "end":I
    if-le v3, v1, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7386
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 7390
    .end local v0    # "accessoryKeyboardState":I
    .end local v1    # "end":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "start":I
    :cond_5
    iput-boolean v7, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    .line 7393
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_c

    .line 7394
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    .line 7395
    goto :goto_0

    .line 7293
    :sswitch_0
    iput-boolean v7, p0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    .line 7294
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7304
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_6

    .line 7305
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7307
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7308
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 7309
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7310
    invoke-virtual {v2, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7315
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 7318
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7319
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v5, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v5, :cond_7

    .line 7322
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 7323
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v5, p0, v7, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    .line 7325
    goto/16 :goto_0

    .line 7329
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_8

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 7341
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_b

    .line 7342
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 7344
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_a

    .line 7345
    invoke-virtual {v4, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 7346
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7356
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v5, v6

    .line 7357
    goto/16 :goto_0

    .line 7358
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_b

    .line 7362
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7363
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_b

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 7364
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7369
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "v":Landroid/view/View;
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 7397
    :cond_c
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_d

    .line 7398
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    .line 7399
    goto/16 :goto_0

    .line 7401
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 7291
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8431
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 8432
    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v1, :cond_0

    .line 8433
    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 8434
    .local v0, "curs":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 8435
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 8437
    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    .line 10353
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 10354
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 8049
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 8050
    .local v24, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 8051
    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 8052
    .local v25, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 8057
    .local v15, "heightSize":I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 8058
    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 8060
    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    .line 8061
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 8064
    :cond_0
    const/4 v9, -0x1

    .line 8065
    .local v9, "des":I
    const/4 v12, 0x0

    .line 8067
    .local v12, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-ne v0, v2, :cond_7

    .line 8069
    move/from16 v22, v25

    .line 8157
    .local v22, "width":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .line 8158
    .local v3, "want":I
    move/from16 v21, v3

    .line 8160
    .local v21, "unpaddedWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x100000

    .line 8162
    :cond_2
    move v4, v3

    .line 8163
    .local v4, "hintWant":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    move/from16 v17, v4

    .line 8165
    .local v17, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_19

    .line 8166
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 8193
    :cond_3
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v14, v2, :cond_22

    .line 8195
    move v13, v15

    .line 8196
    .local v13, "height":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 8215
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v20, v2, v7

    .line 8216
    .local v20, "unpaddedHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    .line 8217
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 8224
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v21

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_24

    .line 8227
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8266
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 8267
    return-void

    .line 8071
    .end local v3    # "want":I
    .end local v4    # "hintWant":I
    .end local v13    # "height":I
    .end local v17    # "hintWidth":I
    .end local v20    # "unpaddedHeight":I
    .end local v21    # "unpaddedWidth":I
    .end local v22    # "width":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_8

    .line 8072
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    .line 8075
    :cond_8
    if-gez v9, :cond_13

    .line 8076
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    .line 8077
    if-eqz v5, :cond_9

    .line 8078
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 8084
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_14

    .line 8085
    :cond_a
    if-gez v9, :cond_b

    .line 8086
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v9, v0

    .line 8088
    :cond_b
    move/from16 v22, v9

    .line 8094
    .restart local v22    # "width":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8095
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v2, v0

    add-int v22, v22, v2

    .line 8100
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 8101
    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_d

    .line 8102
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 8103
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 8106
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    .line 8107
    const/16 v16, -0x1

    .line 8110
    .local v16, "hintDes":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_e

    .line 8111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v16

    .line 8114
    :cond_e
    if-gez v16, :cond_f

    .line 8115
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 8116
    if-eqz v6, :cond_f

    .line 8117
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 8121
    :cond_f
    if-eqz v6, :cond_10

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_15

    .line 8122
    :cond_10
    if-gez v16, :cond_11

    .line 8123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v16, v0

    .line 8125
    :cond_11
    move/from16 v17, v16

    .line 8130
    .restart local v17    # "hintWidth":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    .line 8131
    move/from16 v22, v17

    .line 8135
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v22, v22, v2

    .line 8137
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    .line 8138
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 8143
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_17

    .line 8144
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 8150
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 8152
    const/high16 v2, -0x80000000

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    .line 8153
    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_0

    .line 8081
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "width":I
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 8090
    :cond_14
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v22, v0

    .restart local v22    # "width":I
    goto/16 :goto_6

    .line 8127
    .restart local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v16    # "hintDes":I
    :cond_15
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v0

    .restart local v17    # "hintWidth":I
    goto :goto_7

    .line 8140
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_8

    .line 8146
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto :goto_9

    .line 8163
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "want":I
    .restart local v4    # "hintWant":I
    .restart local v21    # "unpaddedWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v17

    goto/16 :goto_1

    .line 8169
    .restart local v17    # "hintWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_1a

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v22, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1e

    :cond_1a
    const/16 v18, 0x1

    .line 8174
    .local v18, "layoutChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1b

    if-eqz v12, :cond_1f

    if-ltz v9, :cond_1f

    if-gt v9, v3, :cond_1f

    :cond_1b
    const/16 v23, 0x1

    .line 8179
    .local v23, "widthChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_20

    :cond_1c
    const/16 v19, 0x1

    .line 8181
    .local v19, "maximumChanged":Z
    :goto_c
    if-nez v18, :cond_1d

    if-eqz v19, :cond_3

    .line 8182
    :cond_1d
    if-nez v19, :cond_21

    if-eqz v23, :cond_21

    .line 8183
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 8169
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_1e
    const/16 v18, 0x0

    goto :goto_a

    .line 8174
    .restart local v18    # "layoutChanged":Z
    :cond_1f
    const/16 v23, 0x0

    goto :goto_b

    .line 8179
    .restart local v23    # "widthChanged":Z
    :cond_20
    const/16 v19, 0x0

    goto :goto_c

    .line 8185
    .restart local v19    # "maximumChanged":Z
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    .line 8198
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .line 8200
    .local v10, "desired":I
    move v13, v10

    .line 8201
    .restart local v13    # "height":I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 8203
    const/high16 v2, -0x80000000

    if-ne v14, v2, :cond_23

    .line 8204
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 8208
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8209
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v2, v0

    add-int/2addr v13, v2

    goto/16 :goto_3

    .line 8229
    .end local v10    # "desired":I
    .restart local v20    # "unpaddedHeight":I
    :cond_24
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onMultiSelectMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 14042
    const/4 v0, 0x0

    return v0
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 10372
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10374
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 10375
    .local v0, "isPassword":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10376
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 10377
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10378
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10381
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 5970
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 5971
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5974
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_6

    .line 5979
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5981
    .local v0, "curs":I
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5983
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5991
    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    .line 5992
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5995
    :cond_2
    if-ltz v0, :cond_3

    .line 5996
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 6005
    .end local v0    # "curs":I
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_5

    .line 6006
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6007
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    .line 6011
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 6014
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    .line 6016
    const/4 v1, 0x1

    return v1

    .line 5999
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    goto :goto_0

    .line 6008
    :cond_7
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mSelectionActionMode:Z

    if-eqz v1, :cond_4

    .line 6009
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 7616
    const/4 v0, 0x0

    return v0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 32
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 10400
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 10401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v29

    if-nez v29, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v29

    if-eqz v29, :cond_8

    :cond_0
    const/4 v12, 0x1

    .line 10403
    .local v12, "isPassword":Z
    :goto_0
    if-nez v12, :cond_7

    .line 10404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 10405
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 10407
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 10408
    .local v13, "layout":Landroid/text/Layout;
    invoke-virtual {v13}, Landroid/text/Layout;->getLineCount()I

    move-result v15

    .line 10409
    .local v15, "lineCount":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-gt v15, v0, :cond_9

    .line 10411
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v31

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 10479
    :goto_1
    const/16 v21, 0x0

    .line 10480
    .local v21, "style":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v26

    .line 10481
    .local v26, "typefaceStyle":I
    and-int/lit8 v29, v26, 0x1

    if-eqz v29, :cond_2

    .line 10482
    or-int/lit8 v21, v21, 0x1

    .line 10484
    :cond_2
    and-int/lit8 v29, v26, 0x2

    if-eqz v29, :cond_3

    .line 10485
    or-int/lit8 v21, v21, 0x2

    .line 10489
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/text/TextPaint;->getFlags()I

    move-result v17

    .line 10490
    .local v17, "paintFlags":I
    and-int/lit8 v29, v17, 0x20

    if-eqz v29, :cond_4

    .line 10491
    or-int/lit8 v21, v21, 0x1

    .line 10493
    :cond_4
    and-int/lit8 v29, v17, 0x8

    if-eqz v29, :cond_5

    .line 10494
    or-int/lit8 v21, v21, 0x4

    .line 10496
    :cond_5
    and-int/lit8 v29, v17, 0x10

    if-eqz v29, :cond_6

    .line 10497
    or-int/lit8 v21, v21, 0x8

    .line 10502
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v30

    const/16 v31, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 10505
    .end local v13    # "layout":Landroid/text/Layout;
    .end local v15    # "lineCount":I
    .end local v17    # "paintFlags":I
    .end local v21    # "style":I
    .end local v26    # "typefaceStyle":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 10506
    return-void

    .line 10401
    .end local v12    # "isPassword":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 10415
    .restart local v12    # "isPassword":Z
    .restart local v13    # "layout":Landroid/text/Layout;
    .restart local v15    # "lineCount":I
    :cond_9
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 10416
    .local v23, "tmpCords":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 10417
    const/16 v29, 0x1

    aget v25, v23, v29

    .line 10418
    .local v25, "topWindowLocation":I
    move-object/from16 v18, p0

    .line 10419
    .local v18, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    .line 10420
    .local v27, "viewParent":Landroid/view/ViewParent;
    :goto_2
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/view/View;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    move-object/from16 v18, v27

    .line 10421
    check-cast v18, Landroid/view/View;

    .line 10422
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    goto :goto_2

    .line 10424
    :cond_a
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v28

    .line 10427
    .local v28, "windowHeight":I
    if-ltz v25, :cond_11

    .line 10429
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 10430
    .local v24, "topLine":I
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .line 10439
    .local v6, "bottomLine":I
    :goto_3
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    sub-int v10, v24, v29

    .line 10440
    .local v10, "expandedTopLine":I
    if-gez v10, :cond_b

    .line 10441
    const/4 v10, 0x0

    .line 10443
    :cond_b
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    add-int v8, v6, v29

    .line 10444
    .local v8, "expandedBottomLine":I
    if-lt v8, v15, :cond_c

    .line 10445
    add-int/lit8 v8, v15, -0x1

    .line 10448
    :cond_c
    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 10449
    .local v9, "expandedTopChar":I
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 10452
    .local v7, "expandedBottomChar":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    .line 10453
    .local v20, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    .line 10454
    .local v19, "selEnd":I
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 10455
    move/from16 v0, v20

    if-ge v0, v9, :cond_d

    .line 10456
    move/from16 v9, v20

    .line 10458
    :cond_d
    move/from16 v0, v19

    if-le v0, v7, :cond_e

    .line 10459
    move/from16 v7, v19

    .line 10463
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    .line 10464
    .local v22, "text":Ljava/lang/CharSequence;
    if-gtz v9, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_10

    .line 10465
    :cond_f
    move-object/from16 v0, v22

    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 10467
    :cond_10
    sub-int v29, v20, v9

    sub-int v30, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 10468
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 10469
    .local v16, "lineOffsets":[I
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v14, v0, [I

    .line 10470
    .local v14, "lineBaselines":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v5

    .line 10471
    .local v5, "baselineOffset":I
    move/from16 v11, v24

    .local v11, "i":I
    :goto_4
    if-gt v11, v6, :cond_12

    .line 10472
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v30

    aput v30, v16, v29

    .line 10473
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v30

    add-int v30, v30, v5

    aput v30, v14, v29

    .line 10471
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 10434
    .end local v5    # "baselineOffset":I
    .end local v6    # "bottomLine":I
    .end local v7    # "expandedBottomChar":I
    .end local v8    # "expandedBottomLine":I
    .end local v9    # "expandedTopChar":I
    .end local v10    # "expandedTopLine":I
    .end local v11    # "i":I
    .end local v14    # "lineBaselines":[I
    .end local v16    # "lineOffsets":[I
    .end local v19    # "selEnd":I
    .end local v20    # "selStart":I
    .end local v22    # "text":Ljava/lang/CharSequence;
    .end local v24    # "topLine":I
    :cond_11
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 10435
    .restart local v24    # "topLine":I
    add-int/lit8 v29, v28, -0x1

    sub-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .restart local v6    # "bottomLine":I
    goto/16 :goto_3

    .line 10475
    .restart local v5    # "baselineOffset":I
    .restart local v7    # "expandedBottomChar":I
    .restart local v8    # "expandedBottomLine":I
    .restart local v9    # "expandedTopChar":I
    .restart local v10    # "expandedTopLine":I
    .restart local v11    # "i":I
    .restart local v14    # "lineBaselines":[I
    .restart local v16    # "lineOffsets":[I
    .restart local v19    # "selEnd":I
    .restart local v20    # "selStart":I
    .restart local v22    # "text":Ljava/lang/CharSequence;
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    goto/16 :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 11530
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_1

    .line 11539
    :cond_0
    :goto_0
    return-void

    .line 11533
    :cond_1
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 11536
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    .line 11537
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 4694
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_1

    .line 4695
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4748
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 4699
    check-cast v3, Landroid/widget/TextView$SavedState;

    .line 4700
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4703
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 4704
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4707
    :cond_2
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_5

    .line 4708
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_5

    .line 4709
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4711
    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_3

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_7

    .line 4712
    :cond_3
    const-string v2, ""

    .line 4714
    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 4715
    const-string v2, "(restored) "

    .line 4718
    :cond_4
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 4733
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4735
    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 4744
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v4, :cond_0

    .line 4745
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4746
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v4, v5}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    goto/16 :goto_0

    .line 4722
    .restart local v1    # "len":I
    :cond_7
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4724
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_5

    .line 4725
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4726
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 11453
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 11455
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    .line 11456
    .local v0, "newTextDir":Landroid/text/TextDirectionHeuristic;
    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v1, v0, :cond_0

    .line 11457
    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 11458
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 11459
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 11462
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 4596
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 4633
    .local v5, "superState":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4634
    .local v1, "save":Z
    const/4 v4, 0x0

    .line 4635
    .local v4, "start":I
    const/4 v0, 0x0

    .line 4637
    .local v0, "end":I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 4638
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 4639
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4640
    if-gez v4, :cond_0

    if-ltz v0, :cond_1

    .line 4642
    :cond_0
    const/4 v1, 0x1

    .line 4646
    :cond_1
    if-eqz v1, :cond_6

    .line 4647
    new-instance v3, Landroid/widget/TextView$SavedState;

    invoke-direct {v3, v5}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4649
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    iput v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    .line 4650
    iput v0, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 4652
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    .line 4653
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4655
    .local v2, "sp":Landroid/text/Spannable;
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_2

    .line 4656
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 4657
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4660
    :cond_2
    iput-object v2, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 4665
    .end local v2    # "sp":Landroid/text/Spannable;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ltz v4, :cond_3

    if-ltz v0, :cond_3

    .line 4666
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 4669
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4671
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    .line 4672
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 4677
    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_4
    :goto_1
    return-object v3

    .line 4662
    .restart local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_6
    move-object v3, v5

    .line 4677
    goto :goto_1
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 6077
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 6078
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    .line 6079
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    .line 10968
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10969
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10970
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    .line 10972
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 9190
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 9191
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9523
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 9526
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 9530
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 9531
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 9180
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 14
    .param p1, "id"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 10782
    const/4 v4, 0x0

    .line 10783
    .local v4, "min":I
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 10785
    .local v3, "max":I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 10786
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 10787
    .local v6, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 10789
    .local v5, "selEnd":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10790
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 10794
    .end local v5    # "selEnd":I
    .end local v6    # "selStart":I
    :cond_0
    const/4 v0, 0x0

    .line 10797
    .local v0, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    sparse-switch p1, :sswitch_data_0

    move v10, v8

    .line 10925
    :cond_1
    :goto_0
    return v10

    .line 10802
    :sswitch_0
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_2

    move v8, v10

    .line 10804
    .local v8, "shouldRestartActionMode":Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 10805
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    .line 10806
    if-eqz v8, :cond_1

    .line 10807
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 10812
    .end local v8    # "shouldRestartActionMode":Z
    :sswitch_1
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10813
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->undo()V

    goto :goto_0

    .line 10818
    :sswitch_2
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10819
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->redo()V

    goto :goto_0

    .line 10824
    :sswitch_3
    invoke-direct {p0, v4, v3, v10}, Landroid/widget/TextView;->paste(IIZ)V

    .line 10825
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    .line 10829
    :sswitch_4
    invoke-direct {p0, v4, v3, v8}, Landroid/widget/TextView;->paste(IIZ)V

    goto :goto_0

    .line 10834
    :sswitch_5
    iget-object v11, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v11, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_3

    move v10, v8

    .line 10835
    goto :goto_0

    .line 10839
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 10840
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 10841
    .restart local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 10842
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    .line 10847
    :goto_1
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 10848
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    .line 10844
    :cond_4
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1

    .line 10853
    :sswitch_6
    iget-object v11, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v11, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_5

    move v10, v8

    .line 10854
    goto :goto_0

    .line 10858
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 10859
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 10860
    .restart local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 10861
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    .line 10867
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto/16 :goto_0

    .line 10863
    :cond_6
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_2

    .line 10871
    :sswitch_7
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10872
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->replace()V

    goto/16 :goto_0

    .line 10877
    :sswitch_8
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_0

    .line 10881
    :sswitch_9
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    goto/16 :goto_0

    .line 10885
    :sswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v13, p0, Landroid/widget/TextView;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v2

    .line 10886
    .local v2, "isShownClipboard":Z
    if-nez v2, :cond_1

    .line 10887
    const-string v11, "TextView"

    const-string v12, "clip board is not shown"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10892
    .end local v2    # "isShownClipboard":Z
    :sswitch_b
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10893
    .local v7, "send":Landroid/content/Intent;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10894
    .local v9, "source":Ljava/lang/String;
    const-string/jumbo v11, "new_search"

    invoke-virtual {v7, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10895
    const-string/jumbo v11, "query"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10896
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10898
    const/high16 v11, 0x10000000

    :try_start_0
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10899
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 10900
    :catch_0
    move-exception v1

    .line 10902
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v11, "TextView"

    const-string v12, "WebSearch failed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10903
    const-string v11, "TextView"

    const-string v12, "ActivityNotFoundException"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 10909
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v7    # "send":Landroid/content/Intent;
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_c
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10910
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10911
    .restart local v9    # "source":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 10912
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11, v9, v4, v3}, Landroid/widget/Editor;->sendToDictionary(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 10918
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_d
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10919
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 10920
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v11}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto/16 :goto_0

    .line 10797
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_6
        0x1020022 -> :sswitch_3
        0x1020031 -> :sswitch_4
        0x1020032 -> :sswitch_1
        0x1020033 -> :sswitch_2
        0x1020034 -> :sswitch_7
        0x1020035 -> :sswitch_9
        0x1020055 -> :sswitch_c
        0x1020057 -> :sswitch_a
        0x1020058 -> :sswitch_8
        0x1020059 -> :sswitch_d
        0x1020510 -> :sswitch_b
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 9881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 9883
    .local v0, "action":I
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_0

    if-nez v0, :cond_0

    .line 9885
    iget-boolean v7, p0, Landroid/widget/TextView;->mFirstTouch:Z

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    sub-long/2addr v10, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gtz v7, :cond_3

    .line 9887
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v8, v7, Landroid/widget/Editor;->mDoubleTap:Z

    .line 9888
    iput-boolean v9, p0, Landroid/widget/TextView;->mFirstTouch:Z

    .line 9896
    :cond_0
    :goto_0
    if-ne v0, v8, :cond_1

    .line 9897
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    .line 9900
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_4

    .line 9901
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 9903
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 9970
    :cond_2
    :goto_1
    return v8

    .line 9890
    :cond_3
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 9891
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDoubleTap:Z

    .line 9892
    iput-boolean v8, p0, Landroid/widget/TextView;->mFirstTouch:Z

    goto :goto_0

    .line 9909
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 9916
    .local v4, "superResult":Z
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v7, :cond_6

    if-ne v0, v8, :cond_6

    .line 9917
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 9919
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz v7, :cond_5

    .line 9920
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 9921
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    :cond_5
    move v8, v4

    .line 9923
    goto :goto_1

    .line 9926
    :cond_6
    if-ne v0, v8, :cond_10

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v7, :cond_10

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_10

    move v6, v8

    .line 9929
    .local v6, "touchIsFinished":Z
    :goto_2
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v7, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_f

    .line 9931
    const/4 v1, 0x0

    .line 9933
    .local v1, "handled":Z
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_9

    .line 9934
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v10, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 9937
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    .line 9938
    .local v5, "textIsSelectable":Z
    if-eqz v6, :cond_a

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_a

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    .line 9942
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 9945
    .local v3, "links":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-lez v7, :cond_a

    .line 9946
    aget-object v7, v3, v9

    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 9947
    const/4 v1, 0x1

    .line 9951
    .end local v3    # "links":[Landroid/text/style/ClickableSpan;
    :cond_a
    if-eqz v6, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_b

    if-eqz v5, :cond_e

    .line 9953
    :cond_b
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 9954
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 9955
    if-nez v5, :cond_d

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v7, :cond_d

    .line 9956
    if-eqz v2, :cond_c

    invoke-virtual {v2, p0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_c

    move v9, v8

    :cond_c
    or-int/2addr v1, v9

    .line 9960
    :cond_d
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 9962
    const/4 v1, 0x1

    .line 9965
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_e
    if-nez v1, :cond_2

    .end local v1    # "handled":Z
    .end local v5    # "textIsSelectable":Z
    :cond_f
    move v8, v4

    .line 9970
    goto/16 :goto_1

    .end local v6    # "touchIsFinished":Z
    :cond_10
    move v6, v9

    .line 9926
    goto/16 :goto_2
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 10015
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 10016
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10017
    const/4 v0, 0x1

    .line 10021
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9579
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9580
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 9581
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 9582
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 9589
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 9570
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 9572
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 9574
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 9575
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 10601
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v7, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10693
    :cond_0
    :goto_0
    return v1

    .line 10605
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 10693
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    .line 10607
    :sswitch_0
    const/4 v1, 0x0

    .line 10610
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10611
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    .line 10612
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 10615
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    .line 10616
    const/4 v1, 0x1

    .line 10620
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10624
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 10625
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 10626
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 10627
    invoke-virtual {v2, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_0

    .line 10634
    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 10635
    const v5, 0x1020021

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_7
    move v1, v6

    .line 10639
    goto/16 :goto_0

    .line 10641
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 10642
    const v5, 0x1020022

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    move v1, v6

    .line 10646
    goto/16 :goto_0

    .line 10648
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 10649
    const v5, 0x1020020

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_9
    move v1, v6

    .line 10653
    goto/16 :goto_0

    .line 10655
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 10656
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .line 10657
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_a

    move v1, v6

    .line 10658
    goto/16 :goto_0

    .line 10660
    :cond_a
    if-eqz p2, :cond_c

    const-string v7, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 10662
    .local v3, "start":I
    :goto_1
    if-eqz p2, :cond_d

    const-string v7, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 10664
    .local v0, "end":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    if-ne v7, v3, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    if-eq v7, v0, :cond_f

    .line 10666
    :cond_b
    if-ne v3, v0, :cond_e

    if-ne v0, v5, :cond_e

    .line 10667
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_c
    move v3, v5

    .line 10660
    goto :goto_1

    .restart local v3    # "start":I
    :cond_d
    move v0, v5

    .line 10662
    goto :goto_2

    .line 10670
    .restart local v0    # "end":I
    :cond_e
    if-ltz v3, :cond_f

    if-gt v3, v0, :cond_f

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v0, v5, :cond_f

    .line 10671
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10673
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_0

    .line 10674
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_f
    move v1, v6

    .line 10679
    goto/16 :goto_0

    .line 10682
    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 10683
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    goto/16 :goto_0

    .line 10686
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 10687
    const v5, 0x1020035

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_10
    move v1, v6

    .line 10691
    goto/16 :goto_0

    .line 10605
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x200 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_4
        0x10000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 10936
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 10941
    .local v0, "result":Z
    return v0
.end method

.method public performLongClick()Z
    .locals 4

    .prologue
    .line 10947
    const/4 v1, 0x0

    .line 10948
    .local v1, "handled":Z
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10950
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10951
    const/4 v1, 0x1

    .line 10954
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isUniversalSwitchEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10955
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, v1}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 10958
    :cond_1
    if-eqz v1, :cond_2

    .line 10960
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 10963
    :cond_2
    return v1
.end method

.method public performWBEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    .prologue
    .line 13845
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 13846
    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v2, :cond_9

    .line 13847
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 13849
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_1

    .line 13850
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13851
    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 13852
    :cond_0
    if-eqz v19, :cond_1

    .line 13853
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 13866
    :cond_1
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 13867
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 13868
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_2

    .line 13869
    move-object/from16 v0, v20

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    move-object/from16 v3, v20

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v3}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13921
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "v":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 13845
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    goto :goto_0

    .line 13871
    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    .restart local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v20    # "v":Landroid/view/View;
    :cond_4
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13872
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 13878
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 13879
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 13880
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_2

    .line 13881
    move-object/from16 v0, v20

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    move-object/from16 v3, v20

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v3}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13883
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13884
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 13890
    .end local v20    # "v":Landroid/view/View;
    :cond_7
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 13891
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13892
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 13898
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13905
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .line 13906
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_2

    .line 13907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 13908
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 13914
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public registerForTouchMonitorListener()V
    .locals 0

    .prologue
    .line 13111
    return-void
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 9255
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 9269
    :cond_0
    return-void

    .line 9256
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 9258
    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 9259
    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    .line 9260
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9261
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 9262
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 9263
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_2

    if-ne v3, p1, :cond_3

    .line 9264
    :cond_2
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9265
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 9260
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeEasyEditSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5211
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 5213
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 5214
    check-cast v1, Landroid/text/Spannable;

    .line 5220
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 5221
    .local v2, "spans":[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 5222
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5216
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/EasyEditSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5217
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 5225
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeForTouchMonitorListener()V
    .locals 0

    .prologue
    .line 13130
    return-void
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    .line 4681
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4683
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4684
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 4685
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    .line 4687
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4683
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4690
    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5190
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 5192
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 5193
    check-cast v1, Landroid/text/Spannable;

    .line 5199
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 5200
    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 5201
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5195
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5196
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 5204
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 9216
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 9217
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 9219
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 9220
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9223
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public removeTextEffect(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 3795
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->removeTextEffect(I)V

    .line 3796
    return-void
.end method

.method public removeTextStrike()V
    .locals 1

    .prologue
    .line 6787
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mSkipDrawTextStrike:Z

    .line 6788
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6789
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 11223
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11224
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 11578
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11579
    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    .prologue
    .line 7269
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 7270
    :cond_0
    return-void
.end method

.method public resetHCTLetterSpacing()V
    .locals 3

    .prologue
    const/high16 v2, -0x3c6a0000    # -300.0f

    .line 14215
    iget v0, p0, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    sub-float/2addr v0, v2

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 14226
    :cond_0
    :goto_0
    return-void

    .line 14219
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 14220
    iput v2, p0, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    .line 14221
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 14222
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 14223
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 14224
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    .line 11545
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 11546
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 11547
    return-void
.end method

.method selectAllText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11214
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 11215
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 11217
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 11218
    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11219
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 10701
    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10702
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    .line 10708
    :cond_0
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 10712
    :goto_0
    return-void

    .line 10711
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 10732
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 10734
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 10735
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 10736
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 10737
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 10738
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10739
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 9309
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 9310
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9311
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9312
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9313
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 9312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9316
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 9317
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 9276
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 9277
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 9278
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9279
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9280
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 9281
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 9279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9287
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 9298
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    .line 9301
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    .line 9302
    :cond_2
    return-void
.end method

.method public sendToDictionary(Ljava/lang/String;II)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v5, 0x20

    .line 14118
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 14119
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14120
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14121
    const-string v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14122
    const-string v3, "force"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14124
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 14125
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 14126
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 14130
    :cond_0
    return-void
.end method

.method public sendToTranslate(Ljava/lang/String;)V
    .locals 21
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 14134
    const/4 v14, 0x0

    .line 14136
    .local v14, "isSamsungTranslateEnabled":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 14137
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v19, "android.intent.action.PROCESS_TEXT"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "text/plain"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 14139
    .local v9, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .line 14141
    .local v11, "googleTranslateInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_1

    .line 14142
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 14143
    .local v16, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v17

    .line 14144
    .local v17, "resolveInfoString":Ljava/lang/String;
    const-string v18, "com.sec.android.app.translator"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 14145
    const/4 v14, 0x1

    goto :goto_0

    .line 14147
    :cond_0
    move-object/from16 v11, v16

    goto :goto_0

    .line 14152
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "resolveInfoString":Ljava/lang/String;
    :cond_1
    if-eqz v14, :cond_2

    .line 14153
    const-string v3, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    .line 14154
    .local v3, "ACTION_SEC_TRANSLATE":Ljava/lang/String;
    const-string/jumbo v6, "mode"

    .line 14155
    .local v6, "EXTRA_NAME_MODE":Ljava/lang/String;
    const-string/jumbo v7, "source_text"

    .line 14156
    .local v7, "EXTRA_NAME_SOURCE_TEXT":Ljava/lang/String;
    const-string v4, "auto_start_translation"

    .line 14157
    .local v4, "EXTRA_NAME_AUTO_START":Ljava/lang/String;
    const-string v5, "client_id"

    .line 14158
    .local v5, "EXTRA_NAME_CLIENT_ID":Ljava/lang/String;
    const-string/jumbo v8, "viewer"

    .line 14160
    .local v8, "EXTRA_VALUE_VIEWER_MODE":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 14161
    .local v13, "intent":Landroid/content/Intent;
    const-string v18, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14162
    const-string/jumbo v18, "mode"

    const-string/jumbo v19, "viewer"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14163
    const-string/jumbo v18, "source_text"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14164
    const-string v18, "auto_start_translation"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14165
    const-string v18, "client_id"

    const-string v19, "XGPPDdj5SG"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14166
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14168
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14189
    .end local v3    # "ACTION_SEC_TRANSLATE":Ljava/lang/String;
    .end local v4    # "EXTRA_NAME_AUTO_START":Ljava/lang/String;
    .end local v5    # "EXTRA_NAME_CLIENT_ID":Ljava/lang/String;
    .end local v6    # "EXTRA_NAME_MODE":Ljava/lang/String;
    .end local v7    # "EXTRA_NAME_SOURCE_TEXT":Ljava/lang/String;
    .end local v8    # "EXTRA_VALUE_VIEWER_MODE":Ljava/lang/String;
    :goto_1
    return-void

    .line 14169
    .restart local v3    # "ACTION_SEC_TRANSLATE":Ljava/lang/String;
    .restart local v4    # "EXTRA_NAME_AUTO_START":Ljava/lang/String;
    .restart local v5    # "EXTRA_NAME_CLIENT_ID":Ljava/lang/String;
    .restart local v6    # "EXTRA_NAME_MODE":Ljava/lang/String;
    .restart local v7    # "EXTRA_NAME_SOURCE_TEXT":Ljava/lang/String;
    .restart local v8    # "EXTRA_VALUE_VIEWER_MODE":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 14170
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    const-string v18, "TextView"

    const-string v19, "Translate failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14171
    const-string v18, "TextView"

    const-string v19, "ActivityNotFoundException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 14174
    .end local v3    # "ACTION_SEC_TRANSLATE":Ljava/lang/String;
    .end local v4    # "EXTRA_NAME_AUTO_START":Ljava/lang/String;
    .end local v5    # "EXTRA_NAME_CLIENT_ID":Ljava/lang/String;
    .end local v6    # "EXTRA_NAME_MODE":Ljava/lang/String;
    .end local v7    # "EXTRA_NAME_SOURCE_TEXT":Ljava/lang/String;
    .end local v8    # "EXTRA_VALUE_VIEWER_MODE":Ljava/lang/String;
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v19, "android.intent.action.PROCESS_TEXT"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "text/plain"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v18

    const/high16 v19, 0x10000000

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v18

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 14180
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v18, "android.intent.extra.PROCESS_TEXT"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14183
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 14184
    :catch_1
    move-exception v10

    .line 14185
    .restart local v10    # "e":Landroid/content/ActivityNotFoundException;
    const-string v18, "TextView"

    const-string v19, "Translate failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14186
    const-string v18, "TextView"

    const-string v19, "ActivityNotFoundException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 14174
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v18, 0x0

    goto :goto_2
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 11685
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 11702
    :goto_0
    return-void

    .line 11692
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    .line 11693
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 11694
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 11696
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 11697
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 11698
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 11700
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1, "allCaps"    # Z

    .prologue
    .line 8896
    if-eqz p1, :cond_0

    .line 8897
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8901
    :goto_0
    return-void

    .line 8899
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3891
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 3892
    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 1
    .param p1, "breakStrategy"    # I

    .prologue
    .line 3453
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 3454
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3455
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3456
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3457
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3459
    :cond_0
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2918
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2919
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 2920
    if-eqz v0, :cond_0

    .line 2921
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 2930
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2931
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2932
    return-void

    .line 2924
    :cond_1
    if-nez v0, :cond_2

    .line 2925
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2927
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2961
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 2962
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2964
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2965
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2967
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2968
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2991
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 2992
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2994
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2995
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2997
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2998
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2487
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2490
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    .line 2491
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2492
    :cond_0
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2493
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2494
    :cond_1
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2495
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2496
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2499
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_6

    :cond_3
    move v2, v6

    .line 2500
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_a

    .line 2502
    if-eqz v1, :cond_4

    .line 2503
    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v6, :cond_7

    .line 2504
    iput-object v8, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2594
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 2595
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 2596
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 2599
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2600
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2601
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2602
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2603
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2604
    return-void

    .end local v2    # "drawables":Z
    :cond_6
    move v2, v5

    .line 2499
    goto :goto_0

    .line 2508
    .restart local v2    # "drawables":Z
    :cond_7
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 2509
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eqz v6, :cond_8

    .line 2510
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2512
    :cond_8
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v3

    .line 2508
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 2514
    :cond_9
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2515
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2516
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2517
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2521
    .end local v3    # "i":I
    :cond_a
    if-nez v1, :cond_b

    .line 2522
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2525
    :cond_b
    iget-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v7, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2527
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    if-eq v7, p1, :cond_c

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    if-eqz v7, :cond_c

    .line 2528
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2530
    :cond_c
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v7, v5

    .line 2532
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    if-eq v7, p2, :cond_d

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    if-eqz v7, :cond_d

    .line 2533
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2535
    :cond_d
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v7, v6

    .line 2537
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eq v6, p3, :cond_e

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eqz v6, :cond_e

    .line 2538
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2540
    :cond_e
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v6, v9

    .line 2542
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    if-eq v6, p4, :cond_f

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    if-eqz v6, :cond_f

    .line 2543
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2545
    :cond_f
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v6, v10

    .line 2547
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2550
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 2552
    .local v4, "state":[I
    if-eqz p1, :cond_10

    .line 2553
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2554
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2555
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2556
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2557
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 2562
    :goto_3
    if-eqz p3, :cond_11

    .line 2563
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2564
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2565
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2566
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2567
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 2572
    :goto_4
    if-eqz p2, :cond_12

    .line 2573
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2574
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2575
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2576
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2577
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2582
    :goto_5
    if-eqz p4, :cond_13

    .line 2583
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2584
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2585
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2586
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2587
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2559
    :cond_10
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_3

    .line 2569
    :cond_11
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_4

    .line 2579
    :cond_12
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_5

    .line 2589
    :cond_13
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2684
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2687
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    .line 2688
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    .line 2689
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2691
    :cond_0
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v4

    .line 2692
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eqz v6, :cond_1

    .line 2693
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2695
    :cond_1
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v9

    .line 2696
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2697
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2700
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_5

    :cond_3
    move v2, v5

    .line 2703
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_b

    .line 2705
    if-eqz v1, :cond_4

    .line 2706
    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v6, :cond_6

    .line 2707
    iput-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2804
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2805
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2806
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2807
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2808
    return-void

    .end local v2    # "drawables":Z
    :cond_5
    move v2, v4

    .line 2700
    goto :goto_0

    .line 2711
    .restart local v2    # "drawables":Z
    :cond_6
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2712
    :cond_7
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2713
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eqz v6, :cond_8

    .line 2714
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2716
    :cond_8
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v5

    .line 2717
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    .line 2718
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2720
    :cond_9
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2721
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_a

    .line 2722
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2724
    :cond_a
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v8

    .line 2725
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2726
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2727
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2728
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2732
    :cond_b
    if-nez v1, :cond_c

    .line 2733
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2736
    :cond_c
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2738
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v6, p1, :cond_d

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_d

    .line 2739
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2741
    :cond_d
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2743
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eq v6, p2, :cond_e

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eqz v6, :cond_e

    .line 2744
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2746
    :cond_e
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v6, v5

    .line 2748
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_f

    .line 2749
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2751
    :cond_f
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2753
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eq v5, p4, :cond_10

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_10

    .line 2754
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2756
    :cond_10
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v5, v8

    .line 2758
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2761
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 2763
    .local v3, "state":[I
    if-eqz p1, :cond_11

    .line 2764
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2765
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2766
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2767
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2768
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2773
    :goto_2
    if-eqz p3, :cond_12

    .line 2774
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2775
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2776
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2777
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2778
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2783
    :goto_3
    if-eqz p2, :cond_13

    .line 2784
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2785
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2786
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2787
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2788
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2793
    :goto_4
    if-eqz p4, :cond_14

    .line 2794
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2795
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2796
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2797
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2798
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2770
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    .line 2780
    :cond_12
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    .line 2790
    :cond_13
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 2800
    :cond_14
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2831
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2832
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2837
    return-void

    :cond_1
    move-object v4, v1

    .line 2832
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2856
    if-eqz p1, :cond_0

    .line 2857
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2859
    :cond_0
    if-eqz p3, :cond_1

    .line 2860
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2862
    :cond_1
    if-eqz p2, :cond_2

    .line 2863
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2865
    :cond_2
    if-eqz p4, :cond_3

    .line 2866
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2868
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2869
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2627
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2628
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2632
    return-void

    :cond_1
    move-object v4, v1

    .line 2628
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2652
    if-eqz p1, :cond_0

    .line 2653
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2655
    :cond_0
    if-eqz p3, :cond_1

    .line 2656
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2658
    :cond_1
    if-eqz p2, :cond_2

    .line 2659
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2661
    :cond_2
    if-eqz p4, :cond_3

    .line 2662
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2664
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2665
    return-void
.end method

.method public setCursorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 12129
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 11594
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11595
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 9079
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 9090
    :cond_0
    :goto_0
    return-void

    .line 9080
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9081
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    .line 9082
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 9083
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9085
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    .line 9088
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 11075
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 11076
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 11077
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 11038
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 11039
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 11040
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    .line 4786
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 4787
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4788
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1
    .param p1, "elegant"    # Z

    .prologue
    .line 3388
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 3389
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, -0x1

    .line 8972
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 8973
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_1

    .line 8974
    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    .line 8975
    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    .line 8986
    :cond_0
    :goto_0
    return-void

    .line 8978
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 8980
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8981
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8982
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8983
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;II)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p2, "keywordStart"    # I
    .param p3, "keywordCount"    # I

    .prologue
    .line 9000
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 9001
    if-gez p2, :cond_1

    .line 9015
    :cond_0
    :goto_0
    return-void

    .line 9004
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 9005
    iput p2, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    .line 9006
    iput p3, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    .line 9009
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9010
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 9011
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 9012
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method public setEms(I)V
    .locals 1
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4408
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4409
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4411
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4412
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4413
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1915
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1919
    :cond_1
    if-nez p1, :cond_2

    .line 1921
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1922
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1923
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1927
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1929
    if-eqz p1, :cond_3

    .line 1931
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1932
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1936
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 1937
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 1938
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1941
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 5679
    if-nez p1, :cond_0

    .line 5680
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5688
    :goto_0
    return-void

    .line 5682
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10804f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5685
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5686
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5700
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5701
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 5704
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 7490
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 7491
    .local v4, "content":Landroid/text/Editable;
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 7492
    if-nez v4, :cond_3

    .line 7493
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7523
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .line 7524
    .local v7, "sp":Landroid/text/Spannable;
    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 7525
    .local v6, "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 7526
    .local v1, "start":I
    if-gez v1, :cond_7

    const/4 v1, 0x0

    .line 7528
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 7529
    .local v2, "end":I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 7531
    :cond_2
    :goto_2
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7534
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 7535
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 7539
    :goto_3
    return-void

    .line 7495
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v6    # "N":I
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_3
    const/4 v1, 0x0

    .line 7496
    .restart local v1    # "start":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 7498
    .restart local v2    # "end":I
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v0, :cond_5

    .line 7499
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 7500
    .restart local v6    # "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 7501
    if-le v1, v6, :cond_4

    move v1, v6

    .line 7502
    :cond_4
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 7503
    if-le v2, v6, :cond_5

    move v2, v6

    .line 7506
    .end local v6    # "N":I
    :cond_5
    invoke-static {v4, v1, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 7507
    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7508
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 7510
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_0

    .line 7514
    :cond_6
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 7527
    .end local v2    # "end":I
    .restart local v6    # "N":I
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_7
    if-le v1, v6, :cond_1

    move v1, v6

    goto :goto_1

    .line 7530
    .restart local v2    # "end":I
    :cond_8
    if-le v2, v6, :cond_2

    move v2, v6

    goto :goto_2

    .line 7537
    :cond_9
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .prologue
    .line 7545
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    .line 7546
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 7551
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 7552
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 7553
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 5731
    if-nez p1, :cond_0

    .line 5732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5735
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 5737
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 5738
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 5740
    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3512
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3513
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 3515
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3516
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3517
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3518
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3521
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5708
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 5710
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    .line 5712
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 5714
    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4765
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4766
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    .prologue
    const v4, 0x800007

    .line 4040
    and-int v0, p1, v4

    if-nez v0, :cond_0

    .line 4041
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 4043
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 4044
    or-int/lit8 p1, p1, 0x30

    .line 4047
    :cond_1
    const/4 v7, 0x0

    .line 4049
    .local v7, "newLayout":Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    .line 4051
    const/4 v7, 0x1

    .line 4054
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 4055
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4058
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 4060
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 4062
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 4063
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .line 4065
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 4069
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    .line 4063
    .restart local v1    # "want":I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHCTLetterSpacing()V
    .locals 2

    .prologue
    const v1, 0x3d75c28f    # 0.06f

    .line 14197
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->backupLetterSpacing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14199
    iget v0, p0, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 14200
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 14201
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 14202
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 14203
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 14204
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 14208
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4281
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4282
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4284
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4285
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4286
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3639
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 3640
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 3641
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3643
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5160
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 5161
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    .line 5163
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 5164
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5132
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 5134
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 5135
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    .line 5138
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 5139
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 5142
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 5143
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5147
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 5148
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 5150
    :cond_3
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3946
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3947
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3948
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3961
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3962
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3963
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    .prologue
    .line 4114
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    .line 4115
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 4117
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 4118
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4119
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4120
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4123
    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .prologue
    .line 3480
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 3481
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3482
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3483
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3484
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3486
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    .line 5467
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5468
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5469
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 5470
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 5471
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 5440
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5441
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5442
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 5443
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    .prologue
    .line 8022
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 8023
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 8025
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8026
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8027
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8028
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8031
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5629
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5630
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 5631
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5632
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5633
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 5634
    return-void
.end method

.method public setInputType(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5244
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 5245
    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 5246
    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 5247
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 5248
    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 5249
    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    .line 5250
    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_7

    .line 5251
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 5268
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    .line 5272
    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    .line 5275
    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 5278
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 5279
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 5283
    :cond_4
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5284
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    .line 5287
    :cond_5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 5288
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5289
    :cond_6
    return-void

    .line 5254
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_7
    if-eqz v3, :cond_8

    .line 5255
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 5256
    const/4 v0, 0x1

    goto :goto_0

    .line 5260
    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    .line 5262
    :cond_9
    const/4 v9, 0x0

    invoke-direct {p0, v9, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 5263
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 5264
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    .line 5268
    goto :goto_1
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 2134
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 2135
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 2137
    if-eqz p1, :cond_2

    .line 2138
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2140
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 2151
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2152
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2153
    :cond_1
    return-void

    .line 2141
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .line 2148
    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v1, 0x3d75c28f    # 0.06f

    .line 3413
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3415
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 3416
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mBackuppedLetterSpacing:F

    .line 3417
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 3424
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3425
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3426
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3427
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3430
    :cond_0
    return-void

    .line 3420
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_0
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 4444
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 4445
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 4446
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 4448
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 4449
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4450
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4451
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4454
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4262
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4263
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4265
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4266
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4267
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3999
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 4000
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 4001
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 4014
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 4015
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 4016
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3904
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 3905
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    .prologue
    .line 9026
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 9027
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4349
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4350
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4352
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4353
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4354
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4233
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4234
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4236
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4237
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4238
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4204
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4205
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4207
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4208
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4209
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4376
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4377
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4379
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4380
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4381
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4295
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 4296
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 4298
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4299
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4300
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4176
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 4177
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 4179
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4180
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4181
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4148
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 4149
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 4151
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4152
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4153
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4322
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 4323
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 4325
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4326
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4327
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    .line 2190
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 2192
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 2193
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 2200
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 2202
    :cond_1
    return-void
.end method

.method public setMyanmarEncoding(I)V
    .locals 2
    .param p1, "myanmarEncoding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3561
    packed-switch p1, :pswitch_data_0

    .line 3570
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    .line 3573
    :goto_0
    return-void

    .line 3563
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    goto :goto_0

    .line 3566
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    goto :goto_0

    .line 3561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V
    .locals 1
    .param p1, "myanmarEncoding"    # Landroid/graphics/Paint$MyanmarEncoding;

    .prologue
    .line 3542
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3543
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    .line 3545
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3546
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3547
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3548
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3551
    :cond_0
    return-void
.end method

.method public setNewActionPopupMenu(IZ)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 13689
    packed-switch p1, :pswitch_data_0

    .line 13703
    :pswitch_0
    const-string v0, "TextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnSupported menuID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13706
    :goto_0
    return-void

    .line 13691
    :pswitch_1
    iput-boolean p2, p0, Landroid/widget/TextView;->mEnableClipboard:Z

    goto :goto_0

    .line 13694
    :pswitch_2
    iput-boolean p2, p0, Landroid/widget/TextView;->mEnableShare:Z

    goto :goto_0

    .line 13697
    :pswitch_3
    iput-boolean p2, p0, Landroid/widget/TextView;->mEnableWebSearch:Z

    goto :goto_0

    .line 13700
    :pswitch_4
    iput-boolean p2, p0, Landroid/widget/TextView;->mEnableDictionary:Z

    goto :goto_0

    .line 13689
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setOnDragResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 11438
    iput-boolean p1, p0, Landroid/widget/TextView;->mOnDragResult:Z

    .line 11439
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 5504
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5505
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5506
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 5507
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3058
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 3062
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3066
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 3067
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3068
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3072
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 3076
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3080
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 3081
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3082
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4096
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4097
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 4099
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 4100
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4101
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4102
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4105
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 5601
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5602
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5603
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 5604
    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 5336
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 5344
    :cond_0
    :goto_0
    return-void

    .line 5337
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5338
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    .line 5341
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5342
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    goto :goto_0
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    .prologue
    .line 10025
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 10026
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 9061
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9062
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 9064
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 9065
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 9067
    :cond_0
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 9610
    if-ne v0, p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9611
    return-void

    .line 9610
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 9615
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 9617
    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 9619
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 9620
    if-eqz p1, :cond_1

    .line 9621
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 9626
    :cond_0
    :goto_0
    return-void

    .line 9623
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 3693
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 3695
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 3696
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 3697
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 3698
    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    .line 3701
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 3702
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3703
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3663
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3664
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 3665
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 8880
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 8881
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 8917
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 8918
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 8919
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 11586
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 11587
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    .line 4794
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 4795
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4796
    return-void
.end method

.method public setStrikeAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 6766
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    .line 6767
    return-void
.end method

.method public final setStringName(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 5118
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 5119
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    .line 5121
    :cond_0
    return-void
.end method

.method public final setStringName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5106
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 5107
    iget-boolean v1, p0, Landroid/widget/TextView;->fromResLock:Z

    if-nez v1, :cond_0

    .line 5108
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5109
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    .line 5112
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5089
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 5090
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    .line 5092
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5093
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 5096
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 5097
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    .line 5099
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5100
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4811
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4812
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 4836
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4838
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 4839
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$202(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 4841
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 5038
    const/4 v0, 0x0

    .line 5040
    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 5041
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5049
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 5050
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5051
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 5056
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 5057
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 5062
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 5063
    return-void

    .line 5053
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 5059
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 3108
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3109
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3119
    sget-object v15, Landroid/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3121
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 3123
    .local v10, "textColorHighlight":I
    if-eqz v10, :cond_0

    .line 3124
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 3127
    :cond_0
    const/4 v15, 0x3

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 3128
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_1

    .line 3129
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3132
    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 3133
    .local v13, "textSize":I
    if-eqz v13, :cond_2

    .line 3134
    int-to-float v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 3137
    :cond_2
    const/4 v15, 0x5

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 3139
    .local v11, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_3

    .line 3140
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 3143
    :cond_3
    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 3145
    .local v12, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4

    .line 3146
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 3149
    :cond_4
    const/16 v15, 0xc

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3150
    .local v4, "fontFamily":Ljava/lang/String;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 3151
    .local v14, "typefaceIndex":I
    const/4 v15, 0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 3152
    .local v7, "styleIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 3154
    const/4 v15, 0x7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 3155
    .local v6, "shadowColor":I
    if-eqz v6, :cond_5

    .line 3156
    const/16 v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 3157
    .local v2, "dx":F
    const/16 v15, 0x9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 3158
    .local v3, "dy":F
    const/16 v15, 0xa

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 3159
    .local v5, "r":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 3162
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "r":F
    :cond_5
    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3163
    new-instance v15, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3166
    :cond_6
    const/16 v15, 0xd

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 3167
    const/16 v15, 0xd

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 3171
    :cond_7
    const/16 v15, 0xe

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 3172
    const/16 v15, 0xe

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 3176
    :cond_8
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 3177
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 3181
    :cond_9
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3182
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3587
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3588
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3589
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3602
    if-nez p1, :cond_0

    .line 3603
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3606
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3607
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3608
    return-void
.end method

.method public setTextEffectOpacity(F)V
    .locals 1
    .param p1, "blendingOpacity"    # F

    .prologue
    .line 3806
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextEffectOpacity(F)V

    .line 3807
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    .prologue
    .line 6276
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 6307
    :cond_0
    :goto_0
    return-void

    .line 6278
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6279
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eq v0, p1, :cond_0

    .line 6294
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 6295
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 6296
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 6297
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 6298
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 6302
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6303
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6306
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0

    .line 6302
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 6303
    :cond_3
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_2
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4824
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4825
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    .line 5072
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 5073
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5074
    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5076
    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5078
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 5079
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 5080
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5085
    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 3202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    .line 3203
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 3204
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3327
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 3329
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3331
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3332
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3333
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3334
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3337
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3275
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3276
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 3288
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3291
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 3292
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3296
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 3298
    return-void

    .line 3294
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .prologue
    const/4 v2, 0x0

    .line 2236
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_1

    .line 2263
    :cond_0
    :goto_0
    return-void

    .line 2241
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_2

    .line 2242
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 2243
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2247
    :cond_2
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 2249
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 2250
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 2251
    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 2252
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 2257
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2260
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_3
    move v1, v2

    .line 2251
    goto :goto_1

    .line 2254
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 3353
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3354
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3356
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3357
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3358
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3359
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3362
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 7
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1955
    if-lez p2, :cond_4

    .line 1956
    if-nez p1, :cond_1

    .line 1957
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1962
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1964
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 1965
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 1966
    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1967
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1977
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 1959
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1964
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 1967
    goto :goto_2

    .line 1969
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    if-eqz p1, :cond_5

    .line 1970
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTypeface with style : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1973
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1974
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1975
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2093
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWBPositionListenerEnalbed(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 13835
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 13836
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setWBPositionListenerEnalbed(Z)V

    .line 13838
    :cond_0
    return-void
.end method

.method public setWBTextBuffer(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 13788
    iput-object p1, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13789
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4429
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4430
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4432
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4433
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4434
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    const/4 v7, 0x1

    .line 9371
    const/4 v4, 0x0

    .line 9372
    .local v4, "selChanged":Z
    const/4 v3, -0x1

    .local v3, "newSelStart":I
    const/4 v2, -0x1

    .line 9374
    .local v2, "newSelEnd":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v5, :cond_14

    const/4 v1, 0x0

    .line 9408
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_1

    .line 9409
    const/4 v4, 0x1

    .line 9410
    move v2, p4

    .line 9412
    if-gez p3, :cond_0

    if-ltz p4, :cond_1

    .line 9413
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 9414
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 9415
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 9416
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->makeBlink()V

    .line 9420
    :cond_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_3

    .line 9421
    const/4 v4, 0x1

    .line 9422
    move v3, p4

    .line 9424
    if-gez p3, :cond_2

    if-ltz p4, :cond_3

    .line 9425
    :cond_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 9426
    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 9430
    .end local v0    # "end":I
    :cond_3
    if-eqz v4, :cond_7

    .line 9431
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9432
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v7, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 9434
    :cond_4
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_7

    .line 9435
    if-gez v3, :cond_5

    .line 9436
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 9438
    :cond_5
    if-gez v2, :cond_6

    .line 9439
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 9441
    :cond_6
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 9445
    :cond_7
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_b

    .line 9447
    :cond_8
    if-eqz v1, :cond_9

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_15

    .line 9448
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9449
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9450
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 9454
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_b

    .line 9455
    if-ltz p3, :cond_a

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 9456
    :cond_a
    if-ltz p4, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 9460
    :cond_b
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 9461
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9462
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 9463
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 9466
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 9467
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_16

    .line 9468
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 9475
    :cond_e
    :goto_2
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 9478
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 9479
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_17

    .line 9480
    if-ltz p3, :cond_10

    .line 9481
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 9482
    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9484
    :cond_f
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 9485
    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9488
    :cond_10
    if-ltz p4, :cond_12

    .line 9489
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 9490
    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9492
    :cond_11
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 9493
    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9505
    :cond_12
    :goto_3
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_13

    .line 9507
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    .line 9509
    :cond_13
    return-void

    .line 9374
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_14
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v5, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto/16 :goto_0

    .line 9452
    .restart local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_15
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_1

    .line 9470
    :cond_16
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_2

    .line 9500
    :cond_17
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_3
.end method

.method public startDrawStrikeAnimation()V
    .locals 1

    .prologue
    .line 6775
    iget-object v0, p0, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    if-eqz v0, :cond_0

    .line 6776
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mSkipDrawTextStrike:Z

    .line 6777
    iget-object v0, p0, Landroid/widget/TextView;->mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6779
    :cond_0
    return-void
.end method

.method public stopCursorBlink(Z)V
    .locals 1
    .param p1, "stop"    # Z

    .prologue
    .line 13825
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 13826
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->stopCursorBlink(Z)V

    .line 13828
    :cond_0
    return-void
.end method

.method protected stopTextActionMode()V
    .locals 1

    .prologue
    .line 11092
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 11093
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 11095
    :cond_0
    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10270
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10271
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 9320
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 9321
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 9323
    .local v0, "curs":I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 9324
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 9327
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 9329
    if-ltz v0, :cond_3

    .line 9330
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9331
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 9332
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 9334
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6144
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    .line 6145
    .local v4, "verified":Z
    if-nez v4, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_0

    .line 6146
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 6147
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-ne p1, v1, :cond_1

    .line 6148
    const/4 v4, 0x1

    .line 6152
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "verified":Z
    :cond_0
    return v4

    .line 6146
    .restart local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "verified":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 11560
    if-eqz p1, :cond_0

    .line 11561
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 11563
    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 8800
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 8804
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .line 8805
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 8806
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8808
    :cond_0
    return v0
.end method
