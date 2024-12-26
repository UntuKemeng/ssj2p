.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field static final ALPHA_TRANSITION_DURATION:I = 0xc8

.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field private static final DEBUG_ANIM:Z

.field private static final DEBUG_APP_TRANSITIONS:Z

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_SCALE_UP:I = 0x3e9

.field public static final NEXT_TRANSIT_TYPE_DUALSCREN_EXPAND:I = 0x9

.field public static final NEXT_TRANSIT_TYPE_DUALSCREN_SHRINK:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final NEXT_TRANSIT_TYPE_TRANSLATE:I = 0x3e8

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION_DOWN:I = 0xe9

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION_UP:I = 0xe9

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_STARTOFFSET_DOWN:I = 0xc8

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_DURATION2:I = 0x1b1

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_DUALSCREEN_EXPAND:I = 0xc9

.field public static final TRANSIT_DUALSCREEN_NONE:I = 0xc8

.field public static final TRANSIT_DUALSCREEN_SHRINK:I = 0xca

.field public static final TRANSIT_MULTIWINDOW_CLOSE:I = 0x66

.field public static final TRANSIT_MULTIWINDOW_NONE:I = 0x64

.field public static final TRANSIT_MULTIWINDOW_OPEN:I = 0x65

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_VIRTUAL_SCREEN_NONE:I = 0x12c

.field public static final TRANSIT_VIRTUAL_SCREEN_TASK:I = 0x12d

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field final mAlphaTransitionInterpolator:Landroid/view/animation/Interpolator;

.field private final mAppEnterExitScaleInterpolator:Landroid/view/animation/Interpolator;

.field private mAppTransitionState:I

.field private mAppliedAlphaInsteadOfScaleAnimation:Z

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDisplayId:I

.field private mEasyOneHandRunning:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field mNextAppTransitionRequester:Lcom/android/server/wm/AppWindowToken;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

.field private final mSineInOut60Interpolator:Landroid/view/animation/Interpolator;

.field private final mSineInOut70Interpolator:Landroid/view/animation/Interpolator;

.field private final mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

.field mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    sput-boolean v0, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    .line 109
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    sput-boolean v0, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v6, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 197
    iput v6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 218
    iput v5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 244
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 250
    iput v5, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 258
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 260
    new-instance v0, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

    .line 261
    new-instance v0, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    .line 262
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mSineInOut70Interpolator:Landroid/view/animation/Interpolator;

    .line 263
    new-instance v0, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mSineInOut60Interpolator:Landroid/view/animation/Interpolator;

    .line 264
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAppEnterExitScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 268
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 273
    iput v5, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 286
    iput v6, p0, Lcom/android/server/wm/AppTransition;->mDisplayId:I

    .line 290
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 292
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 294
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 298
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 301
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAlphaTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 305
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 317
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 328
    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mWindowManager:Landroid/view/WindowManager;

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1798
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1800
    :pswitch_0
    const-string v0, "APP_STATE_IDLE"

    goto :goto_0

    .line 1802
    :pswitch_1
    const-string v0, "APP_STATE_READY"

    goto :goto_0

    .line 1804
    :pswitch_2
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_0

    .line 1806
    :pswitch_3
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_0

    .line 1798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 1751
    packed-switch p0, :pswitch_data_0

    .line 1792
    :pswitch_0
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 1753
    :pswitch_1
    const-string v0, "TRANSIT_UNSET"

    goto :goto_0

    .line 1756
    :pswitch_2
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    .line 1759
    :pswitch_3
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_0

    .line 1762
    :pswitch_4
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_0

    .line 1765
    :pswitch_5
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_0

    .line 1768
    :pswitch_6
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_0

    .line 1771
    :pswitch_7
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_0

    .line 1774
    :pswitch_8
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_0

    .line 1777
    :pswitch_9
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_0

    .line 1780
    :pswitch_a
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_0

    .line 1783
    :pswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_0

    .line 1786
    :pswitch_c
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_0

    .line 1789
    :pswitch_d
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    goto :goto_0

    .line 1751
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 575
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 576
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 577
    int-to-float v1, p0

    .line 579
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 637
    if-eqz p2, :cond_1

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 641
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 643
    .local v9, "appHeight":I
    const/16 v18, 0x0

    .line 644
    .local v18, "t":F
    if-lez v9, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 647
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v23, 0x40e00000    # 7.0f

    div-float v22, v22, v23

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 650
    .local v20, "translationY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v11, v21, v22

    .line 651
    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v12, v21, v22

    .line 654
    .local v12, "centerY":I
    new-instance v13, Landroid/view/animation/ClipRectLRAnimation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x3

    sub-int v21, v11, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x3

    add-int v22, v22, v11

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v13, v0, v1, v2, v10}, Landroid/view/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 658
    .local v13, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 659
    const-wide/16 v22, 0x86

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 660
    new-instance v14, Landroid/view/animation/ClipRectTBAnimation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x3

    sub-int v21, v12, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x3

    add-int v22, v22, v12

    sub-int v22, v22, v20

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v14, v0, v1, v2, v9}, Landroid/view/animation/ClipRectTBAnimation;-><init>(IIII)V

    .line 664
    .local v14, "clipAnimTB":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 665
    const-wide/16 v22, 0x150

    move-wide/from16 v0, v22

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 667
    new-instance v19, Landroid/view/animation/TranslateYAnimation;

    const/16 v21, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 669
    .local v19, "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 670
    const-wide/16 v22, 0x150

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 673
    const/16 v7, 0x54

    .line 674
    .local v7, "alphaDuration":I
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 675
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v22, 0x54

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 678
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 679
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 680
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 681
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 682
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 683
    invoke-virtual {v15, v10, v9, v10, v9}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 684
    move-object v8, v15

    .line 712
    .end local v6    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "alphaDuration":I
    .end local v9    # "appHeight":I
    .end local v10    # "appWidth":I
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v13    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v14    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "t":F
    .end local v19    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .end local v20    # "translationY":I
    .local v8, "anim":Landroid/view/animation/Animation;
    :goto_0
    return-object v8

    .line 687
    .end local v8    # "anim":Landroid/view/animation/Animation;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 693
    const-wide/16 v16, 0x150

    .line 696
    .local v16, "duration":J
    :goto_1
    const/16 v21, 0xe

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    const/16 v21, 0xf

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 702
    :cond_2
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 703
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 708
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 709
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 710
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0

    .line 690
    .end local v8    # "anim":Landroid/view/animation/Animation;
    .end local v16    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 691
    .restart local v16    # "duration":J
    goto :goto_1

    .line 706
    :cond_3
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v8    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    .line 687
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createCustomScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 718
    const/4 v4, 0x0

    .line 719
    .local v4, "scale":Landroid/view/animation/Animation;
    const/4 v13, 0x0

    .line 720
    .local v13, "alpha":Landroid/view/animation/Animation;
    const/4 v14, 0x0

    .line 722
    .local v14, "set":Landroid/view/animation/AnimationSet;
    const-string v5, "2016B"

    sget-object v6, Lcom/android/server/wm/WindowManagerService;->mScafeVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 723
    if-eqz p2, :cond_0

    .line 724
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4    # "scale":Landroid/view/animation/Animation;
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 727
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mAppEnterExitScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 731
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    .end local v13    # "alpha":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 732
    .restart local v13    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 734
    const-wide/16 v6, 0x32

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 736
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 737
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 738
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 739
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 758
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 759
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 760
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    move-object v15, v14

    .line 798
    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .local v15, "set":Landroid/view/animation/AnimationSet;
    :goto_1
    return-object v15

    .line 741
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4    # "scale":Landroid/view/animation/Animation;
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 744
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mSineInOut60Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 748
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    .end local v13    # "alpha":Landroid/view/animation/Animation;
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 749
    .restart local v13    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mSineInOut60Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 753
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 754
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 755
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 756
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto/16 :goto_0

    .line 763
    :cond_1
    if-eqz p2, :cond_2

    .line 764
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4    # "scale":Landroid/view/animation/Animation;
    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f19999a    # 0.6f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 767
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 769
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    .end local v13    # "alpha":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 770
    .restart local v13    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 772
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 773
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 774
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 775
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 776
    const-wide/16 v6, 0x42

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 777
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 796
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 797
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    move-object v15, v14

    .line 798
    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .restart local v15    # "set":Landroid/view/animation/AnimationSet;
    goto/16 :goto_1

    .line 780
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4    # "scale":Landroid/view/animation/Animation;
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f866666    # 1.05f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f866666    # 1.05f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 782
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 784
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 786
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    .end local v13    # "alpha":Landroid/view/animation/Animation;
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 787
    .restart local v13    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 791
    new-instance v14, Landroid/view/animation/AnimationSet;

    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    const/4 v5, 0x0

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 792
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 793
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 794
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_2
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 584
    const/4 v11, 0x0

    .line 585
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 587
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 588
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 589
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 592
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 594
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 595
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 597
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v13, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 598
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 599
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 600
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 601
    move-object v11, v13

    .line 619
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 625
    const-wide/16 v14, 0x150

    .line 628
    .local v14, "duration":J
    :goto_1
    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 629
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 630
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 631
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 632
    return-object v11

    .line 602
    .end local v14    # "duration":J
    :cond_0
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 608
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 609
    .restart local v11    # "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 612
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 622
    :pswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v14, v6

    .line 623
    .restart local v14    # "duration":J
    goto :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createTransAnimation(ZII)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "enter"    # Z
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 1652
    const/4 v1, 0x0

    .line 1653
    .local v1, "trans":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1655
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 1678
    if-eqz p1, :cond_3

    .line 1679
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1685
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1687
    return-object v1

    .line 1657
    :pswitch_0
    if-eqz p1, :cond_0

    .line 1658
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    neg-float v2, v2

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1660
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    neg-float v2, v2

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1662
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1664
    :pswitch_1
    if-eqz p1, :cond_1

    .line 1665
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    neg-float v2, v2

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1667
    :cond_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    neg-float v2, v2

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1669
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1671
    :pswitch_2
    if-eqz p1, :cond_2

    .line 1672
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1674
    :cond_2
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1676
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1681
    :cond_3
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createTransAnimationLocked(ZII)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "enter"    # Z
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1619
    const/4 v0, 0x0

    .line 1620
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    .line 1621
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->createTransAnimation(ZII)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1623
    .local v3, "trans":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1624
    .local v1, "alpha":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1626
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1627
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1628
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1629
    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 1630
    move-object v0, v2

    .line 1644
    :goto_0
    const-wide/16 v4, 0x150

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1645
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1646
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1647
    invoke-virtual {v0, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1648
    return-object v0

    .line 1632
    .end local v1    # "alpha":Landroid/view/animation/Animation;
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    .end local v3    # "trans":Landroid/view/animation/Animation;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->createTransAnimation(ZII)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1634
    .restart local v3    # "trans":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1635
    .restart local v1    # "alpha":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1637
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1638
    .restart local v2    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1639
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1640
    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1641
    move-object v0, v2

    goto :goto_0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 485
    sget-boolean v2, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v2, :cond_0

    const-string v4, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading animations: layout params pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_4

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " resId=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    if-eqz p1, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_3

    .line 492
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 493
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 494
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_1

    .line 495
    const-string v0, "android"

    .line 497
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v2, :cond_2

    const-string v2, "AppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 502
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_3
    return-object v3

    :cond_4
    move-object v2, v3

    .line 485
    goto :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_1

    .line 492
    :cond_6
    const-string v0, "android"

    goto :goto_2
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 506
    sget-boolean v0, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    if-eqz p1, :cond_3

    .line 509
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    .line 510
    const-string p1, "android"

    .line 512
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDualScreenAppTransition(I)Z
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 1924
    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xca

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 551
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 553
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 554
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 555
    move v0, p2

    .line 558
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 559
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 561
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    .prologue
    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .prologue
    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1813
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1815
    :pswitch_0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_0

    .line 1817
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_0

    .line 1819
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    goto :goto_0

    .line 1821
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_0

    .line 1823
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_0

    .line 1825
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_0

    .line 1827
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_0

    .line 1829
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_0

    .line 1813
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public appliedAlphaAnimationInsteadOfScaleAnimation()V
    .locals 1

    .prologue
    .line 1956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mAppliedAlphaInsteadOfScaleAnimation:Z

    .line 1957
    return-void
.end method

.method canSkipFirstFrame()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1234
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkCocktailAppTransition(IZ)Z
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z

    .prologue
    .line 1707
    const/4 v0, 0x0

    return v0
.end method

.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 443
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 444
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 445
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .locals 22
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "transit"    # I
    .param p6, "containingFrame"    # Landroid/graphics/Rect;
    .param p7, "contentInsets"    # Landroid/graphics/Rect;
    .param p8, "isFixedOrientation"    # Z
    .param p9, "rotation"    # I

    .prologue
    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v18, v0

    .line 946
    .local v18, "thumbWidthI":I
    if-lez v18, :cond_0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 947
    .local v17, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v16, v0

    .line 948
    .local v16, "thumbHeightI":I
    if-lez v16, :cond_1

    move/from16 v0, v16

    int-to-float v15, v0

    .line 951
    .local v15, "thumbHeight":F
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 952
    .local v2, "scale":F
    const/4 v13, 0x0

    .line 955
    .local v13, "scaledTopDecor":I
    const/4 v11, 0x0

    .line 956
    .local v11, "clipRectAdjustPivotX":I
    const/4 v12, 0x0

    .line 959
    .local v12, "clipRectAdjustPivotY":I
    packed-switch p1, :pswitch_data_0

    .line 1103
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Invalid thumbnail transition state"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 946
    .end local v2    # "scale":F
    .end local v11    # "clipRectAdjustPivotX":I
    .end local v12    # "clipRectAdjustPivotY":I
    .end local v13    # "scaledTopDecor":I
    .end local v15    # "thumbHeight":F
    .end local v16    # "thumbHeightI":I
    .end local v17    # "thumbWidth":F
    :cond_0
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_0

    .line 948
    .restart local v16    # "thumbHeightI":I
    .restart local v17    # "thumbWidth":F
    :cond_1
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1

    .line 962
    .restart local v2    # "scale":F
    .restart local v11    # "clipRectAdjustPivotX":I
    .restart local v12    # "clipRectAdjustPivotY":I
    .restart local v13    # "scaledTopDecor":I
    .restart local v15    # "thumbHeight":F
    :pswitch_0
    const/16 v21, 0x0

    .line 963
    .local v21, "unscaledThumbWidth":I
    const/16 v20, 0x0

    .line 964
    .local v20, "unscaledThumbHeight":I
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 966
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v17, v3

    .line 967
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 968
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 972
    if-eqz p8, :cond_2

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 978
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v20

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 991
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 996
    if-eqz p8, :cond_3

    .line 997
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_6

    .line 998
    sub-int v3, p3, v20

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v12, v3

    .line 1005
    :cond_3
    :goto_3
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    sub-int/2addr v6, v11

    invoke-static {v6, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    sub-int/2addr v9, v12

    invoke-static {v9, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    move v4, v2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1008
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1009
    .local v10, "clipAnim":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-int v6, v13

    int-to-float v6, v6

    const/4 v9, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v5, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1011
    .local v19, "translateAnim":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1012
    .local v14, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1013
    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1014
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1015
    move-object v4, v14

    .line 1106
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .end local v19    # "translateAnim":Landroid/view/animation/Animation;
    .end local v20    # "unscaledThumbHeight":I
    .end local v21    # "unscaledThumbWidth":I
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_4
    const/16 v3, 0x150

    const/16 v5, 0x150

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1109
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_4

    .line 1110
    const/16 v3, 0x1b1

    const/16 v5, 0xe9

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v5, 0x1b1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1116
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    :goto_5
    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    .line 1119
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 982
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v7    # "duration":I
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v20    # "unscaledThumbHeight":I
    .restart local v21    # "unscaledThumbWidth":I
    :cond_5
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v15, v3

    .line 983
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 984
    div-float v3, v17, v2

    float-to-int v0, v3

    move/from16 v21, v0

    .line 985
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v21

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 999
    :cond_6
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_3

    .line 1000
    sub-int v3, p2, v21

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    goto/16 :goto_3

    .line 1020
    .end local v20    # "unscaledThumbHeight":I
    .end local v21    # "unscaledThumbWidth":I
    :pswitch_1
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_7

    .line 1023
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4

    .line 1025
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_7
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1027
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4

    .line 1031
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_8

    .line 1034
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4

    .line 1036
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_8
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1038
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4

    .line 1041
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    const/16 v21, 0x0

    .line 1042
    .restart local v21    # "unscaledThumbWidth":I
    const/16 v20, 0x0

    .line 1044
    .restart local v20    # "unscaledThumbHeight":I
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_b

    .line 1046
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v17, v3

    .line 1047
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 1048
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 1049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1053
    if-eqz p8, :cond_9

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 1059
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v20

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1072
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 1074
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1077
    if-eqz p8, :cond_a

    .line 1078
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_c

    .line 1079
    sub-int v3, p3, v20

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v12, v3

    .line 1086
    :cond_a
    :goto_7
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    sub-int/2addr v3, v11

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    sub-int/2addr v3, v12

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, v1

    move v5, v2

    move v7, v2

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1090
    .restart local v1    # "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1091
    .restart local v10    # "clipAnim":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-int v9, v13

    int-to-float v9, v9

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v5, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1093
    .restart local v19    # "translateAnim":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1094
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1095
    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1096
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1098
    move-object v4, v14

    .line 1099
    .restart local v4    # "a":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_4

    .line 1063
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .end local v19    # "translateAnim":Landroid/view/animation/Animation;
    :cond_b
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v15, v3

    .line 1064
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 1065
    div-float v3, v17, v2

    float-to-int v0, v3

    move/from16 v21, v0

    .line 1066
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v21

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    .line 1080
    :cond_c
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_a

    .line 1081
    sub-int v3, p2, v21

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    goto/16 :goto_7

    .line 1116
    .end local v20    # "unscaledThumbHeight":I
    .end local v21    # "unscaledThumbWidth":I
    .restart local v4    # "a":Landroid/view/animation/Animation;
    .restart local v7    # "duration":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_5

    .line 959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 24
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "transit"    # I

    .prologue
    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 866
    .local v19, "thumbWidthI":I
    if-lez v19, :cond_0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .line 867
    .local v18, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 868
    .local v17, "thumbHeightI":I
    if-lez v17, :cond_1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 870
    .local v16, "thumbHeight":F
    :goto_1
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v4, v3, v18

    .line 871
    .local v4, "scaleW":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v23, v0

    .line 872
    .local v23, "unscaledWidth":F
    mul-float v21, v16, v4

    .line 873
    .local v21, "unscaledHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v0, v3

    move/from16 v22, v0

    .line 875
    .local v22, "unscaledStartY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_2

    const/16 v13, 0x150

    .line 877
    .local v13, "duration":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_3

    const/16 v12, 0x150

    .line 882
    .local v12, "alphaduration":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 886
    .local v14, "scaleTranslateInterpolator":Landroid/view/animation/Interpolator;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_6

    .line 888
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v18, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v16, v9

    add-float/2addr v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 891
    .local v2, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v2, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 892
    int-to-long v8, v13

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 893
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 894
    .local v11, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 895
    int-to-long v8, v12

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 896
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v22

    neg-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 898
    .local v20, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 899
    int-to-long v8, v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 902
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 903
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 904
    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 905
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 906
    move-object v6, v15

    .line 933
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 866
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "scaleW":F
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "alphaduration":I
    .end local v13    # "duration":I
    .end local v14    # "scaleTranslateInterpolator":Landroid/view/animation/Interpolator;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v16    # "thumbHeight":F
    .end local v17    # "thumbHeightI":I
    .end local v18    # "thumbWidth":F
    .end local v20    # "translate":Landroid/view/animation/Animation;
    .end local v21    # "unscaledHeight":F
    .end local v22    # "unscaledStartY":F
    .end local v23    # "unscaledWidth":F
    :cond_0
    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 868
    .restart local v17    # "thumbHeightI":I
    .restart local v18    # "thumbWidth":F
    :cond_1
    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 875
    .restart local v4    # "scaleW":F
    .restart local v16    # "thumbHeight":F
    .restart local v21    # "unscaledHeight":F
    .restart local v22    # "unscaledStartY":F
    .restart local v23    # "unscaledWidth":F
    :cond_2
    const/16 v13, 0x1b1

    goto/16 :goto_2

    .line 877
    .restart local v13    # "duration":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_4

    const/16 v12, 0xe9

    goto/16 :goto_3

    :cond_4
    const/16 v12, 0xe9

    goto/16 :goto_3

    .line 882
    .restart local v12    # "alphaduration":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/AppTransition;->mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_4

    .line 909
    .restart local v14    # "scaleTranslateInterpolator":Landroid/view/animation/Interpolator;
    :cond_6
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v18, v8

    add-float/2addr v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v16, v9

    add-float/2addr v9, v3

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 912
    .restart local v2    # "scale":Landroid/view/animation/Animation;
    invoke-virtual {v2, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 913
    int-to-long v8, v13

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 914
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 915
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 916
    int-to-long v8, v12

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_7

    .line 918
    const-wide/16 v8, 0xc8

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 920
    :cond_7
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v22

    neg-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 922
    .restart local v20    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 923
    int-to-long v8, v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 926
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 927
    .restart local v15    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 928
    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 929
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 930
    move-object v6, v15

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_5
.end method

.method createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 1170
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1171
    .local v20, "thumbWidthI":I
    if-lez v20, :cond_0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1172
    .local v19, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1173
    .local v18, "thumbHeightI":I
    if-lez v18, :cond_1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1175
    .local v17, "thumbHeight":F
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1222
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "Invalid thumbnail transition state"

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1171
    .end local v17    # "thumbHeight":F
    .end local v18    # "thumbHeightI":I
    .end local v19    # "thumbWidth":F
    :cond_0
    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1173
    .restart local v18    # "thumbHeightI":I
    .restart local v19    # "thumbWidth":F
    :cond_1
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1178
    .restart local v17    # "thumbHeight":F
    :pswitch_0
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 1179
    .local v5, "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 1180
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1225
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    .line 1187
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v6, 0xe

    move/from16 v0, p4

    if-ne v0, v6, :cond_2

    .line 1191
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1194
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1196
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1201
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1202
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1206
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 1207
    .restart local v5    # "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 1208
    .restart local v7    # "scaleH":F
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v6, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move v10, v5

    move v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1212
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v15, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1214
    .local v15, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1215
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1216
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1217
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1218
    move-object/from16 v4, v16

    .line 1219
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(III)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I

    .prologue
    .line 1129
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1130
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1131
    .local v16, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 1132
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    int-to-float v14, v15

    .line 1134
    .local v14, "thumbHeight":F
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_2

    .line 1136
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1137
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1138
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1141
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1143
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1144
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1147
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1148
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1150
    move-object v5, v13

    .line 1160
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 1130
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v15    # "thumbHeightI":I
    .end local v16    # "thumbWidth":F
    :cond_0
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1132
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1153
    .restart local v14    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1154
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1155
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1837
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1838
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 1840
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1894
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 1895
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1899
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_2

    .line 1900
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback2="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1904
    :cond_2
    return-void

    .line 1845
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1846
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1848
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1849
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1853
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1859
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1861
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1862
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1863
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1864
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1865
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1866
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_0

    .line 1872
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1874
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1875
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1876
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1877
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1878
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1879
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1880
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1881
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1882
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1883
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 1843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 450
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 451
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    .line 452
    return-void
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getDisplayid()I
    .locals 1

    .prologue
    .line 1916
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mDisplayId:I

    return v0
.end method

.method public getDualScreenAppTransition()I
    .locals 2

    .prologue
    .line 1945
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1946
    const/16 v0, 0xc9

    .line 1950
    :goto_0
    return v0

    .line 1947
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1948
    const/16 v0, 0xca

    goto :goto_0

    .line 1950
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingX()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    return v0
.end method

.method getStartingY()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .prologue
    .line 843
    if-eqz p1, :cond_1

    .line 844
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 853
    :goto_0
    return v0

    .line 847
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 850
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 851
    const/4 v0, 0x1

    goto :goto_0

    .line 853
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;)V
    .locals 4
    .param p1, "openingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "closingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;

    .prologue
    const/4 v0, 0x0

    .line 429
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 430
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 432
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mAppliedAlphaInsteadOfScaleAnimation:Z

    .line 434
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v2, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :goto_2
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :cond_0
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 439
    return-void

    :cond_1
    move-object v3, v0

    .line 434
    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2
.end method

.method public isAlphaAnimationAppliedInsteadOfScaleAnimation()Z
    .locals 1

    .prologue
    .line 1960
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mAppliedAlphaInsteadOfScaleAnimation:Z

    return v0
.end method

.method public isDualScreenAppTransitionType()Z
    .locals 2

    .prologue
    .line 1941
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIdle()Z
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMultiWindowTransitionSet()Z
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    packed-switch v0, :pswitch_data_0

    .line 347
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 345
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 368
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 356
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZI)Landroid/view/animation/Animation;
    .locals 18
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "appFrame"    # Landroid/graphics/Rect;
    .param p10, "isFullScreen"    # Z
    .param p11, "isVoiceInteraction"    # Z
    .param p12, "isFixedOrientation"    # Z
    .param p13, "rotation"    # I

    .prologue
    .line 1250
    const/4 v15, 0x0

    .line 1269
    .local v15, "a":Landroid/view/animation/Animation;
    if-eqz p11, :cond_4

    const/4 v5, 0x6

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    const/16 v5, 0xa

    move/from16 v0, p2

    if-ne v0, v5, :cond_4

    .line 1272
    :cond_0
    if-eqz p3, :cond_3

    const v5, 0x10a00c5

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1275
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move-object v5, v15

    .line 1462
    :goto_2
    return-object v5

    .line 1272
    :cond_3
    const v5, 0x10a00c6

    goto :goto_0

    .line 1279
    :cond_4
    if-eqz p11, :cond_8

    const/4 v5, 0x7

    move/from16 v0, p2

    if-eq v0, v5, :cond_5

    const/16 v5, 0x9

    move/from16 v0, p2

    if-eq v0, v5, :cond_5

    const/16 v5, 0xb

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    .line 1282
    :cond_5
    if-eqz p3, :cond_7

    const v5, 0x10a00c3

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1285
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    :cond_6
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1282
    :cond_7
    const v5, 0x10a00c4

    goto :goto_3

    .line 1289
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 1290
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_a

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1292
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    :cond_9
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1290
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_4

    .line 1297
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_d

    .line 1298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1299
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_c

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    :cond_c
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CUSTOM_IN_PLACE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1304
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    .line 1305
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1306
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_e

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    :cond_e
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CLIP_REVEAL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1312
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->checkCocktailAppTransition(IZ)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1313
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createTransAnimationLocked(ZII)Landroid/view/animation/Animation;

    move-result-object v15

    goto/16 :goto_1

    .line 1316
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 1317
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1318
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_11

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    :cond_11
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1325
    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_13

    .line 1326
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCustomScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v15

    goto/16 :goto_1

    .line 1329
    :cond_13
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_18

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mEasyOneHandRunning:Z

    if-nez v5, :cond_18

    .line 1331
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1333
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p2

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1335
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_15

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    .line 1336
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_17

    const-string v17, "ANIM_THUMBNAIL_SCALE_UP"

    .line 1338
    .local v17, "animName":Ljava/lang/String;
    :goto_6
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1331
    .end local v17    # "animName":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x0

    goto :goto_5

    .line 1336
    :cond_17
    const-string v17, "ANIM_THUMBNAIL_SCALE_DOWN"

    goto :goto_6

    .line 1343
    :cond_18
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_19

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1d

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mEasyOneHandRunning:Z

    if-nez v5, :cond_1d

    .line 1345
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1347
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1350
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_1a

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    .line 1351
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_1c

    const-string v17, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    .line 1353
    .restart local v17    # "animName":Ljava/lang/String;
    :goto_8
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1345
    .end local v17    # "animName":Ljava/lang/String;
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 1351
    :cond_1c
    const-string v17, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_8

    .line 1370
    :cond_1d
    const/16 v16, 0x0

    .line 1371
    .local v16, "animAttr":I
    packed-switch p2, :pswitch_data_0

    .line 1446
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mEasyOneHandRunning:Z

    if-eqz v5, :cond_1e

    .line 1447
    packed-switch p2, :pswitch_data_1

    .line 1454
    :cond_1e
    if-eqz v16, :cond_2b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1455
    :goto_a
    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_1f

    sget-boolean v5, Lcom/android/server/wm/AppTransition;->DEBUG_ANIM:Z

    if-eqz v5, :cond_2

    :cond_1f
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animAttr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1373
    :pswitch_0
    if-eqz p3, :cond_20

    const/16 v16, 0x4

    .line 1376
    :goto_b
    goto :goto_9

    .line 1373
    :cond_20
    const/16 v16, 0x5

    goto :goto_b

    .line 1378
    :pswitch_1
    if-eqz p3, :cond_21

    const/16 v16, 0x6

    .line 1381
    :goto_c
    goto :goto_9

    .line 1378
    :cond_21
    const/16 v16, 0x7

    goto :goto_c

    .line 1383
    :pswitch_2
    if-eqz p3, :cond_22

    const/16 v16, 0x8

    .line 1386
    :goto_d
    goto/16 :goto_9

    .line 1383
    :cond_22
    const/16 v16, 0x9

    goto :goto_d

    .line 1388
    :pswitch_3
    if-eqz p3, :cond_23

    const/16 v16, 0xa

    .line 1391
    :goto_e
    goto/16 :goto_9

    .line 1388
    :cond_23
    const/16 v16, 0xb

    goto :goto_e

    .line 1393
    :pswitch_4
    if-eqz p3, :cond_24

    const/16 v16, 0xc

    .line 1396
    :goto_f
    goto/16 :goto_9

    .line 1393
    :cond_24
    const/16 v16, 0xd

    goto :goto_f

    .line 1398
    :pswitch_5
    if-eqz p3, :cond_25

    const/16 v16, 0xe

    .line 1401
    :goto_10
    goto/16 :goto_9

    .line 1398
    :cond_25
    const/16 v16, 0xf

    goto :goto_10

    .line 1403
    :pswitch_6
    if-eqz p3, :cond_26

    const/16 v16, 0x10

    .line 1406
    :goto_11
    goto/16 :goto_9

    .line 1403
    :cond_26
    const/16 v16, 0x11

    goto :goto_11

    .line 1408
    :pswitch_7
    if-eqz p3, :cond_27

    const/16 v16, 0x12

    .line 1411
    :goto_12
    goto/16 :goto_9

    .line 1408
    :cond_27
    const/16 v16, 0x13

    goto :goto_12

    .line 1413
    :pswitch_8
    if-eqz p3, :cond_28

    const/16 v16, 0x14

    .line 1416
    :goto_13
    goto/16 :goto_9

    .line 1413
    :cond_28
    const/16 v16, 0x15

    goto :goto_13

    .line 1418
    :pswitch_9
    if-eqz p3, :cond_29

    const/16 v16, 0x16

    .line 1421
    :goto_14
    goto/16 :goto_9

    .line 1418
    :cond_29
    const/16 v16, 0x17

    goto :goto_14

    .line 1423
    :pswitch_a
    if-eqz p3, :cond_2a

    const/16 v16, 0x19

    :goto_15
    goto/16 :goto_9

    :cond_2a
    const/16 v16, 0x18

    goto :goto_15

    .line 1449
    :pswitch_b
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1454
    :cond_2b
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1447
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_b
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 523
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 524
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 525
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 526
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 527
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 530
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 531
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 533
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 538
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 540
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 541
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 543
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 545
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1603
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1604
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1608
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overrideNextAppTransition(ILcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "transitType"    # I
    .param p2, "requester"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v1, 0x0

    .line 1929
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1930
    :cond_0
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1931
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequester:Lcom/android/server/wm/AppWindowToken;

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1933
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1935
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1938
    :cond_1
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1482
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 1483
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "transitCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1488
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1490
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1492
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1493
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1495
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1497
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1502
    :goto_0
    return-void

    .line 1500
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "transitCallback"    # Landroid/os/IRemoteCallback;
    .param p8, "scaleUp"    # Z

    .prologue
    .line 1580
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1581
    if-eqz p8, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1584
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1585
    iput-boolean p8, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1586
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1587
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1588
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1589
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1590
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1591
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1593
    iput-object p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1598
    :goto_1
    return-void

    .line 1581
    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    .line 1596
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1524
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1526
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1527
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1528
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1529
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1530
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1531
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1533
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1536
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionCustomScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1543
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1544
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1545
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1546
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1547
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1548
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1550
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1552
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1508
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1509
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1510
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1511
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1512
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1513
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1515
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1517
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1520
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "transitCallback"    # Landroid/os/IRemoteCallback;
    .param p6, "scaleUp"    # Z

    .prologue
    .line 1559
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1560
    if-eqz p6, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1563
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1564
    iput-boolean p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1565
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1566
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1567
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1568
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1570
    iput-object p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1575
    :goto_1
    return-void

    .line 1560
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1573
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method overridePendingAppTransitionTranslate()V
    .locals 1

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1616
    :cond_0
    return-void
.end method

.method postAnimationCallback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1469
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 1470
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1472
    .local v0, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1473
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1475
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1477
    .end local v0    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    :cond_1
    return-void
.end method

.method prepare()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 422
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 423
    const/4 v0, 0x1

    .line 425
    :cond_0
    return v0
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 826
    packed-switch p4, :pswitch_data_0

    .line 832
    const/16 v4, 0x150

    .line 835
    .local v4, "duration":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 829
    .end local v4    # "duration":I
    :pswitch_0
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 830
    .restart local v4    # "duration":I
    goto :goto_0

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 809
    if-lez p4, :cond_0

    .line 810
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 812
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 813
    invoke-virtual {p1, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 814
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 815
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 365
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1907
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 1908
    return-void
.end method

.method setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1912
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mDisplayId:I

    .line 1913
    return-void
.end method

.method setEasyOneHandRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 1241
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mEasyOneHandRunning:Z

    .line 1242
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 386
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 378
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 394
    return-void
.end method

.method setWindowAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .param p1, "windowAnimator"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 1920
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1921
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
