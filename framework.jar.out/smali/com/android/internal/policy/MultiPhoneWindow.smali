.class public Lcom/android/internal/policy/MultiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    }
.end annotation


# static fields
.field private static final ACTION_FLOATING_MINIMIZED:Ljava/lang/String; = "com.samsung.android.intent.action.ACTION_FLOATING_MINIMIZED"

.field private static final ANIMATION_DURATION_FAST:I = 0xfa

.field private static final ANIMATION_DURATION_SLOW:I = 0x14d

.field private static final CIRCLE_ANIM_OFFSET:J = 0x5L

.field static final DEBUG:Z

.field static final DEBUG_FLOATING_BGCOLOR:Z

.field static final DEBUG_FLOATING_CYCLE:Z

.field static final DEBUG_FLOATING_SIZE:Z

.field static final DEBUG_GUIDEVIEW:Z = false

.field public static final DEBUG_MINIMIZE_ANIM:Z

.field static final DEBUG_ORIENTATION:Z

.field static final DEBUG_RESIZE_VISUAL_CUE:Z

.field static final DEBUG_TAB:Z

.field static final LOGGING_REASON_DOCKING:I = 0x1

.field static final STATE_FLOATING:I = 0x2

.field static final STATE_MINIMIZED_FLOATING:I = 0x4

.field static final STATE_NONE:I = -0x1

.field static final STATE_NORMAL:I = 0x1

.field static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final NOT_SET:I

.field protected final TEMP_TOAST_HEIGHT:I

.field private badgeIcon:Landroid/graphics/drawable/Drawable;

.field mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBorder:Lcom/android/internal/policy/multiwindow/Border;

.field mContentLayoutGenerated:Z

.field mContentRootContainer:Landroid/view/ViewGroup;

.field mContext:Landroid/content/Context;

.field private mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mCustomMinimizedView:Landroid/view/View;

.field mDismissGuideByDockingCanceled:Z

.field mDocking:Lcom/android/internal/policy/multiwindow/Docking;

.field private mDragMode:Z

.field mDragModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDrawableController:Landroid/graphics/drawable/Drawable;

.field mDssScale:F

.field private mFloatingFlag:I

.field private mFloatingMenuRightMargin:I

.field private mFocusedViewId:I

.field mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field protected mHScale:F

.field mHandler:Landroid/os/Handler;

.field mHasStackFocus:Z

.field private mHeaderButtonSoundId:I

.field private mInitialFlag:I

.field mIsAttachedToWindow:Z

.field private mIsBorderShown:Z

.field mIsFinishing:Z

.field private mIsForceHideBorder:Z

.field mIsFullScreen:Z

.field private mIsMinimizeDisabled:Z

.field private mIsMinimizing:Z

.field mIsPenButtonPressed:Z

.field private mIsSecure:Z

.field final mIsSupportDiagonalResizable:Z

.field private final mIsSupportGuideRectView:Z

.field private final mIsSupportMinimizeAnimation:Z

.field final mIsSupportSimplificationUI:Z

.field mLastHoverIcon:I

.field mLastOrientation:I

.field mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field mMaxSizeRatio:F

.field private mMinSizeRatio:F

.field mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

.field mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

.field private mPenWindowHeaderVisibilityDeferred:Z

.field final mPowerManager:Landroid/os/PowerManager;

.field mResizablePadding:Landroid/graphics/Rect;

.field private mRotation:I

.field private mSelectiveSizeRatio:F

.field private mSoundPool:Landroid/media/SoundPool;

.field mStackBound:Landroid/graphics/Rect;

.field mStatusBarHeight:I

.field private mSubWindow:Landroid/view/Window;

.field private mTargetSdkVersion:I

.field private mThickness:I

.field mTitleBarHeight:I

.field mTmpBound:Landroid/graphics/Rect;

.field mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field protected mVScale:F

.field private mVideoCapabilityDialog:Landroid/app/AlertDialog;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    .line 127
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    .line 128
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    .line 129
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_BGCOLOR:Z

    .line 130
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_TAB:Z

    .line 131
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    .line 133
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    .line 134
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 136
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    .line 149
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 154
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 155
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    .line 165
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->NOT_SET:I

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    .line 168
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 173
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    .line 174
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    .line 175
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 182
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    .line 186
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    .line 187
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    .line 188
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 194
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 195
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    .line 204
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 205
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 206
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    .line 225
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->TEMP_TOAST_HEIGHT:I

    .line 229
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    .line 234
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 238
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 239
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    .line 243
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    .line 251
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 252
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    .line 257
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    .line 258
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    .line 260
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    .line 1129
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z

    .line 2507
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2508
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2509
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2671
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 2715
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 265
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportGuideRectViewUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 281
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    .line 283
    new-instance v0, Lcom/android/internal/policy/multiwindow/Docking;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;F)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initResource()V

    .line 304
    return-void
.end method

.method private StopSmartClipService()V
    .locals 2

    .prologue
    .line 1866
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1867
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.action.ACTION_FLOATING_MINIMIZED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1868
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1869
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDrawableController:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDrawableController:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->startRestorePenWindowHeaderAnimator()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/MultiPhoneWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->animatePenWindowHeaderView(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method private animatePenWindowHeaderView(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1168
    if-eqz p1, :cond_1

    move v1, v2

    .local v1, "fromAlpha":F
    :goto_0
    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1169
    .local v2, "toAlpha":F
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1170
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1171
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1172
    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/MultiPhoneWindow$5;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1178
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1179
    return-void

    .line 1168
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "fromAlpha":F
    .end local v2    # "toAlpha":F
    :cond_1
    const v1, 0x3dcccccd    # 0.1f

    goto :goto_0
.end method

.method private checkRotationNeeded(I)Z
    .locals 7
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v6, -0x1

    .line 1807
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getExpectedOrientation()I

    move-result v1

    .line 1808
    .local v1, "expectedOrientation":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v0

    .line 1809
    .local v0, "expectedExplicitOrientation":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v3

    .line 1810
    .local v3, "rotated":Z
    const/4 v4, 0x0

    .line 1811
    .local v4, "rotationNeeded":Z
    if-eq v0, v6, :cond_2

    .line 1812
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    .line 1814
    :cond_1
    const/4 v4, 0x1

    .line 1817
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v2

    .line 1818
    .local v2, "requestedExplicitOrientation":I
    if-nez v4, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v0, :cond_3

    .line 1821
    const/4 v4, 0x0

    .line 1823
    .end local v4    # "rotationNeeded":Z
    :cond_3
    return v4
.end method

.method private dismissWritingBuddy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2474
    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v2, :cond_1

    .line 2486
    :cond_0
    :goto_0
    return-void

    .line 2477
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2478
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2479
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2480
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    .line 2481
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2482
    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0
.end method

.method private getExplicitOrientation(I)I
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1827
    packed-switch p1, :pswitch_data_0

    .line 1841
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1832
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1838
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getResizalbePaddingRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1236
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private initFocusedView()V
    .locals 1

    .prologue
    .line 1316
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1317
    return-void
.end method

.method private initResource()V
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 1220
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    .line 1221
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v1, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 1223
    .local v0, "resizePadding":I
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1224
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    .line 1225
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 1227
    .end local v0    # "resizePadding":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    .line 1228
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    .line 1230
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    .line 1233
    :cond_1
    return-void
.end method

.method private restoreFocusedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1299
    iget v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    if-eq v1, v3, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1301
    .local v0, "needsFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1304
    :cond_0
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1306
    .end local v0    # "needsFocus":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private saveFocusedView()V
    .locals 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1310
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1311
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1313
    :cond_0
    return-void
.end method

.method private setStackBoundInScreen(IIZ)V
    .locals 7
    .param p1, "leftBoundary"    # I
    .param p2, "topBoundary"    # I
    .param p3, "isMinimizing"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1592
    const/4 v0, 0x0

    .line 1594
    .local v0, "adjustBound":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1595
    .local v2, "screenSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1596
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1598
    .local v1, "currStackBound":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, p1, :cond_0

    .line 1599
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1600
    const/4 v0, 0x1

    .line 1602
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, p2, :cond_1

    .line 1603
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1604
    const/4 v0, 0x1

    .line 1607
    :cond_1
    if-nez p3, :cond_4

    .line 1608
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_2

    .line 1609
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1610
    const/4 v0, 0x1

    .line 1612
    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_3

    .line 1613
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1614
    const/4 v0, 0x1

    .line 1617
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1618
    .local v3, "tempStackBound":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1619
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1620
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1621
    const/4 v0, 0x1

    .line 1625
    .end local v3    # "tempStackBound":Landroid/graphics/Rect;
    :cond_4
    if-eqz v0, :cond_5

    .line 1626
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1628
    :cond_5
    return-void
.end method

.method private setStackFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    .line 2089
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_0

    .line 2097
    :goto_0
    return-void

    .line 2092
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    .line 2093
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 2094
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->changeStackFocus(Z)V

    .line 2096
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2372
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2373
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 2374
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2375
    .local v2, "guideOr":I
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2376
    .local v0, "activityOr":I
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v3

    .line 2377
    .local v3, "guideState":I
    if-ne v2, v6, :cond_0

    if-eq v0, v7, :cond_1

    :cond_0
    if-ne v2, v7, :cond_2

    if-ne v0, v6, :cond_2

    .line 2379
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 2380
    new-instance v5, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x8d4

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 2381
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2382
    sget-boolean v5, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "re-created mGuideView, guideOr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityOr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    .end local v0    # "activityOr":I
    .end local v2    # "guideOr":I
    .end local v3    # "guideState":I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 2387
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2389
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 2392
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2394
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2395
    .local v4, "scaledRect":Landroid/graphics/Rect;
    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2423
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .line 2426
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "scaledRect":Landroid/graphics/Rect;
    :cond_3
    return-void
.end method

.method private startRestorePenWindowHeaderAnimator()V
    .locals 4

    .prologue
    .line 1131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z

    .line 1132
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1134
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1135
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1136
    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1137
    const-wide/16 v2, 0x63

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1138
    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1156
    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$4;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1162
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1163
    return-void

    .line 1134
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method adjustScaleFactor()V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1665
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 1666
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1668
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1669
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 1670
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 1671
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-lt v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1674
    :cond_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 1675
    .local v2, "temp":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1676
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1680
    .end local v2    # "temp":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 1681
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 1682
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_4

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor mStackBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_4
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_5

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor result hScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",vScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerGlobal;->setMultiWindowScale(FF)V

    .line 1689
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1690
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1691
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 1693
    :cond_6
    return-void
.end method

.method adjustStackBound(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1696
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v0, v4, 0x3

    .line 1697
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 1698
    .local v1, "boundaryY":I
    const/4 v2, 0x0

    .line 1699
    .local v2, "headerWindowMargin":I
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_0

    .line 1700
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 1701
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050306

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1702
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 1704
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1705
    .local v3, "maxSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1707
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_3

    .line 1708
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1713
    :cond_1
    :goto_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    if-le v4, v5, :cond_4

    .line 1714
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1718
    :cond_2
    :goto_1
    return-void

    .line 1709
    :cond_3
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v0, :cond_1

    .line 1710
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v0, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 1715
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 1716
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method public arrangeScaleStackBound()V
    .locals 9

    .prologue
    .line 1754
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1758
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->checkRotationNeeded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1762
    const/4 v0, 0x0

    .line 1763
    .local v0, "bChangedStack":Z
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1765
    .local v4, "stackBound":Landroid/graphics/Rect;
    if-eqz v4, :cond_0

    .line 1766
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    .line 1767
    .local v3, "requestedOrientation":I
    packed-switch v3, :pswitch_data_0

    .line 1786
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    .line 1788
    .local v2, "oldRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1789
    .local v1, "newRect":Landroid/graphics/Rect;
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_3

    .line 1792
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1794
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1796
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1797
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1799
    iget-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v5, :cond_0

    .line 1800
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updatePosition()V

    goto :goto_0

    .line 1772
    .end local v1    # "newRect":Landroid/graphics/Rect;
    .end local v2    # "oldRect":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 1779
    :pswitch_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 1767
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method checkMaxStackSize(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v5, v0

    .line 1472
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v4, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    .local v4, "minWidth":I
    move-object v5, v0

    .line 1473
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v3, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    .local v3, "minHeight":I
    move-object v5, v0

    .line 1474
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v2, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 1475
    .local v2, "maxWidth":I
    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iget v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 1478
    .local v1, "maxHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v5, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 1479
    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1480
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1484
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v5, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 1485
    :cond_2
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1486
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1488
    :cond_3
    return-void
.end method

.method public disableMultiWindowFloatingWindow(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 2615
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2616
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 2617
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2621
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2622
    return-void

    .line 2619
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public disableMultiWindowTrayBar(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 2601
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2602
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 2603
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2607
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2608
    return-void

    .line 2605
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public dismissGuide()V
    .locals 1

    .prologue
    .line 2338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide(Z)V

    .line 2339
    return-void
.end method

.method public dismissGuide(Z)V
    .locals 4
    .param p1, "doAnim"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2342
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v1, :cond_2

    .line 2343
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .line 2344
    .local v0, "multiPhoneDecorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    iget-boolean v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-eqz v1, :cond_0

    .line 2345
    iput-boolean v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 2346
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string v2, "dismissGuide: mIsResize is true, make false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    if-eqz v1, :cond_1

    .line 2349
    iput-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    .line 2350
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MultiPhoneWindow"

    const-string v2, "dismissGuide: mIsForceHideBorder is true, make false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_1
    if-eqz p1, :cond_3

    .line 2353
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismissAfterAnim()V

    .line 2359
    .end local v0    # "multiPhoneDecorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    :cond_2
    :goto_0
    return-void

    .line 2355
    .restart local v0    # "multiPhoneDecorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 2356
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    goto :goto_0
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1392
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    .line 1394
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1398
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1399
    return-void
.end method

.method public exitByCloseBtn()V
    .locals 4

    .prologue
    .line 2489
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2490
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2492
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_0
    :goto_0
    return-void

    .line 2496
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2500
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "CLOSE"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method forceHideInputMethod()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1320
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1322
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    .line 1323
    .local v4, "res":Z
    if-eqz v3, :cond_0

    .line 1324
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v4

    .line 1326
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1327
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v1, :cond_1

    move v2, v1

    .line 1329
    .local v2, "haveHardKeyboard":Z
    :goto_0
    if-eqz v2, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1333
    .local v1, "hardKeyShown":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1334
    const/4 v4, 0x0

    .line 1337
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    :cond_0
    return v4

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_1
    move v2, v5

    .line 1327
    goto :goto_0

    .restart local v2    # "haveHardKeyboard":Z
    :cond_2
    move v1, v5

    .line 1329
    goto :goto_1
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 1183
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 1188
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1190
    .local v1, "ret":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1192
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    .line 1193
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1194
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), local setBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    .line 1202
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    .line 1203
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 1204
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 1206
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-nez v2, :cond_1

    .line 1207
    new-instance v2, Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    .line 1209
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->generatePenWindowLayout()V

    .line 1211
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v2, :cond_2

    .line 1212
    new-instance v2, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x8d4

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 1216
    :cond_2
    return-object v1

    .line 1196
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), bounds is null, mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method generatePenWindowLayout()V
    .locals 7

    .prologue
    .line 1240
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v4, :cond_0

    .line 1241
    new-instance v4, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v4, v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow;F)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .line 1244
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1265
    :goto_0
    return-void

    .line 1248
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1249
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090099

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 1251
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-nez v4, :cond_2

    .line 1252
    new-instance v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    .line 1254
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->generateLayout()V

    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 1257
    .local v1, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1258
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1259
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 1260
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1257
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1262
    .end local v0    # "content":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 1264
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    goto :goto_0
.end method

.method public getContentRootContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getDisplaySize(Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 1402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method getDisplaySize(Landroid/graphics/Point;Z)Z
    .locals 5
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1406
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1407
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1409
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 1410
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1415
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_0

    .line 1416
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1417
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 1418
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 1419
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1420
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1426
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1427
    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1431
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;
    .locals 1

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1492
    return-object p0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1498
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1500
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method public getOptionsPanelGravity()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1510
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 1511
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1512
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1513
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 1514
    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1515
    .local v1, "requestOrientation":I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1518
    :cond_0
    const/16 v3, 0x51

    .line 1521
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_0
.end method

.method public getProperContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRotationOfStackBound()I
    .locals 1

    .prologue
    .line 2330
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    return v0
.end method

.method public getScaleInfo()Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2576
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2577
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2578
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v1

    .line 2580
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method getState()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 2100
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2101
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2112
    :goto_0
    :pswitch_0
    return v1

    .line 2105
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 2106
    goto :goto_0

    .line 2107
    :cond_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2108
    const/4 v1, 0x3

    goto :goto_0

    .line 2110
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 2101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handlePause()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 1273
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1276
    const/4 v1, 0x1

    .line 1277
    .local v1, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1279
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 1284
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 1285
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/MultiPhoneWindow$6;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1296
    .end local v1    # "isScreenOn":Z
    :cond_1
    return-void

    .line 1280
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "isScreenOn":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasStackFocus()Z
    .locals 1

    .prologue
    .line 1505
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    return v0
.end method

.method initStackBound()V
    .locals 3

    .prologue
    .line 1544
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1545
    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1547
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1549
    :cond_0
    return-void
.end method

.method protected isFloatingWindow()Z
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1349
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    .line 1351
    const/4 v0, 0x1

    .line 1353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInputMethodShown()Z
    .locals 2

    .prologue
    .line 1341
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1342
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1343
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    .line 1345
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRotated(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1357
    packed-switch p1, :pswitch_data_0

    .line 1365
    :goto_0
    :pswitch_0
    return v0

    .line 1360
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isTouchBlocked()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x1

    .line 1526
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return v1

    .line 1530
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1531
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_2

    .line 1532
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 1533
    goto :goto_0

    .line 1536
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 1537
    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 4
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    .line 2553
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    .line 2554
    .local v0, "state":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2561
    :cond_0
    :goto_0
    return-void

    .line 2558
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 2559
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public moveStackBound(IIZ)Z
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, "outOfBound":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1723
    .local v1, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1725
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1727
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1728
    return v0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2536
    return-void
.end method

.method public multiWindow(IZ)V
    .locals 1
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 2544
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2545
    return-void
.end method

.method protected needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 2467
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2470
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->isFloatingWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 2568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2569
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 12
    .param p1, "configDiff"    # I

    .prologue
    .line 1971
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    .line 1973
    and-int/lit16 v8, p1, 0x80

    if-nez v8, :cond_1

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_0

    .line 1981
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    .line 1982
    .local v2, "mwState":I
    sget-boolean v8, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v8, :cond_2

    .line 1983
    const/4 v8, 0x3

    if-ne v2, v8, :cond_2

    .line 1984
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v5

    .line 1985
    .local v5, "preferredOrientation":I
    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1986
    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_0

    .line 1987
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_0

    .line 1994
    .end local v5    # "preferredOrientation":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    .line 1995
    .local v4, "oldRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1996
    .local v3, "newRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 1998
    sget-boolean v8, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v8, :cond_3

    const-string v9, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onMultiWindowConfigurationChanged "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "oldRect="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v6

    .line 2002
    .local v6, "rotated":Z
    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    if-ne v8, v6, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x4

    if-ne v2, v8, :cond_0

    .line 2005
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 2007
    const/4 v8, 0x3

    if-eq v2, v8, :cond_5

    const/4 v8, 0x4

    if-ne v2, v8, :cond_8

    .line 2008
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_6

    .line 2009
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 2010
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v8, :cond_6

    .line 2011
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowConfigurationChanged()V

    .line 2014
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    goto/16 :goto_0

    .line 1998
    .end local v6    # "rotated":Z
    :cond_7
    const-string v8, ""

    goto :goto_1

    .line 2018
    .restart local v6    # "rotated":Z
    :cond_8
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 2020
    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2025
    :pswitch_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    .line 2026
    const/4 v8, 0x3

    if-ne v2, v8, :cond_9

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_9

    .line 2027
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2030
    :cond_9
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "newRect":Landroid/graphics/Rect;
    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2031
    .restart local v3    # "newRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2034
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 2035
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 2036
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2038
    const/4 v8, 0x3

    if-ne v2, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_0

    .line 2039
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_0

    .line 2044
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 2045
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    .line 2047
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 2048
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 2049
    const/4 v0, 0x0

    .line 2050
    .local v0, "dx":I
    const/4 v1, 0x0

    .line 2051
    .local v1, "dy":I
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2053
    iget v8, v4, Landroid/graphics/Rect;->left:I

    if-gez v8, :cond_e

    .line 2054
    iget v8, v4, Landroid/graphics/Rect;->left:I

    neg-int v0, v8

    .line 2058
    :cond_a
    :goto_2
    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v8, v9, :cond_f

    .line 2059
    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v8, v9

    .line 2063
    :cond_b
    :goto_3
    if-nez v0, :cond_c

    if-eqz v1, :cond_d

    .line 2064
    :cond_c
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2066
    :cond_d
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2055
    :cond_e
    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Point;->x:I

    if-le v8, v9, :cond_a

    .line 2056
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    goto :goto_2

    .line 2060
    :cond_f
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_b

    .line 2061
    iget v8, v7, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v8, v9

    goto :goto_3

    .line 2018
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowFocusChanged(IZZ)V
    .locals 3
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z
    .param p3, "keepInputMethod"    # Z

    .prologue
    .line 2072
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2077
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackFocus(Z)V

    .line 2080
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 2081
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->closeAllPanels()V

    .line 2082
    if-nez p3, :cond_3

    .line 2083
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 2086
    :cond_3
    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 11
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v8, 0x4

    .line 1872
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMultiWindowStyleChanged, reason=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldStyle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_0
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_2

    .line 1876
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 1877
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1964
    :cond_1
    :goto_0
    return-void

    .line 1882
    :cond_2
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_8

    .line 1883
    const/high16 v3, 0x20000

    invoke-virtual {p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1884
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1885
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    .line 1886
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 1887
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1890
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1891
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .line 1892
    .local v1, "state":I
    if-eq v1, v8, :cond_7

    .line 1893
    if-eq v1, v10, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 1894
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1898
    .end local v1    # "state":I
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->StopSmartClipService()V

    .line 1899
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    .line 1904
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_8
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_a

    .line 1905
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1907
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1909
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeDnDHelpPopup()V
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->access$1700(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    .line 1913
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v3, :cond_b

    .line 1914
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-eq v3, v6, :cond_f

    .line 1915
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1922
    :cond_b
    :goto_2
    const/4 v0, 0x0

    .line 1923
    .local v0, "currStackBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1924
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .line 1925
    .restart local v1    # "state":I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1928
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1929
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1931
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_c

    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_c

    .line 1933
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1936
    :cond_c
    if-ne v1, v4, :cond_d

    .line 1937
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1939
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .end local v0    # "currStackBounds":Landroid/graphics/Rect;
    .end local v1    # "state":I
    :cond_e
    move v3, v5

    .line 1915
    goto :goto_1

    .line 1916
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-eq v3, v6, :cond_b

    .line 1917
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .line 1944
    .restart local v0    # "currStackBounds":Landroid/graphics/Rect;
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1947
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide(Z)V

    .line 1950
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1951
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1953
    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_11

    .line 1954
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_11

    .line 1955
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1960
    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_1

    .line 1961
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->invalidate()V

    .line 1962
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1374
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1375
    if-nez p1, :cond_0

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    .line 1380
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method refreshBorder()V
    .locals 3

    .prologue
    .line 2445
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2446
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .line 2447
    .local v0, "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v1, :cond_1

    .line 2448
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 2450
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v1, :cond_2

    .line 2451
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(Z)V

    .line 2452
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 2453
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2458
    .end local v0    # "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    :cond_2
    :goto_0
    return-void

    .line 2455
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2456
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method refreshUI(I)V
    .locals 10
    .param p1, "forceState"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2163
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v3, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return-void

    .line 2165
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2166
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2170
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2171
    const/4 v2, -0x1

    .line 2172
    .local v2, "state":I
    if-eq p1, v9, :cond_5

    .line 2173
    move v2, p1

    .line 2177
    :goto_1
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_3

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshUI state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2180
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eq v2, v8, :cond_6

    .line 2181
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    if-eqz v3, :cond_4

    .line 2182
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2191
    :cond_4
    :goto_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2193
    .local v1, "flags":I
    packed-switch v2, :pswitch_data_0

    .line 2284
    :goto_3
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v3, :cond_0

    .line 2285
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 2175
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "flags":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    goto :goto_1

    .line 2185
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_4

    .line 2186
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2187
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    goto :goto_2

    .line 2195
    .restart local v1    # "flags":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_7

    .line 2196
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2198
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_8

    .line 2199
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2200
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v3, :cond_8

    .line 2201
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2205
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    .line 2206
    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_9

    .line 2207
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2210
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 2211
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 2216
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v3, :cond_a

    .line 2217
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize function is disabled. do not minimize."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2221
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isMinimizeIconVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2222
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize icon is already visible."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2225
    :cond_b
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    .line 2226
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_c

    .line 2227
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 2230
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    if-ne v3, v9, :cond_d

    .line 2231
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    .line 2234
    :cond_d
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2236
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_e

    .line 2237
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->showMinimizedIconWindow()V

    .line 2239
    :cond_e
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2240
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->saveFocusedView()V

    .line 2241
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2242
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2243
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    goto/16 :goto_3

    .line 2248
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_f

    .line 2249
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2252
    :cond_f
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2253
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2255
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_10

    .line 2256
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2259
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2260
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->restoreFocusedView()V

    .line 2261
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2262
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_3

    .line 2267
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_11

    .line 2268
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2270
    :cond_11
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2271
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2272
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_12

    .line 2273
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2276
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2277
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    .line 2278
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2279
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_3

    .line 2193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestMaximize()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2313
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2314
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2315
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string v2, "Minimized->Floating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_0
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2318
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2319
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2320
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2327
    :cond_1
    :goto_0
    return-void

    .line 2322
    :cond_2
    invoke-direct {p0, v3, v3, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    .line 2323
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2324
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method requestState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2116
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2117
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 2118
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2160
    :cond_1
    :goto_0
    return-void

    .line 2122
    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 2123
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2127
    :pswitch_1
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2128
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2129
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2130
    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2131
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2132
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2136
    :pswitch_2
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2137
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2138
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2139
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2140
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2141
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2145
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v1, :cond_2

    .line 2146
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "minimize function is disabled. do not minimize"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2150
    :cond_2
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2151
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 2152
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2153
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2155
    :cond_3
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2156
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAppRequestOrientation(I)V
    .locals 4
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .line 1744
    .local v0, "prevOrientation":I
    if-eq v0, p1, :cond_0

    .line 1745
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1746
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1747
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppRequestOrientation(), prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_0
    return-void
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2523
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2589
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 2590
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2591
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2592
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2594
    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 2629
    if-nez p1, :cond_0

    .line 2630
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2640
    :goto_0
    return-void

    .line 2632
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2633
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    .line 2635
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_2

    .line 2636
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2638
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 2647
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2668
    :goto_0
    return-void

    .line 2651
    :cond_0
    if-nez p1, :cond_1

    .line 2652
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0

    .line 2654
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2655
    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMinimizeView : request view is already added >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2658
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v1, :cond_4

    .line 2660
    :cond_3
    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "setMinimizeView : view width and height must be WRAP_CONTENT."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2663
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_5

    .line 2664
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2666
    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0
.end method

.method protected setStackBound(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "requestBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1556
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1561
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1564
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1566
    const/4 v1, 0x0

    .line 1567
    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 1569
    :cond_4
    const/4 v1, 0x1

    .line 1571
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1572
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStackBounds, requestBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1574
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1575
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1576
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1577
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_7

    .line 1578
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1579
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1580
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_7

    .line 1581
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1585
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method setStackBoundsInternel(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1636
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1637
    const/4 v2, 0x0

    .line 1638
    .local v2, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1639
    :cond_0
    const/4 v2, 0x1

    .line 1641
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1642
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1643
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1644
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1645
    const/4 v0, 0x0

    .line 1646
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_2

    .line 1647
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1649
    :cond_2
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_3

    .line 1650
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1651
    if-eqz v0, :cond_3

    .line 1652
    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1656
    :cond_3
    if-eqz v0, :cond_7

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gt v3, v4, :cond_4

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_7

    :cond_4
    const/4 v1, 0x1

    .line 1658
    .local v1, "isSmallerThanFullScreen":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v3, :cond_6

    .line 1659
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    .line 1662
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "isSmallerThanFullScreen":Z
    .end local v2    # "sizeChanged":Z
    :cond_6
    return-void

    .line 1656
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v2    # "sizeChanged":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2513
    const/4 v0, 0x1

    return v0
.end method

.method public setStateChangeListener2(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2518
    const/4 v0, 0x1

    return v0
.end method

.method public setSubWindow(Landroid/view/Window;)V
    .locals 0
    .param p1, "subWindow"    # Landroid/view/Window;

    .prologue
    .line 2462
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setSubWindow(Landroid/view/Window;)V

    .line 2463
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    .line 2464
    return-void
.end method

.method public showGuide(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 2362
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2366
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2367
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    .line 2369
    :cond_1
    return-void
.end method

.method showMinimizedIconWindow()V
    .locals 2

    .prologue
    .line 2290
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v0, :cond_0

    .line 2310
    :goto_0
    return-void

    .line 2295
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "showMinimizedIconWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_2

    .line 2298
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_2

    .line 2299
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2303
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2304
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;)V

    goto :goto_0

    .line 2305
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_4

    .line 2306
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    goto :goto_0

    .line 2308
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow()V

    goto :goto_0
.end method

.method updateIsFullScreen()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 2433
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2434
    const/4 v0, 0x0

    .line 2435
    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 2437
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_1

    .line 2438
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 2442
    .end local v0    # "isFullScreen":Z
    :cond_1
    return-void

    .line 2435
    .restart local v0    # "isFullScreen":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateMinMaxSize()V
    .locals 11

    .prologue
    .line 1435
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1436
    .local v2, "displaySize":Landroid/graphics/Point;
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1438
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1439
    .local v3, "displayWidth":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 1441
    .local v1, "displayHeight":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v9, v0

    .line 1443
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v3, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    move-object v9, v0

    .line 1444
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v1, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    .line 1446
    const/4 v4, 0x0

    .line 1447
    .local v4, "isSelective":Z
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_0

    .line 1448
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1450
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1451
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 1452
    const/4 v4, 0x1

    .line 1457
    :cond_0
    int-to-float v10, v3

    if-eqz v4, :cond_1

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_0
    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 1458
    .local v8, "minWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_2

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_1
    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1459
    .local v7, "minHeight":I
    int-to-float v10, v3

    if-eqz v4, :cond_3

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_2
    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1460
    .local v6, "maxWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_4

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_3
    mul-float/2addr v9, v10

    float-to-int v5, v9

    .local v5, "maxHeight":I
    move-object v9, v0

    .line 1462
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v8, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    move-object v9, v0

    .line 1463
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v7, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    move-object v9, v0

    .line 1464
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v6, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 1465
    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iput v5, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 1466
    return-void

    .line 1457
    .end local v5    # "maxHeight":I
    .end local v6    # "maxWidth":I
    .end local v7    # "minHeight":I
    .end local v8    # "minWidth":I
    .restart local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    :cond_1
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    goto :goto_0

    .line 1458
    .restart local v8    # "minWidth":I
    :cond_2
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    goto :goto_1

    .line 1459
    .restart local v7    # "minHeight":I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    goto :goto_2

    .line 1460
    .restart local v6    # "maxWidth":I
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    goto :goto_3
.end method

.method updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 4
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v3, 0x1

    .line 1732
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiWindowStyle style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1735
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1736
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1737
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissWritingBuddy()V

    .line 1739
    :cond_1
    return-void
.end method

.method validateStackBound(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 1846
    if-nez p1, :cond_0

    move v3, v4

    .line 1862
    :goto_0
    return v3

    .line 1850
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1851
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1852
    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1854
    .local v1, "screenHeight":I
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v3, v5, :cond_2

    :cond_1
    if-le v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_3

    .line 1856
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1858
    :cond_3
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4

    const-string v5, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateStackBound "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bound=Point("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", screenSize=("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v4

    .line 1862
    goto/16 :goto_0

    .line 1858
    :cond_5
    const-string v3, ""

    goto :goto_1
.end method