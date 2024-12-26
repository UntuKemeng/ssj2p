.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field public static final APP_START:I = 0x0

.field public static final APP_STOP:I = 0x1

.field public static final APP_UPDATE:I = 0x2

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field static final CONTAINER_CALLBACK_TASK_LIST_EMPTY:I = 0x6f

.field static final CONTAINER_CALLBACK_VISIBILITY:I = 0x6c

.field public static final CUSTOM_STARTING_WINDOW:Z = true

.field static final DEBUG_MULTIWINDOW:Z = false

.field public static final DUAL_SCREEN_ZONE_FULL:I = 0x3

.field public static final DUAL_SCREEN_ZONE_MAIN:I = 0x1

.field public static final DUAL_SCREEN_ZONE_SUB:I = 0x2

.field public static final DUAL_SCREEN_ZONE_UNKNOWN:I = 0x0

.field public static final EXPANDED_HOME_STACK_ID:I = 0x2

.field public static final EXPANDED_HOME_STACK_TYPE:I = 0x6

.field static final FIXED_SCREEN_MODE_CHANGED_MSG:I = 0x12c

.field public static final FLOATING_APP_STACK_TYPE:I = 0x3

.field private static final FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field public static final HOME_STACK_ID:I = 0x0

.field public static final HOME_STACK_TYPE:I = 0x1

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field public static final NORMAL_APP_STACK_TYPE:I = 0x2

.field static final RELEASE_FIXED_SCREEN_MODE_DIALG_MSG:I = 0x12d

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SAFE_DEBUG:Z

.field public static final SAMSUNG_HOME_STACK_ID:I = 0x1

.field public static final SAMSUNG_HOME_STACK_TYPE:I = 0x4

.field static final SHOW_LOCK_TASK_ESCAPE_MESSAGE_MSG:I = 0x71

.field static final SHOW_TOAST_NOT_SUPPORT_CURRENT_SCREEN_MSG:I = 0xc9

.field static final SHOW_TOAST_UNABLE_PENWINDOW_MSG:I = 0xc8

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field public static final SUPPORT_EXPANDED_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBLE_BEHIND:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static isLaunchKnoxApps:Z

.field private static final sEmptyGlobalTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

.field inResumeTopActivity:Z

.field public lBoostCpuParamVal:[I

.field public lBoostPackParamVal:[I

.field public lBoostTimeOut:I

.field public lDisPackTimeOut:I

.field private mActivityContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field mChangedFocusedStackWhileSleeping:Z

.field mChangedFrontStackWhileSleeping:[Z

.field private mCurTaskId:I

.field private mCurrentUser:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExpandedHomeStack:Lcom/android/server/am/ActivityStack;

.field mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFixedTask:Lcom/android/server/am/TaskRecord;

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mFrontStacks:[Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasMultiWindowStack:Z

.field mHasRunningCascadeApp:Z

.field mHasRunningSplitApp:Z

.field private mHiddenPkgString:[Ljava/lang/String;

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mHomeStacks:[Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsPerfBoostEnabled:Z

.field private mIsResumedBothCoupled:Z

.field public mIsperfDisablepackingEnable:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastFocusedStacks:[Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLeanbackOnlyDevice:Z

.field private mLockTaskModeState:I

.field mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field mNeedToMovePrevSamsungHomeTasks:Z

.field private mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

.field mPendingActivitiesToMove:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field public mPerfPack:Landroid/util/BoostFramework;

.field public mPerf_iop:Landroid/util/BoostFramework;

.field private mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field final mRunningTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungHomeStack:Lcom/android/server/am/ActivityStack;

.field mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field private mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

.field public mStartingArTask:Lcom/android/server/am/TaskRecord;

.field final mStartingBackgroundUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpDisplayTaskHistoryList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

.field mUnfixDialogShow:Z

.field mUniversalTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    .line 385
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 388
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sput-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    .line 9720
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$3;

    invoke-direct {v0}, Lcom/android/server/am/ActivityStackSupervisor$3;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    .line 349
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 350
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    .line 351
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 352
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsperfDisablepackingEnable:Z

    .line 353
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 354
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lDisPackTimeOut:I

    .line 412
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 416
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    .line 435
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 439
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 461
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    .line 472
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStacks:[Lcom/android/server/am/ActivityStack;

    .line 473
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFrontStacks:[Lcom/android/server/am/ActivityStack;

    .line 474
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStacks:[Lcom/android/server/am/ActivityStack;

    .line 475
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivitiesToMove:Ljava/util/HashMap;

    .line 477
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

    .line 478
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .line 479
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedToMovePrevSamsungHomeTasks:Z

    .line 482
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFrontStackWhileSleeping:[Z

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    .line 514
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 517
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 539
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 543
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingArTask:Lcom/android/server/am/TaskRecord;

    .line 548
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    .line 551
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 1857
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTaskComparator:Ljava/util/Comparator;

    .line 6493
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

    .line 6494
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$2;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    .line 9103
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsResumedBothCoupled:Z

    .line 9142
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    .line 9143
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    .line 9144
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    .line 9773
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpDisplayTaskHistoryList:Landroid/util/SparseArray;

    .line 10549
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "system"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHiddenPkgString:[Ljava/lang/String;

    .line 594
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 595
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 596
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 598
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 600
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsperfDisablepackingEnable:Z

    .line 603
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 606
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuParamVal:[I

    .line 610
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsperfDisablepackingEnable:Z

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lDisPackTimeOut:I

    .line 613
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPackParamVal:[I

    .line 616
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/LockTaskNotify;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-object v0
.end method

.method private changeTypeOfTaskToCascadeLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Point;ZZ)Z
    .locals 28
    .param p1, "topActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "targetPoint"    # Landroid/graphics/Point;
    .param p3, "bMinimize"    # Z
    .param p4, "stayResumed"    # Z

    .prologue
    .line 9360
    const/4 v10, 0x0

    .line 9361
    .local v10, "fromChangeTaskToMinimized":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v24

    if-nez v24, :cond_0

    if-eqz p3, :cond_0

    .line 9362
    const/4 v10, 0x1

    .line 9365
    :cond_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 9366
    .local v8, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/MultiWindowPolicy;->getDefaultScale()F

    move-result v5

    .line 9367
    .local v5, "defaultPenWindowScale":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 9368
    .local v7, "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 9369
    .local v6, "display":Landroid/view/Display;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 9370
    :cond_1
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 9371
    .local v23, "windowDefWidth":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 9373
    .local v22, "windowDefHeight":I
    sget-boolean v24, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v24, :cond_4

    .line 9374
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v17

    .line 9375
    .local v17, "preferredOrientation":I
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 9376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    .line 9377
    .local v11, "globalOr":I
    move/from16 v0, v17

    invoke-static {v0, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v9

    .line 9378
    .local v9, "expectedOr":I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v11, v0, :cond_2

    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v9, v0, :cond_3

    :cond_2
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v11, v0, :cond_4

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v9, v0, :cond_4

    .line 9380
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mSelectiveScale:F

    move/from16 v19, v0

    .line 9386
    .local v19, "selectivePenWindowScale":F
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 9387
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 9392
    .end local v9    # "expectedOr":I
    .end local v11    # "globalOr":I
    .end local v17    # "preferredOrientation":I
    .end local v19    # "selectivePenWindowScale":F
    :cond_4
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 9393
    .local v18, "rect":Landroid/graphics/Rect;
    if-eqz p2, :cond_a

    .line 9394
    if-eqz p3, :cond_9

    .line 9395
    if-eqz v10, :cond_8

    .line 9396
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v14, v24, v25

    .line 9397
    .local v14, "offSetX":I
    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Point;->y:I

    .line 9398
    .local v15, "offSetY":I
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9399
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 9421
    .end local v14    # "offSetX":I
    .end local v15    # "offSetY":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9422
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x800

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 9423
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 9424
    if-eqz p3, :cond_5

    .line 9425
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 9428
    :cond_5
    if-eqz v10, :cond_c

    .line 9429
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9430
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9442
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 9445
    .local v12, "newFloatingStack":Lcom/android/server/am/ActivityStack;
    if-nez p4, :cond_6

    .line 9447
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 9449
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-eq v12, v0, :cond_7

    .line 9450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v27

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 9457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    .line 9458
    if-nez p3, :cond_7

    .line 9459
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 9469
    :cond_7
    if-eqz p3, :cond_f

    .line 9470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v13

    .line 9471
    .local v13, "nextStackId":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v13, v0, :cond_e

    .line 9472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 9494
    .end local v13    # "nextStackId":I
    :goto_2
    const/16 v24, 0x1

    return v24

    .line 9401
    .end local v12    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/server/am/MultiWindowPolicy;->calculateMinimizePosition(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v16

    .line 9403
    .local v16, "point":Landroid/graphics/Point;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    add-int v26, v26, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    add-int v27, v27, v22

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 9406
    .end local v16    # "point":Landroid/graphics/Point;
    :cond_9
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9407
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v24, v24, v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_0

    .line 9410
    :cond_a
    if-eqz v10, :cond_b

    .line 9411
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    sub-int v24, v24, v23

    div-int/lit8 v14, v24, 0x2

    .line 9412
    .restart local v14    # "offSetX":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    div-int/lit8 v15, v24, 0x2

    .line 9413
    .restart local v15    # "offSetY":I
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9414
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_0

    .line 9416
    .end local v14    # "offSetX":I
    .end local v15    # "offSetY":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 9417
    .local v20, "statusBarHeight":I
    const/16 v24, 0x0

    add-int v25, v20, v22

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 9432
    .end local v20    # "statusBarHeight":I
    :cond_c
    if-eqz p3, :cond_d

    .line 9433
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 9434
    .local v21, "tmp":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_d

    .line 9435
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 9438
    .end local v21    # "tmp":Landroid/graphics/Bitmap;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9439
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_1

    .line 9487
    .restart local v12    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "nextStackId":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_2

    .line 9491
    .end local v13    # "nextStackId":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    iget v0, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_2
.end method

.method private changeTypeOfTaskToNormalLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 9256
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_4

    .line 9257
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v8, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 9258
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v10, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 9259
    .local v2, "normalStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    .line 9260
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v7

    invoke-virtual {p0, v7, v10, v10}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 9264
    :cond_0
    const-string/jumbo v7, "type-change"

    invoke-virtual {p0, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 9265
    invoke-virtual {p0, v2, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 9267
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 9268
    .local v6, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_3

    .line 9269
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9270
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9271
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, p1, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9272
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6, v9, v9}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9274
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v7, v7, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9275
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 9276
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 9277
    .local v4, "target":Lcom/android/server/am/ActivityStack;
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_1

    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9279
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 9280
    .local v5, "tmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 9281
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v5, v11}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 9275
    .end local v5    # "tmp":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9286
    .end local v4    # "target":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v7, v8, :cond_3

    .line 9288
    invoke-virtual {p0, v9, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 9289
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 9290
    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    .line 9293
    .end local v0    # "i":I
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    invoke-virtual {p0, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 9295
    .end local v2    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    return-void
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 14
    .param p1, "sr"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10371
    const-string v8, ""

    .line 10372
    .local v8, "simNum":Ljava/lang/String;
    const-string v5, ""

    .line 10373
    .local v5, "imsi":Ljava/lang/String;
    const/4 v9, 0x0

    .line 10375
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 10376
    .restart local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    .line 10377
    const/4 v0, 0x0

    .line 10438
    :cond_0
    :goto_0
    return v0

    .line 10379
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 10380
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 10381
    .local v3, "currentDataActiveSim":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 10382
    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 10387
    .end local v3    # "currentDataActiveSim":I
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_3

    .line 10388
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 10391
    :cond_3
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 10392
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 10393
    .local v10, "wifiNetwork":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 10395
    .local v0, "checkFlag":Z
    const/4 v7, 0x0

    .line 10396
    .local v7, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 10397
    .local v1, "classes":[Ljava/lang/String;
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "46001"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "45407"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "46009"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_7

    .line 10399
    const/16 v11, 0xc

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall"

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo"

    aput-object v12, v7, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    .line 10401
    .restart local v7    # "packages":[Ljava/lang/String;
    const/16 v11, 0xc

    new-array v1, v11, [Ljava/lang/String;

    .end local v1    # "classes":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114.ui.main.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g.wo3g"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v12, v1, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.mail.ui.LoginAcivity"

    aput-object v12, v1, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g.wo3g"

    aput-object v12, v1, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall.MobileBusinessHall"

    aput-object v12, v1, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114.activity.StartActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo.ui.TipActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui.BeginActivity"

    aput-object v12, v1, v11

    .line 10410
    .restart local v1    # "classes":[Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v7, :cond_0

    .line 10411
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 10412
    if-eqz p1, :cond_0

    .line 10414
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 10415
    .local v6, "in":Landroid/content/Intent;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 10416
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 10419
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 10420
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v11, v1

    if-ge v4, v11, :cond_0

    .line 10421
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v1, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 10422
    const/4 v0, 0x1

    .line 10423
    goto/16 :goto_0

    .line 10385
    .end local v0    # "checkFlag":Z
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_6
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 10404
    .restart local v0    # "checkFlag":Z
    .restart local v1    # "classes":[Ljava/lang/String;
    .restart local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v7    # "packages":[Ljava/lang/String;
    .restart local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_7
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "46000"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "46002"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "46007"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 10406
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.aspire.mm"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.autonavi.cmccmap"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.cmcc.mobilevideo"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "cmccwm.mobilemusic"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.chinamobile.cmccwifi"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "cn.emagsoftware.gamehall"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.hisunflytone.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.huawei.pisa.activity"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.sec.android.app.customerservice"

    aput-object v12, v7, v11

    .restart local v7    # "packages":[Ljava/lang/String;
    goto/16 :goto_2

    .line 10420
    .restart local v4    # "i":I
    .restart local v6    # "in":Landroid/content/Intent;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 10427
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    :cond_9
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 10428
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 10429
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v11, v7

    if-ge v4, v11, :cond_0

    .line 10430
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 10431
    const/4 v0, 0x1

    .line 10432
    goto/16 :goto_0

    .line 10429
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method private checkFinishBootingLocked()Z
    .locals 4

    .prologue
    .line 4859
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4860
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 4861
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4862
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_0

    .line 4863
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4864
    const/4 v1, 0x1

    .line 4866
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 4867
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 4869
    :cond_2
    return v0
.end method

.method private checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 32
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "cmp"    # Landroid/content/ComponentName;
    .param p6, "className"    # Ljava/lang/String;

    .prologue
    .line 8786
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v24

    .line 8787
    .local v24, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8790
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 8792
    .local v8, "userId":I
    :goto_0
    if-eqz p5, :cond_12

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 8793
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 8794
    .local v14, "cmpPackageName":Ljava/lang/String;
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8796
    :try_start_0
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v28

    .line 8797
    .local v28, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v28, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8798
    const/16 v18, 0x0

    .line 8799
    .local v18, "isActivityAllowed":Z
    const-string v2, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8800
    .local v9, "activity":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 8801
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 8803
    :cond_0
    sget-object v12, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v16, v12, v17

    .line 8804
    .local v16, "exception":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8805
    const/16 v18, 0x1

    .line 8809
    .end local v16    # "exception":Ljava/lang/String;
    :cond_1
    if-eqz v18, :cond_9

    .line 8810
    const/high16 v2, 0x800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8811
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " succeeded"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8858
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v22    # "len$":I
    .end local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_2
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 8860
    :try_start_1
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v27

    .line 8861
    .local v27, "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v29

    .line 8862
    .local v29, "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v29, :cond_11

    move-object/from16 v0, v29

    invoke-interface {v0, v8}, Landroid/app/enterprise/ISecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 8864
    :cond_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v23

    .line 8865
    .local v23, "list":Ljava/util/List;
    if-eqz v23, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 8866
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    .line 8867
    .local v30, "topActivity":Ljava/lang/String;
    const/16 v18, 0x0

    .line 8868
    .restart local v18    # "isActivityAllowed":Z
    const/16 v20, 0x0

    .line 8869
    .local v20, "isTopActivityException":Z
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 8870
    .restart local v9    # "activity":Ljava/lang/String;
    sget-object v12, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-object v16, v12, v17

    .line 8871
    .restart local v16    # "exception":Ljava/lang/String;
    if-eqz v30, :cond_5

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8872
    const/16 v20, 0x1

    .line 8874
    :cond_5
    if-eqz v9, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 8875
    const/16 v18, 0x1

    .line 8879
    .end local v16    # "exception":Ljava/lang/String;
    :cond_6
    if-eqz v20, :cond_11

    if-nez v18, :cond_11

    .line 8880
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8881
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Blocked due to password change enforcement."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 8883
    const/4 v2, 0x0

    .line 8959
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v20    # "isTopActivityException":Z
    .end local v22    # "len$":I
    .end local v23    # "list":Ljava/util/List;
    .end local v27    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v29    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v30    # "topActivity":Ljava/lang/String;
    :goto_4
    return v2

    .line 8790
    .end local v8    # "userId":I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 8803
    .restart local v8    # "userId":I
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v14    # "cmpPackageName":Ljava/lang/String;
    .restart local v16    # "exception":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "isActivityAllowed":Z
    .restart local v22    # "len$":I
    .restart local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 8814
    .end local v16    # "exception":Ljava/lang/String;
    :cond_9
    :try_start_2
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings restriction policy blocks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from starting!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8815
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 8816
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8817
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Blocked due to settings changes not allowed."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8819
    const/4 v2, 0x0

    goto :goto_4

    .line 8822
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v22    # "len$":I
    .end local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_0
    move-exception v15

    .line 8823
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 8825
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_a
    sget-object v2, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8828
    :cond_b
    :try_start_3
    const-string/jumbo v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v21

    .line 8830
    .local v21, "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v21, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8831
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8832
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Task manager is not allowed."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 8834
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 8836
    .end local v21    # "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_1
    move-exception v15

    .line 8837
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Is edm running?"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8839
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v2, "com.vlingo.midas"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.samsung.voiceserviceplatform"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8841
    :cond_d
    :try_start_4
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v28

    .line 8842
    .restart local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v28, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8843
    :cond_e
    const-string v2, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8844
    .restart local v9    # "activity":Ljava/lang/String;
    if-nez v9, :cond_f

    .line 8845
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 8847
    :cond_f
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8848
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Blocked due to S Voice not allowed."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 8851
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 8853
    .end local v9    # "activity":Ljava/lang/String;
    .end local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_2
    move-exception v15

    .line 8854
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 8870
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v16    # "exception":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "isActivityAllowed":Z
    .restart local v20    # "isTopActivityException":Z
    .restart local v22    # "len$":I
    .restart local v23    # "list":Ljava/util/List;
    .restart local v27    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .restart local v29    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .restart local v30    # "topActivity":Ljava/lang/String;
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 8887
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v16    # "exception":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v20    # "isTopActivityException":Z
    .end local v22    # "len$":I
    .end local v23    # "list":Ljava/util/List;
    .end local v27    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v29    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v30    # "topActivity":Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 8888
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 8893
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_11
    :try_start_5
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v14, v3, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v19

    .line 8896
    .local v19, "isAllowed":Z
    if-nez v19, :cond_12

    .line 8897
    const-string v2, "ActivityStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8898
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 8899
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 8901
    .end local v19    # "isAllowed":Z
    :catch_4
    move-exception v15

    .line 8902
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 8909
    .end local v14    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_12
    if-eqz p4, :cond_13

    const-string v2, "edm:nonSystemUid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "edm:startedByAdmin"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 8912
    :cond_13
    if-eqz p2, :cond_16

    .line 8914
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 8915
    .local v25, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 8919
    .local v11, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_16

    .line 8926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 8927
    .local v26, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v13

    .line 8929
    .local v13, "callingPkgName":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/server/am/DynamicHiddenApp;->isWidgetUsingPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8931
    :cond_14
    :try_start_6
    const-string v2, "application_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v10

    .line 8934
    .local v10, "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    if-eqz v10, :cond_15

    move-object/from16 v0, v25

    invoke-interface {v10, v0, v8}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 8935
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which is at prevent start black list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8937
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8938
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 8940
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 8943
    :cond_15
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " succeeded"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 8957
    .end local v10    # "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "callingPkgName":Ljava/lang/String;
    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    :cond_16
    :goto_5
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8959
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 8945
    .restart local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "callingPkgName":Ljava/lang/String;
    .restart local v25    # "pkgName":Ljava/lang/String;
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catch_5
    move-exception v15

    .line 8946
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 8954
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "callingPkgName":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    :cond_17
    const/16 p4, 0x0

    goto :goto_5
.end method

.method public static convertDisplayIdToScreenZone(I)I
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 9919
    const/4 v0, 0x0

    .line 9920
    .local v0, "obscuredZone":I
    if-nez p0, :cond_1

    .line 9921
    const/4 v0, 0x1

    .line 9927
    :cond_0
    :goto_0
    return v0

    .line 9922
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 9923
    const/4 v0, 0x2

    goto :goto_0

    .line 9924
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 9925
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static convertScreenZoneToDisplayId(I)I
    .locals 2
    .param p0, "screenZone"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 9931
    if-ne p0, v0, :cond_1

    .line 9932
    const/4 v0, 0x0

    .line 9938
    :cond_0
    :goto_0
    return v0

    .line 9933
    :cond_1
    if-eq p0, v1, :cond_0

    .line 9935
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 9936
    goto :goto_0

    .line 9938
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 7328
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x0

    .line 7329
    .local v7, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .line 7330
    .local v6, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 7331
    .local v2, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 7332
    .local v8, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_e

    .line 7333
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 7334
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_1

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 7332
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 7337
    :cond_1
    if-nez v6, :cond_2

    .line 7338
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7339
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/String;

    .line 7341
    :cond_2
    const/4 v8, 0x1

    .line 7342
    if-nez p6, :cond_9

    if-nez p5, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v11

    if-nez v11, :cond_9

    :cond_3
    const/4 v4, 0x1

    .line 7343
    .local v4, "full":Z
    :goto_2
    if-eqz p9, :cond_4

    .line 7344
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7345
    const/16 p9, 0x0

    .line 7347
    :cond_4
    if-eqz p10, :cond_5

    .line 7348
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7349
    const/16 p10, 0x0

    .line 7351
    :cond_5
    if-eqz p11, :cond_6

    .line 7352
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7353
    const/16 p11, 0x0

    .line 7355
    :cond_6
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v11, :cond_7

    .line 7356
    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 7357
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7358
    if-eqz v4, :cond_a

    const-string v11, "* "

    :goto_3
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7359
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7360
    if-eqz v4, :cond_b

    .line 7361
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, p1, v11}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7370
    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    const-string v11, "  * "

    :goto_5
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7371
    const-string v11, " #"

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7372
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7373
    if-eqz v4, :cond_d

    .line 7374
    invoke-virtual {v9, p1, v6}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7382
    :cond_8
    :goto_6
    if-eqz p7, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_0

    .line 7385
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 7387
    :try_start_0
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7389
    .local v10, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v11, v12, v13, v6, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7393
    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7395
    :try_start_2
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7402
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_7
    const/16 p9, 0x1

    goto/16 :goto_1

    .line 7342
    .end local v4    # "full":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 7358
    .restart local v4    # "full":Z
    :cond_a
    const-string v11, "  "

    goto :goto_3

    .line 7362
    :cond_b
    if-eqz p5, :cond_7

    .line 7364
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_7

    .line 7365
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7366
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 7370
    :cond_c
    const-string v11, "    "

    goto :goto_5

    .line 7375
    :cond_d
    if-eqz p5, :cond_8

    .line 7377
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7378
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    .line 7379
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 7395
    .restart local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7397
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v3

    .line 7398
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Failure while dumping the activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 7399
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 7400
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Got a RemoteException while dumping the activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 7405
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "full":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v8
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 3257
    if-nez p1, :cond_1

    .line 3294
    :cond_0
    :goto_0
    return v4

    .line 3261
    :cond_1
    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3262
    .local v3, "permission":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3268
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3275
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3279
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 3281
    const/4 v4, 0x1

    goto :goto_0

    .line 3270
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 3271
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3284
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 3285
    .local v1, "opCode":I
    if-eq v1, v7, :cond_0

    .line 3289
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v5, v1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 3291
    const/4 v4, 0x2

    goto :goto_0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3230
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 3233
    const/4 v0, 0x1

    .line 3252
    :goto_0
    return v0

    .line 3236
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v7

    .line 3237
    goto :goto_0

    .line 3240
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v6

    .line 3241
    .local v6, "opCode":I
    if-ne v6, v8, :cond_2

    move v0, v7

    .line 3242
    goto :goto_0

    .line 3245
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 3247
    if-nez p5, :cond_3

    .line 3248
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v7

    .line 3252
    goto :goto_0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 3

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 647
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 649
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 650
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    monitor-exit v1

    return-object v0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 10
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 7523
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 7524
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v9, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 7525
    const/4 v7, 0x0

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 7526
    iget v7, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 7528
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 7529
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7530
    .local v2, "numTasks":I
    new-array v4, v2, [I

    .line 7531
    .local v4, "taskIds":[I
    new-array v5, v2, [Ljava/lang/String;

    .line 7532
    .local v5, "taskNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 7533
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 7534
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v7, v4, v0

    .line 7535
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v5, v0

    .line 7532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7535
    :cond_0
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "unknown"

    goto :goto_1

    .line 7540
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iput-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 7541
    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 7542
    return-object v1
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 634
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 636
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 637
    const-string v0, "StatusBarManager"

    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "zone"    # I

    .prologue
    .line 9214
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 9215
    if-nez p1, :cond_0

    .line 9216
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 9217
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_4

    .line 9218
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    monitor-exit v9

    .line 9239
    .end local v1    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    return-object v7

    .line 9221
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 9222
    .local v2, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 9223
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9224
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9225
    .local v3, "size":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "stackNdx":I
    :goto_2
    if-ltz v5, :cond_3

    .line 9226
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 9227
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9225
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 9230
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 9231
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v10, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    if-ne v8, p1, :cond_1

    .line 9234
    monitor-exit v9

    goto :goto_0

    .line 9240
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 9222
    .restart local v0    # "displayNdx":I
    .restart local v2    # "numDisplays":I
    .restart local v3    # "size":I
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9239
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    const/4 v7, 0x0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleDisplayAdded(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    .line 7470
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 7471
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 7472
    .local v1, "newDisplay":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 7473
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 7474
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_2

    .line 7475
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gone before initialization complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7476
    monitor-exit v3

    .line 7489
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_0
    :goto_1
    return-void

    .line 7471
    .end local v1    # "newDisplay":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 7478
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "newDisplay":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7485
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7486
    if-eqz v1, :cond_0

    .line 7487
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    goto :goto_1

    .line 7485
    .end local v1    # "newDisplay":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 7513
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 7514
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7515
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    .line 7518
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7519
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 7520
    return-void

    .line 7518
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 7492
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 7493
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7494
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_1

    .line 7495
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 7496
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 7497
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 7496
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7499
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7508
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7509
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 7510
    return-void

    .line 7508
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private isKnoxmode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 10446
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10447
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10448
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 10450
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 10451
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10452
    const/4 v3, 0x1

    .line 10454
    :cond_0
    return v3
.end method

.method private isLeanbackOnlyDevice()Z
    .locals 3

    .prologue
    .line 8769
    const/4 v0, 0x0

    .line 8771
    .local v0, "onLeanbackOnly":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback_only"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 8777
    :goto_0
    return v0

    .line 8773
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isPersona(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 8963
    const/4 v1, 0x0

    .line 8964
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 8966
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 8967
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8968
    const/4 v1, 0x1

    .line 8972
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_0
    return v1
.end method

.method private isProfiledUserLocked(II)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "taskUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 10518
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 10520
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 10521
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p2, :cond_0

    .line 10522
    const/4 v3, 0x1

    .line 10526
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v3
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7138
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_0

    .line 7145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7140
    :pswitch_0
    const-string v0, "LOCKED"

    goto :goto_0

    .line 7142
    :pswitch_1
    const-string v0, "PINNED"

    goto :goto_0

    .line 7144
    :pswitch_2
    const-string v0, "NONE"

    goto :goto_0

    .line 7138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private needsCascadeForceHidden()Z
    .locals 2

    .prologue
    .line 9652
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mKeyguardGoingAway:Z

    if-nez v0, :cond_0

    .line 9653
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9654
    const/4 v0, 0x1

    .line 9657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 7229
    if-eqz p1, :cond_2

    .line 7230
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7231
    :cond_0
    if-eqz p3, :cond_1

    .line 7232
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 7234
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7235
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7236
    const/4 v0, 0x1

    .line 7239
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 26
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 5620
    const/16 v23, 0x0

    .line 5622
    .local v23, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    if-eqz v2, :cond_2

    .line 5624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v23, v0

    .line 5656
    :cond_0
    :goto_0
    if-nez v23, :cond_1

    .line 5665
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v23

    .line 5668
    const/4 v2, 0x1

    const-string/jumbo v3, "restoreRecentTask"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 5673
    :cond_1
    if-nez v23, :cond_4

    .line 5677
    const/4 v2, 0x0

    .line 5697
    :goto_1
    return v2

    .line 5629
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 5647
    .local v21, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .local v24, "stackNdx":I
    :goto_2
    if-ltz v24, :cond_0

    .line 5648
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityStack;

    .line 5649
    .local v25, "tmpStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v2, :cond_3

    .line 5650
    move-object/from16 v23, v25

    .line 5651
    goto :goto_0

    .line 5647
    :cond_3
    add-int/lit8 v24, v24, -0x1

    goto :goto_2

    .line 5680
    .end local v21    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v24    # "stackNdx":I
    .end local v25    # "tmpStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZZ)V

    .line 5683
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 5684
    .local v19, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v20, v2, -0x1

    .local v20, "activityNdx":I
    :goto_3
    if-ltz v20, :cond_7

    .line 5685
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    .line 5687
    .local v22, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, v22

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v22

    iget-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isPermissionRequestActivity:Z

    move/from16 v18, v0

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZIZ)V

    .line 5684
    add-int/lit8 v20, v20, -0x1

    goto :goto_3

    .line 5687
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 5697
    .end local v22    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method acquireAppLaunchPerfLock()V
    .locals 0

    .prologue
    .line 5969
    return-void
.end method

.method acquireLaunchWakelock()V
    .locals 4

    .prologue
    const/16 v1, 0x68

    .line 4847
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4848
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4850
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4852
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 4877
    const/16 v19, 0x0

    .line 4878
    .local v19, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v14, 0x0

    .line 4879
    .local v14, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v18, 0x0

    .line 4880
    .local v18, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v10, 0x0

    .line 4881
    .local v10, "NS":I
    const/4 v2, 0x0

    .line 4882
    .local v2, "NF":I
    const/4 v12, 0x0

    .line 4883
    .local v12, "booting":Z
    const/4 v11, 0x0

    .line 4885
    .local v11, "activityRemoved":Z
    const/4 v13, -0x1

    .line 4888
    .local v13, "displayId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4889
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_3

    .line 4892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4900
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4901
    if-eqz p2, :cond_0

    .line 4902
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 4910
    :cond_0
    if-eqz p3, :cond_1

    .line 4911
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4916
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 4919
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_a

    .line 4920
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v12

    .line 4932
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4933
    if-eqz v5, :cond_4

    .line 4934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 4937
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4945
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4949
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;

    move-result-object v19

    .line 4950
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4956
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 4959
    .local v16, "mFinishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 4960
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4961
    .restart local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 4964
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 4965
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4966
    .restart local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4971
    :cond_8
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v10, :cond_e

    .line 4972
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4973
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 4974
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v17, :cond_9

    .line 4975
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_d

    .line 4976
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 4971
    :cond_9
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 4921
    .end local v15    # "i":I
    .end local v16    # "mFinishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-eqz v3, :cond_3

    .line 4922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_b

    .line 4924
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@Boot: FocusedStack is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4927
    :cond_b
    const-string v3, "ActivityManager"

    const-string v4, "!@Boot: mFocusedStack is not mHomeStack "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4950
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 4978
    .restart local v15    # "i":I
    .restart local v16    # "mFinishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_3

    .line 4985
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_e
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v2, :cond_10

    .line 4986
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4987
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 4988
    .restart local v17    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v17, :cond_f

    .line 4989
    const/4 v3, 0x1

    const-string/jumbo v4, "finish-idle"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v3

    or-int/2addr v11, v3

    .line 4985
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 4993
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_10
    if-nez v12, :cond_12

    .line 4995
    if-eqz v18, :cond_11

    .line 4996
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_11

    .line 4997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 4996
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 5001
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 5002
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5003
    .restart local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5004
    const/4 v15, 0x0

    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_12

    .line 5005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 5004
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 5010
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 5014
    if-eqz v11, :cond_13

    .line 5015
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 5028
    :cond_13
    return-object v5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 6560
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6561
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 6562
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 1

    .prologue
    .line 1530
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete(I)Z

    move-result v0

    return v0
.end method

.method allPausedActivitiesComplete(I)Z
    .locals 8
    .param p1, "displayId"    # I

    .prologue
    .line 1535
    const/4 v1, 0x1

    .line 1536
    .local v1, "pausing":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1544
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1545
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_2

    .line 1546
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1564
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1565
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    .line 1571
    const/4 v1, 0x0

    .line 1577
    .end local v1    # "pausing":Z
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    return v1

    .line 1545
    .restart local v1    # "pausing":Z
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1536
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method allResumedActivitiesComplete()Z
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(Z)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(ZI)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(Z)Z
    .locals 1
    .param p1, "resumedActivityMustBeNotNull"    # Z

    .prologue
    .line 1405
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(ZI)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(ZI)Z
    .locals 7
    .param p1, "resumedActivityMustBeNotNull"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 1414
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1415
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1430
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1431
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1432
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1443
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1444
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    .line 1445
    const/4 v5, 0x0

    .line 1461
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 1430
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1414
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1455
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1461
    const/4 v5, 0x1

    goto :goto_2
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .prologue
    .line 1380
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1381
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1382
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1383
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1384
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_1

    .line 1382
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1387
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1388
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v5, :cond_0

    .line 1391
    :cond_2
    const/4 v5, 0x0

    .line 1395
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 1380
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1395
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_2
.end method

.method allResumedActivitiesVisible()Z
    .locals 1

    .prologue
    .line 1466
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible(I)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesVisible(I)Z
    .locals 7
    .param p1, "displayId"    # I

    .prologue
    .line 1471
    const/4 v1, 0x0

    .line 1472
    .local v1, "foundResumed":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1480
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1481
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 1482
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1483
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1484
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    .line 1485
    iget-boolean v6, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1486
    :cond_0
    const/4 v6, 0x0

    .line 1492
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v6

    .line 1488
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    const/4 v1, 0x1

    .line 1481
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1472
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    move v6, v1

    .line 1492
    goto :goto_2
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1223
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p1, "id"    # I
    .param p2, "restoreFromRecents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1233
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1234
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1235
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1236
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 1237
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1238
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1239
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_1

    .line 1263
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_2
    return-object v5

    .line 1236
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1234
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1247
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, p1}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1248
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    if-nez v5, :cond_4

    move-object v5, v7

    .line 1250
    goto :goto_2

    .line 1253
    :cond_4
    if-eqz p2, :cond_0

    .line 1257
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v5, v7

    .line 1260
    goto :goto_2
.end method

.method arrangeTaskToReturnTo(I)V
    .locals 14
    .param p1, "displayId"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 6386
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6387
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 6388
    const/4 v1, -0x1

    .line 6389
    .local v1, "homeTaskNdx":I
    const/4 v7, -0x1

    .line 6390
    .local v7, "recentTaskNdx":I
    const/4 v4, 0x0

    .line 6391
    .local v4, "lastTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 6392
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 6393
    .local v8, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_1

    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6394
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6395
    if-gez v1, :cond_0

    .line 6396
    move v1, v2

    .line 6411
    :cond_0
    :goto_1
    move-object v4, v8

    .line 6391
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6405
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 6406
    move v7, v2

    .line 6407
    invoke-virtual {v8, v12}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1

    .line 6408
    :cond_3
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v9

    if-nez v9, :cond_4

    if-ge v2, v1, :cond_0

    .line 6409
    :cond_4
    invoke-virtual {v8, v12}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1

    .line 6414
    .end local v8    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_7

    if-le v1, v11, :cond_7

    .line 6415
    const/4 v5, 0x0

    .line 6416
    .local v5, "overHomeTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 6417
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 6418
    .restart local v5    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_b

    invoke-virtual {v5, v13}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 6422
    :cond_6
    if-eqz v5, :cond_7

    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_7

    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_7

    .line 6436
    invoke-virtual {v5, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6440
    .end local v3    # "j":I
    .end local v5    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_9

    if-le v7, v11, :cond_9

    .line 6441
    const/4 v6, 0x0

    .line 6442
    .local v6, "overRecentTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "j":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 6443
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "overRecentTask":Lcom/android/server/am/TaskRecord;
    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 6444
    .restart local v6    # "overRecentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_c

    invoke-virtual {v6, v13}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 6448
    :cond_8
    if-eqz v6, :cond_9

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_9

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v9

    if-nez v9, :cond_9

    .line 6465
    invoke-virtual {v6, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6469
    .end local v3    # "j":I
    .end local v6    # "overRecentTask":Lcom/android/server/am/TaskRecord;
    :cond_9
    if-gez v1, :cond_a

    if-gez v7, :cond_a

    .line 6470
    if-eqz v4, :cond_a

    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_a

    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isMultiWindowStack()Z

    move-result v9

    if-nez v9, :cond_a

    .line 6479
    invoke-virtual {v4, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6489
    .end local v1    # "homeTaskNdx":I
    .end local v2    # "i":I
    .end local v4    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v7    # "recentTaskNdx":I
    :cond_a
    return-void

    .line 6416
    .restart local v1    # "homeTaskNdx":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "recentTaskNdx":I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6442
    .end local v5    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "overRecentTask":Lcom/android/server/am/TaskRecord;
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1321
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1322
    .local v5, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1323
    .local v0, "didSomething":Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_7

    .line 1324
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v8, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1325
    .local v8, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "stackNdx":I
    :goto_1
    if-ltz v7, :cond_6

    .line 1326
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    .line 1327
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1325
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1331
    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1332
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 1333
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v9, :cond_0

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_0

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1337
    const/4 v4, 0x0

    .line 1342
    .local v4, "minimize":Z
    :try_start_0
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    const-string v9, "android"

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1344
    :cond_2
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v9, v10, v11}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1347
    :cond_3
    if-nez v4, :cond_4

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x1

    invoke-virtual {p0, v3, p1, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1349
    const/4 v0, 0x1

    goto :goto_2

    .line 1347
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1354
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1357
    :catch_0
    move-exception v2

    .line 1358
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in new application when starting activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1360
    throw v2

    .line 1323
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "minimize":Z
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1376
    .end local v7    # "stackNdx":I
    .end local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7
    return v0
.end method

.method cancelInitializingActivities()V
    .locals 4

    .prologue
    .line 1596
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1597
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1598
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 1599
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1598
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1596
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1602
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method public changeTaskToMinimized(ILandroid/graphics/Point;Z)Z
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "iconCoordinates"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    const/4 v8, 0x1

    .line 9328
    const/4 v1, 0x0

    .line 9329
    .local v1, "result":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 9330
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 9331
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_1

    .line 9332
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 9333
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    .line 9334
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x20000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9335
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v3

    .line 9337
    .local v3, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "nonFloatingTopTaskIndex":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9338
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9337
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9344
    :cond_0
    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToCascadeLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Point;ZZ)Z

    move-result v1

    .line 9345
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p1, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 9346
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "changeTaskToMinimized"

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    .line 9355
    .end local v0    # "nonFloatingTopTaskIndex":I
    .end local v3    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 9356
    return v1

    .line 9349
    .restart local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v5, :cond_1

    .line 9350
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gamemode: It cannot be converted into the minimized icon. The top Activity does not have the option OPTION_FULLSCREEN_MINIMIZABLE.("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9355
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 12
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    const/4 v6, 0x0

    .line 9298
    const/4 v4, 0x0

    .line 9299
    .local v4, "result":Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 9300
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 9301
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_5

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x8000000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 9303
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    .line 9304
    .local v3, "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 9305
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_4

    .line 9306
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 9307
    .local v1, "metaData":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_0

    const-string v8, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 9309
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 9310
    .local v2, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v2, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9311
    monitor-exit v7

    .line 9324
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :goto_1
    return v6

    .line 9306
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 9313
    .restart local v1    # "metaData":Landroid/os/Bundle;
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v5, p1, p3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToCascadeLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Point;ZZ)Z

    move-result v4

    .line 9323
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_3
    :goto_2
    monitor-exit v7

    move v6, v4

    .line 9324
    goto :goto_1

    .line 9315
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 9318
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_5
    if-eqz v5, :cond_3

    .line 9319
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v8, 0xc9

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 9320
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v8, 0xc9

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 9323
    .end local v2    # "msg":Landroid/os/Message;
    .end local v5    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public changeTypeOfTaskToNormal(I)V
    .locals 4
    .param p1, "zone"    # I

    .prologue
    .line 9244
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 9245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 9246
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 9247
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 9248
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    .line 9249
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToNormalLocked(Lcom/android/server/am/TaskRecord;)V

    .line 9252
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    monitor-exit v3

    .line 9253
    return-void

    .line 9252
    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method checkFullScreenOnlyExist(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;)Z
    .locals 12
    .param p2, "curStack"    # Lcom/android/server/am/ActivityStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/ActivityStack;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v10, 0x0

    .line 771
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 772
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_6

    .line 773
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 774
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 772
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 776
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 777
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_0

    .line 778
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 779
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v6, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne v9, v11, :cond_5

    .line 780
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 781
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "activityNdx":I
    :goto_2
    if-ltz v2, :cond_5

    .line 782
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 783
    .local v3, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_2

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 781
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 786
    :cond_3
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x200000

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 788
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_2

    .line 789
    const/4 v9, 0x1

    .line 798
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_3
    return v9

    .restart local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v2    # "activityNdx":I
    .restart local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "taskNdx":I
    .restart local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_4
    move v9, v10

    .line 792
    goto :goto_3

    .line 777
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6
    move v9, v10

    .line 798
    goto :goto_3
.end method

.method checkReadyForSleepLocked()V
    .locals 5

    .prologue
    .line 6565
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6620
    :cond_0
    :goto_0
    return-void

    .line 6570
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    if-nez v4, :cond_6

    .line 6571
    const/4 v1, 0x0

    .line 6572
    .local v1, "dontSleep":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_1
    if-ltz v0, :cond_3

    .line 6573
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6574
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_2
    if-ltz v2, :cond_2

    .line 6575
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v4

    or-int/2addr v1, v4

    .line 6574
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 6572
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6579
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 6583
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 6584
    const/4 v1, 0x1

    .line 6587
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 6591
    const/4 v1, 0x1

    .line 6594
    :cond_5
    if-nez v1, :cond_0

    .line 6605
    .end local v0    # "displayNdx":I
    .end local v1    # "dontSleep":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "displayNdx":I
    :goto_3
    if-ltz v0, :cond_8

    .line 6606
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6607
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "stackNdx":I
    :goto_4
    if-ltz v2, :cond_7

    .line 6608
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 6607
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 6605
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 6612
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 6614
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6615
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6617
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_0

    .line 6618
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .prologue
    .line 6914
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6915
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6916
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 6917
    .local v4, "topStackNdx":I
    move v2, v4

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 6918
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 6919
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 6917
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6914
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6922
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .prologue
    .line 5043
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5044
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5045
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 5046
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 5045
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5043
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5049
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method comeOutOfSleepForDisplayLocked(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 10034
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10035
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 10038
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 10039
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 10040
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 10041
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 10042
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10043
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 10039
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10046
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 10047
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 1

    .prologue
    .line 6505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->comeOutOfSleepIfNeededLocked(Z)V

    .line 6506
    return-void
.end method

.method comeOutOfSleepIfNeededLocked(Z)V
    .locals 10
    .param p1, "causeKeyguardWaitingForActivityDrawn"    # Z

    .prologue
    .line 6510
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 6511
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6512
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6515
    :cond_0
    const/4 v0, -0x1

    .line 6523
    .local v0, "MultipleScreenState":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 6534
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6535
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 6536
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 6537
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 6538
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6540
    if-nez p1, :cond_2

    .line 6546
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 6535
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 6549
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6550
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 6523
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6556
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 6557
    return-void
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 3299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3303
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "updateFocus"    # Z

    .prologue
    .line 3309
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3322
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    if-nez v5, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3324
    :cond_0
    const/4 v2, 0x0

    .line 3327
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_2

    .line 3332
    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3333
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3334
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v2, :cond_1

    .line 3339
    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 3425
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_0
    return-object v2

    .line 3352
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3353
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_3

    .line 3355
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3356
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 3359
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v6, :cond_5

    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3368
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 3377
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v5, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 3378
    .local v1, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_7

    .line 3379
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3380
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3384
    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 3378
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3419
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3423
    goto :goto_0

    .line 3425
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v1    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 5547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "zone"    # I

    .prologue
    .line 5551
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5552
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    .line 5553
    const/4 v2, 0x0

    .line 5592
    :goto_0
    return-object v2

    .line 5575
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v0, p0, p1, v2, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 5579
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5580
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 5592
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 5575
    .end local v0    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_1
    const/4 v2, 0x2

    goto :goto_1
.end method

.method createStackOnDisplay(IILandroid/graphics/Rect;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IILandroid/graphics/Rect;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method createStackOnDisplay(IILandroid/graphics/Rect;Z)Lcom/android/server/am/ActivityStack;
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "isSelectiveState"    # Z

    .prologue
    .line 5533
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5534
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    .line 5535
    const/4 v3, 0x0

    .line 5542
    :goto_0
    return-object v3

    .line 5537
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 5538
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5539
    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 5540
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 5541
    .local v2, "stackBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;)V

    .line 5542
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method createVirtualActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 3
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 5408
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    .line 5410
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5413
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5414
    return-object v0
.end method

.method createVirtualScreen(II)I
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1738
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1739
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1740
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1741
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    iget v4, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;IIIZ)V

    .line 1742
    .local v0, "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1743
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1744
    const v1, 0x1339e2

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1747
    :cond_0
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    return v1
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 3
    .param p1, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 5428
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5429
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 5432
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 5433
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 5434
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    .line 5436
    .end local v1    # "stackId":I
    :cond_0
    return-void
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .locals 12
    .param p1, "doResume"    # Z

    .prologue
    const/4 v11, 0x0

    .line 4818
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4819
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 4822
    .local v10, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4824
    :catch_0
    move-exception v9

    .line 4825
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during pending activity launch pal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    move v6, v11

    .line 4822
    goto :goto_1

    .line 4828
    .end local v10    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 7150
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFocusedStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7151
    const-string v2, " mLastFocusedStack="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSleepTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7164
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserStackInFront="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7166
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActivityContainers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLockTaskModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7168
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 7169
    .local v1, "packages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 7170
    const-string v2, " mLockTaskPackages (userId:packages)="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 7172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 7173
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7176
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mLockTaskModeTasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7221
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 7244
    const/16 v24, 0x0

    .line 7245
    .local v24, "printed":Z
    const/4 v8, 0x0

    .line 7246
    .local v8, "needSep":Z
    const/16 v22, 0x0

    .local v22, "displayNdx":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    .line 7247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7248
    .local v21, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string v3, "Display #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7249
    const-string v3, " (activities from top to bottom):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7250
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 7251
    .local v27, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v26, v3, -0x1

    .local v26, "stackNdx":I
    :goto_1
    if-ltz v26, :cond_5

    .line 7252
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 7253
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v25, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7254
    .local v25, "stackHeader":Ljava/lang/StringBuilder;
    const-string v3, "  Stack #"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7255
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7256
    const-string v3, ":"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7263
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7265
    iget-object v11, v2, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v12, "    "

    const-string v13, "Run"

    const/4 v14, 0x0

    if-nez p3, :cond_4

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7269
    move/from16 v8, v24

    .line 7270
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 7272
    .local v23, "pr":Z
    if-eqz v23, :cond_0

    .line 7273
    const/16 v24, 0x1

    .line 7274
    const/4 v8, 0x0

    .line 7290
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 7292
    if-eqz v23, :cond_1

    .line 7293
    const/16 v24, 0x1

    .line 7294
    const/4 v8, 0x0

    .line 7296
    :cond_1
    if-eqz p3, :cond_3

    .line 7297
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 7299
    if-eqz v23, :cond_2

    .line 7300
    const/16 v24, 0x1

    .line 7301
    const/4 v8, 0x1

    .line 7303
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7306
    :cond_3
    move/from16 v8, v24

    .line 7251
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_1

    .line 7265
    .end local v23    # "pr":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 7246
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 7310
    .end local v21    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v26    # "stackNdx":I
    .end local v27    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Fin"

    const/4 v14, 0x0

    if-nez p3, :cond_7

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to finish:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7312
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Stop"

    const/4 v14, 0x0

    if-nez p3, :cond_8

    const/4 v15, 0x1

    :goto_4
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to stop:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7314
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Wait"

    const/4 v14, 0x0

    if-nez p3, :cond_9

    const/4 v15, 0x1

    :goto_5
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting for another to become visible:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7317
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_a

    const/4 v15, 0x1

    :goto_6
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7319
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_b

    const/4 v15, 0x1

    :goto_7
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 7322
    return v24

    .line 7310
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 7312
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 7314
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 7317
    :cond_a
    const/4 v15, 0x0

    goto :goto_6

    .line 7319
    :cond_b
    const/4 v15, 0x0

    goto :goto_7
.end method

.method endFixedScreenModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9894
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    if-ne v0, p1, :cond_0

    .line 9895
    const-string v0, "ActivityManager"

    const-string v1, "Fixed task dismissed due to endFixedScreenModeIfTaskEnding"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 9896
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->setFixedTask(Lcom/android/server/am/TaskRecord;)V

    .line 9898
    :cond_0
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 6
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 6902
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6903
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6904
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 6905
    .local v4, "topStackNdx":I
    move v2, v4

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 6906
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 6907
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6905
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6902
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6911
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method ensureActivitiesVisibleLockedForUniversialTaskHistory(Lcom/android/server/am/ActivityRecord;I)V
    .locals 25
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 9943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 9944
    .local v21, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/16 v16, 0x0

    .line 9946
    .local v16, "obscuredScreenZone":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    invoke-virtual {v3}, Lcom/android/server/am/DualScreenPolicy;->getScreenStateLocked()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDualScreenPolicy:Lcom/android/server/am/DualScreenPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenPolicy;->getCurrentScreenStateLocked()I

    move-result v4

    or-int v18, v3, v4

    .line 9947
    .local v18, "screenState":I
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    .line 9948
    const/16 v16, 0x2

    .line 9953
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 9954
    .local v17, "obscuredZones":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v13, v3, :cond_2

    .line 9955
    const/4 v3, 0x0

    aput v3, v17, v13

    .line 9954
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 9949
    .end local v13    # "i":I
    .end local v17    # "obscuredZones":[I
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    .line 9950
    const/16 v16, 0x1

    goto :goto_0

    .line 9958
    .restart local v13    # "i":I
    .restart local v17    # "obscuredZones":[I
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 9960
    .local v8, "N":I
    add-int/lit8 v13, v8, -0x1

    :goto_2
    if-ltz v13, :cond_e

    .line 9961
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9962
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 9964
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_4

    .line 9960
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 9968
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v11

    .line 9970
    .local v11, "displayId":I
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v5, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v3, :cond_5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9979
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v22

    .line 9980
    .local v22, "taskScreenZone":I
    move/from16 v7, v16

    .line 9981
    .local v7, "lastObscuredScreenZone":I
    const/4 v6, 0x0

    .line 9983
    .local v6, "visible":Z
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/TaskRecord;->getDisplayObscuredZones(Z)Landroid/util/SparseArray;

    move-result-object v19

    .line 9986
    .local v19, "taskDisplayObscuredZones":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    and-int v3, v22, v16

    move/from16 v0, v22

    if-ne v3, v0, :cond_7

    .line 9987
    const/4 v6, 0x0

    :cond_6
    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 10016
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V

    goto :goto_3

    .line 9989
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 9990
    .local v9, "NZ":I
    const/16 v24, 0x0

    .local v24, "zoneNdx":I
    :goto_4
    move/from16 v0, v24

    if-ge v0, v9, :cond_6

    .line 9991
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v23

    .line 9993
    .local v23, "zoneDisplayId":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 9994
    .local v20, "taskObscuredZone":I
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible(I)Z

    move-result v15

    .line 9996
    .local v15, "isFullscreen":Z
    if-nez v20, :cond_c

    .line 9997
    if-nez v6, :cond_8

    .line 9998
    aget v3, v17, v23

    const/16 v4, 0xf

    if-eq v3, v4, :cond_b

    const/4 v6, 0x1

    .line 10006
    :cond_8
    :goto_5
    if-eqz v15, :cond_9

    .line 10007
    aget v3, v17, v23

    or-int v3, v3, v20

    aput v3, v17, v23

    .line 10010
    :cond_9
    aget v3, v17, v23

    const/16 v4, 0xf

    if-ne v3, v4, :cond_a

    .line 10011
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v3

    or-int v16, v16, v3

    .line 9990
    :cond_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 9998
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .line 10001
    :cond_c
    if-nez v6, :cond_8

    .line 10002
    aget v3, v17, v23

    and-int v3, v3, v20

    move/from16 v0, v20

    if-eq v3, v0, :cond_d

    const/4 v6, 0x1

    :goto_6
    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    .line 10020
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "visible":Z
    .end local v7    # "lastObscuredScreenZone":I
    .end local v9    # "NZ":I
    .end local v11    # "displayId":I
    .end local v15    # "isFullscreen":Z
    .end local v19    # "taskDisplayObscuredZones":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .end local v20    # "taskObscuredZone":I
    .end local v22    # "taskScreenZone":I
    .end local v23    # "zoneDisplayId":I
    .end local v24    # "zoneNdx":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .local v12, "displayNdx":I
    :goto_7
    if-ltz v12, :cond_12

    .line 10021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 10022
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 10023
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 10024
    .local v10, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v10, :cond_10

    const/4 v5, 0x0

    .line 10025
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :goto_9
    if-eqz v5, :cond_f

    .line 10026
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_8

    .line 10024
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_10
    iget-object v5, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_9

    .line 10020
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_11
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 10031
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_12
    return-void
.end method

.method exchangeTaskToStack(IIZ)V
    .locals 21
    .param p1, "task1Id"    # I
    .param p2, "task2Id"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 5974
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 5975
    .local v13, "task1":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v14

    .line 5976
    .local v14, "task2":Lcom/android/server/am/TaskRecord;
    if-eqz v13, :cond_0

    if-nez v14, :cond_1

    .line 6073
    :cond_0
    return-void

    .line 5980
    :cond_1
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5981
    .local v5, "ar1":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5982
    .local v6, "ar2":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5983
    .local v11, "stack1":Lcom/android/server/am/ActivityStack;
    iget-object v12, v14, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5984
    .local v12, "stack2":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    .line 5988
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v16

    .line 5989
    .local v16, "zone1":I
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    .line 5992
    .local v17, "zone2":I
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    :cond_2
    const/16 v18, 0xc

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 5994
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5995
    .local v15, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5996
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    .line 6010
    .end local v15    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_4
    const-string v18, "exchangeTaskToStack from2"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v14, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZ)V

    .line 6011
    const-string v18, "exchangeTaskToStack from1"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v13, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZ)V

    .line 6014
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v12, v13, v0, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 6015
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 6017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 6018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 6021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 6022
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 6023
    .local v7, "currentFocusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_5

    if-eq v7, v11, :cond_5

    if-eq v7, v12, :cond_5

    .line 6024
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 6025
    .local v8, "currentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_5

    .line 6026
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6032
    .end local v7    # "currentFocusedStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "currentTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 6033
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 6034
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 6035
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v13, v0}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6036
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v14, v0}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6037
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6038
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6041
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 6042
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6045
    :cond_7
    if-eqz p3, :cond_9

    .line 6046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6047
    iput-object v6, v11, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6048
    iput-object v5, v12, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 6055
    :goto_0
    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/ActivityStack;->updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    .line 6056
    invoke-virtual {v12, v14, v11}, Lcom/android/server/am/ActivityStack;->updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    .line 6059
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    .local v9, "index":I
    :goto_1
    if-ltz v9, :cond_a

    .line 6060
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 6061
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 6062
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6063
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6059
    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 6051
    .end local v9    # "index":I
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0

    .line 6066
    .restart local v9    # "index":I
    :cond_a
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    :goto_2
    if-ltz v9, :cond_0

    .line 6067
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 6068
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 6069
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6070
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6066
    :cond_b
    add-int/lit8 v9, v9, -0x1

    goto :goto_2
.end method

.method executeAllTransition()V
    .locals 4

    .prologue
    .line 10306
    const/4 v0, 0x0

    .line 10307
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 10308
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 10307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10310
    :cond_0
    if-eqz v0, :cond_1

    .line 10311
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performLayoutForAppTransition()V

    .line 10313
    :cond_1
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 6298
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 6299
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6300
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 6301
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6302
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 6307
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v0

    .line 6300
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6298
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6307
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6312
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 6313
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6314
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 6315
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6316
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 6321
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v0

    .line 6314
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6312
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6321
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 6125
    const/4 v2, 0x0

    .line 6175
    .local v2, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 6176
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6177
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 6178
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 6179
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_1

    .line 6177
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 6190
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6195
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6196
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 6206
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_2

    .line 6208
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 6294
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    :goto_2
    return-object v0

    .line 6175
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6283
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 6294
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 5238
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5240
    .local v6, "top_activity":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_0

    .line 5241
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 5244
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    .line 5245
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 5247
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 5255
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 5258
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_4

    .line 5259
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "findTaskToMoveToFrontLocked: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    :goto_1
    return-void

    .end local v6    # "top_activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object v6, v4

    .line 5238
    goto :goto_0

    .line 5270
    .restart local v6    # "top_activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_2
    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_2
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .prologue
    .line 5060
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 5061
    .local v6, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .local v7, "displayNdx":I
    :goto_0
    if-ltz v7, :cond_2

    .line 5062
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v10, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5063
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 5064
    .local v8, "numStacks":I
    const/4 v9, 0x0

    .local v9, "stackNdx":I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 5065
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 5066
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5068
    const/4 v6, 0x1

    .line 5069
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v8, :cond_0

    .line 5071
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 5072
    add-int/lit8 v9, v9, -0x1

    .line 5064
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5061
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 5077
    .end local v8    # "numStacks":I
    .end local v9    # "stackNdx":I
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v6
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 5214
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5215
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5216
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5217
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 5218
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5219
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5214
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5222
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    .line 5225
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5226
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5227
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5228
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 5229
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5230
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 5228
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5225
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5233
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method forceResumeTopActivitiesLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5122
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 5125
    .local v1, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v0, 0x0

    .line 5127
    .local v0, "result":Z
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5128
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->forceResumeTopActivityLocked(Ljava/lang/String;)Z

    move-result v0

    .line 5130
    :cond_0
    return v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7555
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 7556
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 7557
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "ndx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 7558
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7557
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 7555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7561
    .end local v2    # "ndx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-object v1
.end method

.method public getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .locals 1

    .prologue
    .line 9576
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7224
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFixedTask()Lcom/android/server/am/TaskRecord;
    .locals 1

    .prologue
    .line 9901
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getFocusedStack(I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method public getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9777
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 9778
    .local v0, "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    .line 9779
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    .line 9801
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .prologue
    .line 5354
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(II)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivity(I)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 5358
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(II)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(II)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 5362
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 5369
    .local v2, "mHomeStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 5370
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_3

    .line 5371
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5372
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5373
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5374
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 5375
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5376
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, -0x1

    if-eq p1, v7, :cond_0

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v7, p1, :cond_0

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {p0, p1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isProfiledUserLocked(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5383
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_2
    return-object v3

    .line 5374
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5370
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 5383
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method getHomeActivityToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 5345
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5346
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 5347
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 5349
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHomeStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 9805
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeStack(I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 9825
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeTask()Lcom/android/server/am/TaskRecord;
    .locals 4

    .prologue
    .line 5394
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 5396
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5397
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 5398
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5402
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v0

    .line 5396
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5402
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLastStack(I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLockTaskModeState()I
    .locals 1

    .prologue
    .line 7763
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return v0
.end method

.method getLockedTaskLocked()Lcom/android/server/am/TaskRecord;
    .locals 2

    .prologue
    .line 7565
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 7566
    .local v0, "top":I
    if-ltz v0, :cond_0

    .line 7567
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 7569
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getNextStackId()I
    .locals 1

    .prologue
    .line 5608
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    if-gtz v0, :cond_1

    .line 5609
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 5612
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5616
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    return v0
.end method

.method getNextTaskId()I
    .locals 2

    .prologue
    .line 1288
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 1289
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-gtz v0, :cond_1

    .line 1290
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 1292
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1293
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    return v0
.end method

.method getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 9089
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    .line 9090
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 9092
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method getNonFloatingFocusedStack(I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 9097
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 9098
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStacks:[Lcom/android/server/am/ActivityStack;

    aget-object v0, v0, p1

    .line 9100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method getNumberOfKeepAliveActivitiesLocked()I
    .locals 6

    .prologue
    .line 10532
    const/4 v0, 0x0

    .line 10533
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 10534
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 10535
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 10536
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 10537
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getNumberOfKeepAliveActivitiesLocked()I

    move-result v5

    add-int/2addr v0, v5

    .line 10535
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 10533
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10540
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v0
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    .line 3456
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v1, :cond_0

    .line 3457
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3458
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 3461
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v1
.end method

.method getScreenZone(Lcom/android/server/am/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 9915
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v0

    return v0
.end method

.method public getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 6117
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 5281
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5282
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 5283
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 5285
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStack(II)Lcom/android/server/am/ActivityStack;
    .locals 5
    .param p1, "zone"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 5294
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5295
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2

    .line 5296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5297
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5298
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5301
    :cond_1
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 5314
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "displayId"    # I

    .prologue
    .line 5290
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method public getStackCount(I)I
    .locals 6
    .param p1, "stackType"    # I

    .prologue
    .line 9707
    const/4 v0, 0x0

    .line 9708
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 9709
    .local v2, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 9710
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9711
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 9712
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackType:I

    if-ne v5, p1, :cond_0

    .line 9713
    add-int/lit8 v0, v0, 0x1

    .line 9711
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 9709
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9717
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v0
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 7546
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 7547
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 7548
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 7550
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "allStack"    # Z
    .param p2, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9581
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)Ljava/util/ArrayList;
    .locals 9
    .param p1, "allStack"    # Z
    .param p2, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p3, "includeFinishing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 9591
    if-nez p2, :cond_1

    move-object v3, v7

    .line 9645
    :cond_0
    :goto_0
    return-object v3

    .line 9595
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9603
    .local v3, "resultStackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, p2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 9609
    .local v6, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .line 9611
    .local v2, "mask":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 9612
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9613
    .local v5, "taskInfo":Lcom/android/server/am/TaskRecord;
    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 9615
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v4, :cond_3

    .line 9611
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 9619
    :cond_3
    invoke-virtual {v5, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 9620
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez p3, :cond_4

    .line 9621
    if-eqz v0, :cond_2

    .line 9626
    :cond_4
    if-nez p1, :cond_5

    .line 9627
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-nez v8, :cond_5

    .line 9628
    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v8, v8, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v8, :cond_2

    .line 9629
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    or-int/2addr v2, v8

    .line 9635
    :cond_5
    iget v8, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 9636
    iget v8, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9638
    :cond_6
    if-nez p1, :cond_2

    .line 9639
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xf

    if-eq v2, v8, :cond_0

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5338
    .local v0, "allStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5339
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5338
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5341
    :cond_0
    return-object v0
.end method

.method getStacks(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1756
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 1757
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    .line 1758
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1760
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStacks(Lcom/samsung/android/dualscreen/DualScreen;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9829
    if-eqz p1, :cond_0

    .line 9830
    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    .line 9831
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 9832
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9834
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getTasksLocked(ILjava/util/List;IZI)V
    .locals 7
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 1766
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->getTasksLocked(ILjava/util/List;IZII)V

    .line 1767
    return-void
.end method

.method getTasksLocked(ILjava/util/List;IZII)V
    .locals 22
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "flags"    # I
    .param p6, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZII)V"
        }
    .end annotation

    .prologue
    .line 1773
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1786
    .local v13, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1787
    .local v5, "numDisplays":I
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1796
    .local v18, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v16, v20, -0x1

    .local v16, "stackNdx":I
    :goto_1
    if-ltz v16, :cond_0

    .line 1797
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStack;

    .line 1798
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    .local v17, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    .line 1796
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 1787
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1807
    .end local v16    # "stackNdx":I
    .end local v18    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    :goto_2
    if-lez p1, :cond_6

    .line 1808
    const-wide/high16 v10, -0x8000000000000000L

    .line 1809
    .local v10, "mostRecentActiveTime":J
    const/4 v14, 0x0

    .line 1811
    .local v14, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v19, 0x0

    .line 1813
    .local v19, "taskIsInitState":Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1814
    .local v12, "numTaskLists":I
    const/16 v16, 0x0

    .restart local v16    # "stackNdx":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v12, :cond_2

    .line 1815
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1816
    .restart local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_4

    .line 1826
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v20

    iget-wide v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1827
    .local v8, "lastActiveTime":J
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v20

    iget-wide v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    .line 1831
    .local v6, "lastActiveElapsedTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_3

    .line 1832
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1833
    const/16 v19, 0x1

    .line 1843
    .end local v6    # "lastActiveElapsedTime":J
    .end local v8    # "lastActiveTime":J
    .end local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    if-eqz v14, :cond_5

    .line 1844
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1845
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1837
    .restart local v6    # "lastActiveElapsedTime":J
    .restart local v8    # "lastActiveTime":J
    .restart local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    cmp-long v20, v6, v10

    if-lez v20, :cond_4

    .line 1838
    move-wide v10, v6

    .line 1839
    move-object/from16 v14, v17

    .line 1814
    .end local v6    # "lastActiveElapsedTime":J
    .end local v8    # "lastActiveTime":J
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1849
    .end local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    if-nez v19, :cond_1

    .line 1854
    .end local v10    # "mostRecentActiveTime":J
    .end local v12    # "numTaskLists":I
    .end local v14    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16    # "stackNdx":I
    .end local v19    # "taskIsInitState":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTaskComparator:Ljava/util/Comparator;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1855
    return-void
.end method

.method getVRStack(I)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 5320
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5321
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2

    .line 5322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5323
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5324
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5327
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5332
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method goingToSleepForDisplayLocked(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 10050
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    .line 10051
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10052
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10053
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 10054
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 10058
    :cond_0
    const/4 v0, 0x0

    .line 10060
    .local v0, "dontSleep":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 10061
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 10062
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v3

    or-int/2addr v0, v3

    .line 10061
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10065
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 10069
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 10070
    const/4 v0, 0x1

    .line 10073
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 10077
    const/4 v0, 0x1

    .line 10080
    :cond_3
    if-eqz v0, :cond_5

    .line 10096
    :cond_4
    :goto_1
    return-void

    .line 10090
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-ltz v1, :cond_6

    .line 10091
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 10090
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 10093
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10094
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method goingToSleepLocked()V
    .locals 2

    .prologue
    .line 6327
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 6328
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6329
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6330
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6334
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6335
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 6338
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 6339
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 6669
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6670
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6671
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 6672
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 6673
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 6674
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6669
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6677
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 5032
    const/4 v1, 0x0

    .line 5033
    .local v1, "hasVisibleActivities":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5034
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5035
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 5036
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 5035
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5033
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5039
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v1
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 6735
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 6736
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 6737
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 6738
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 6739
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 6740
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 6741
    return-void
.end method

.method handleMinimizeAllPenWindow()V
    .locals 14

    .prologue
    .line 10317
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 10318
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "displayNdx":I
    :goto_0
    if-ltz v4, :cond_6

    .line 10319
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 10328
    .local v9, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v8, v11, -0x1

    .local v8, "stackNdx":I
    :goto_1
    if-ltz v8, :cond_5

    .line 10329
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    .line 10330
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 10331
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 10332
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 10335
    .local v1, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_4

    .line 10336
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 10337
    .local v3, "curTask":Lcom/android/server/am/TaskRecord;
    iget v11, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v13, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v13, v13, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eq v11, v13, :cond_2

    .line 10338
    iget v11, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v11}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 10335
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 10342
    :cond_1
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v11, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-nez v11, :cond_0

    .line 10347
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 10348
    if-eqz v10, :cond_0

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v11, :cond_0

    .line 10349
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10350
    .local v0, "N":I
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_0

    .line 10351
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 10352
    .local v2, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v11, :cond_3

    iget-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_3

    iget-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_3

    .line 10353
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    .line 10354
    const/4 v11, 0x4

    const/4 v13, 0x1

    invoke-virtual {v7, v2, v11, v13}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 10350
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 10328
    .end local v0    # "N":I
    .end local v1    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "curTask":Lcom/android/server/am/TaskRecord;
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 10318
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 10364
    .end local v8    # "stackNdx":I
    .end local v9    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    .line 10365
    monitor-exit v12

    .line 10366
    return-void

    .line 10365
    .end local v4    # "displayNdx":I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public hideMultiWindowsLocked(I)V
    .locals 33
    .param p1, "targetUserId"    # I

    .prologue
    .line 10458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .local v25, "displayNdx":I
    :goto_0
    if-ltz v25, :cond_6

    .line 10459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    .line 10460
    .local v31, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v30, v2, -0x1

    .local v30, "stackNdx":I
    :goto_1
    if-ltz v30, :cond_5

    .line 10461
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/ActivityStack;

    .line 10462
    .local v29, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 10463
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.knox.foldercontainer"

    const-string v5, "com.sec.knox.foldercontainer.MultiwindowLockActivity"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 10464
    const-string/jumbo v2, "userid"

    move/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10466
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 10467
    .local v32, "top":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v28

    .line 10470
    .local v28, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v27, 0x0

    .line 10471
    .local v27, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_2
    if-eqz v28, :cond_0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_0

    .line 10472
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 10474
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v27, Landroid/content/pm/ResolveInfo;

    .line 10479
    .restart local v27    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v24

    .line 10480
    .local v24, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 10460
    :cond_1
    :goto_3
    add-int/lit8 v30, v30, -0x1

    goto :goto_1

    .line 10471
    .end local v24    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 10483
    .restart local v24    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/TaskRecord;

    .line 10484
    .local v23, "curTask":Lcom/android/server/am/TaskRecord;
    if-eqz v32, :cond_1

    if-eqz v27, :cond_1

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_1

    .line 10485
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10486
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10487
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 10488
    const-string/jumbo v2, "pkgName"

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10489
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    goto :goto_3

    .line 10458
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v23    # "curTask":Lcom/android/server/am/TaskRecord;
    .end local v24    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v26    # "i":I
    .end local v27    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v28    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v32    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_0

    .line 10497
    .end local v30    # "stackNdx":I
    .end local v31    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    return-void
.end method

.method initPowerManagement()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 623
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 624
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 625
    const-string v1, "*launch*"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 626
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 627
    return-void
.end method

.method initUnfixDialog()V
    .locals 3

    .prologue
    .line 8002
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    .line 8003
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    .line 8004
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->create()V

    .line 8005
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 8006
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->setDisplay(Landroid/view/Display;)V

    .line 8007
    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 7048
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne p1, v2, :cond_1

    .line 7052
    :cond_0
    :goto_0
    return v1

    .line 7049
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 7050
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 7049
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7052
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;Z)Z

    move-result v0

    return v0
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "ignoreMinimize"    # Z

    .prologue
    const/4 v1, 0x0

    .line 811
    if-nez p1, :cond_1

    .line 987
    :cond_0
    :goto_0
    return v1

    .line 983
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 984
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    .line 985
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object p1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 987
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1267
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1268
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1269
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1270
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1271
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1272
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 1277
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v2

    .line 1270
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1268
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1277
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method isInFixedScreenMode()Z
    .locals 1

    .prologue
    .line 9905
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIsolated(I)Z
    .locals 8
    .param p1, "displayId"    # I

    .prologue
    const/16 v7, 0x1000

    const/4 v5, 0x1

    .line 746
    const/4 v2, 0x0

    .line 747
    .local v2, "bPopup":Z
    const/4 v1, 0x0

    .line 748
    .local v1, "bHasVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 749
    .local v0, "as":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 750
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v6, p1, :cond_0

    .line 751
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 752
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 767
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    return v5

    .line 756
    .restart local v0    # "as":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v6, :cond_0

    .line 757
    const/4 v2, 0x1

    goto :goto_0

    .line 759
    :cond_3
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 762
    const/4 v1, 0x1

    goto :goto_0

    .line 767
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isKnoxMultiWindowExistLocked(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 10500
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 10501
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 10502
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 10503
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 10504
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 10505
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10506
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    const/16 v6, 0xf

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    if-eqz v5, :cond_1

    .line 10507
    :cond_0
    const/4 v5, 0x1

    .line 10512
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :goto_2
    return v5

    .line 10502
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 10500
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10512
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method isLastLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v0, 0x1

    .line 7577
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isNewClearTask"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7694
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v3, p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    .line 7715
    :cond_0
    :goto_0
    return v1

    .line 7702
    :cond_1
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 7703
    .local v0, "lockTaskAuth":I
    packed-switch v0, :pswitch_data_0

    .line 7714
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLockTaskModeViolation: invalid lockTaskAuth value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7705
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 7709
    goto :goto_0

    .line 7712
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 7703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method isLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7573
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isValidCoupled(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 7
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "parent"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 3468
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3469
    :cond_0
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidCoupled() failed! / Reason = ActivityRecord is null / ar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    :goto_0
    return v3

    .line 3475
    :cond_1
    const/high16 v0, 0x10000000

    .line 3476
    .local v0, "forbidden":I
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 3477
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidCoupled() failed! / Reason = It has FLAG_ACTIVITY_NEW_TASK / ar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3483
    :cond_2
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    .line 3484
    .local v1, "sourceScreen":Lcom/samsung/android/dualscreen/DualScreen;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v2

    .line 3486
    .local v2, "targetScreen":Lcom/samsung/android/dualscreen/DualScreen;
    if-ne v1, v2, :cond_3

    .line 3487
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidCoupled() failed! / Reason = Screen Error! sourceScreen == targetScreen! / ar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "targetScreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sourceScreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3494
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method moveHomeStack(ZLjava/lang/String;)V
    .locals 2
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 993
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V

    .line 994
    return-void
.end method

.method moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V
    .locals 9
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "lastFocusedStack"    # Lcom/android/server/am/ActivityStack;
    .param p4, "displayId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1008
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1010
    .local v0, "homeStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1012
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1013
    .local v3, "topNdx":I
    if-gtz v3, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v7, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v7, :cond_4

    .line 1051
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1052
    if-eqz p1, :cond_8

    move v4, v3

    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1055
    :cond_4
    if-eqz p3, :cond_5

    .line 1056
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1058
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1061
    const/16 v7, 0x755c

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    if-eqz p1, :cond_6

    move v5, v6

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    const/4 v5, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    const/4 v5, 0x3

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_9

    const/4 v4, -0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    const/4 v4, 0x4

    aput-object p2, v8, v4

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1065
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v4, :cond_0

    .line 1066
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1067
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz v4, :cond_0

    .line 1068
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    goto :goto_0

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move v4, v5

    .line 1052
    goto :goto_1

    .line 1061
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    goto :goto_2
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;)Z
    .locals 1
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;IZ)Z
    .locals 1
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "preArrangeHomeTask"    # Z

    .prologue
    .line 1118
    const/4 v0, 0x0

    .line 1126
    .local v0, "result":Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTopInner(ILjava/lang/String;IZ)Z

    move-result v0

    .line 1128
    return v0
.end method

.method moveHomeStackTaskToTopInner(ILjava/lang/String;IZ)Z
    .locals 3
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "preArrangeHomeTask"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1133
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 1134
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 1166
    :cond_0
    :goto_0
    return v1

    .line 1157
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    .line 1161
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1162
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1166
    const/4 v1, 0x1

    goto :goto_0
.end method

.method movePrevSamsungHomeTasksLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "excludeTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v12, 0x0

    .line 10206
    if-eqz p1, :cond_1

    .line 10207
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 10208
    .local v8, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isSamsungHomeActivity()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v10

    if-nez v10, :cond_1

    .line 10237
    .end local v8    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void

    .line 10214
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 10215
    .local v7, "tasksWillBeMoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 10216
    .local v3, "samsungHomeStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 10217
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 10218
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isSamsungHomeTask()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eq v5, p1, :cond_2

    .line 10219
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10222
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 10223
    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 10224
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iput v12, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_2

    .line 10226
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iput v12, v9, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 10227
    iput-boolean v12, v9, Lcom/android/server/am/TaskRecord;->fixed:Z

    .line 10229
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 10230
    .restart local v8    # "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v8, :cond_5

    .line 10231
    const-string v10, "ActivityManager"

    const-string v11, "Cannot move a task to target stack because topActivity is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10234
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p0, v8, v12, v10, v12}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 10235
    .local v4, "targetStack":Lcom/android/server/am/ActivityStack;
    iget v10, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v11

    invoke-virtual {p0, v10, v11, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto :goto_1
.end method

.method moveStack(Lcom/android/server/am/ActivityStack;Z)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toFront"    # Z

    .prologue
    .line 1075
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1076
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1077
    .local v2, "topNdx":I
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1078
    if-eqz p2, :cond_1

    move v3, v2

    :goto_0
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1079
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1094
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v3, :cond_0

    .line 1095
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movestack to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1104
    :cond_0
    return-void

    .line 1078
    .end local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V
    .locals 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z
    .param p5, "doAnimation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 10099
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZZZ)V

    .line 10100
    return-void
.end method

.method moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZZZ)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z
    .param p5, "doAnimation"    # Z
    .param p6, "forceDoAnimation"    # Z
    .param p7, "byArrangeFullViewPolicy"    # Z

    .prologue
    .line 10104
    return-void
.end method

.method moveTaskToStackLocked(IIZ)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 5702
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 5703
    return-void
.end method

.method moveTaskToStackLocked(IIZZ)V
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z

    .prologue
    .line 5708
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZZ)V

    .line 5709
    return-void
.end method

.method moveTaskToStackLocked(IIZZZ)V
    .locals 20
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z
    .param p5, "swap"    # Z

    .prologue
    .line 5713
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 5811
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-nez v11, :cond_0

    .line 5812
    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "moveTaskToStack: no task for id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5960
    :goto_0
    return-void

    .line 5815
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 5816
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v10, :cond_1

    .line 5817
    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "moveTaskToStack: no stack for id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5820
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToStack(IIZI)V

    .line 5823
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5824
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_2

    iget-boolean v0, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 5853
    :cond_2
    const/4 v15, 0x0

    .line 5854
    .local v15, "wasInFloatingStack":Z
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5855
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v15

    .line 5857
    :cond_3
    const/4 v6, 0x0

    .line 5858
    .local v6, "isTopActivityNormal":Z
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 5859
    .local v13, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_4

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 5860
    const/4 v6, 0x1

    .line 5863
    :cond_4
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v16

    .line 5864
    .local v16, "willBeInFloatingStack":Z
    iget-object v9, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5865
    .local v9, "prevStack":Lcom/android/server/am/ActivityStack;
    const/4 v14, 0x0

    .line 5866
    .local v14, "updateFocus":Z
    const/4 v8, 0x0

    .line 5868
    .local v8, "prevDisplayId":I
    if-eqz v9, :cond_5

    .line 5869
    iget v0, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v17, v0

    iget v0, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/4 v14, 0x1

    .line 5870
    :goto_1
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    .line 5873
    :cond_5
    const/4 v7, 0x0

    .line 5874
    .local v7, "needToMoveHomeStackTaskToTop":Z
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v12

    .line 5887
    .local v12, "taskToReturnTo":I
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 5888
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    const-string/jumbo v18, "moveTaskToStack"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V

    .line 5892
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 5957
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 5958
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto/16 :goto_0

    .line 5869
    .end local v7    # "needToMoveHomeStackTaskToTop":Z
    .end local v12    # "taskToReturnTo":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public multiWindowSettingChangeLocked(Z)V
    .locals 14
    .param p1, "value"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 9505
    if-nez p1, :cond_e

    .line 9506
    const/4 v9, 0x0

    .line 9507
    .local v9, "topTask":Lcom/android/server/am/TaskRecord;
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_c

    .line 9508
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 9509
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget v10, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v12, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 9510
    .local v3, "normalStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, -0x1

    .line 9511
    .local v4, "normalStackId":I
    if-nez v3, :cond_2

    .line 9512
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v10

    iget v11, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 9513
    if-eqz v3, :cond_0

    .line 9514
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 9520
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->startFreezingTaskToReturnToLocked()V

    .line 9521
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9522
    .local v8, "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v7, Ljava/util/ArrayList;

    iget v10, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9523
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .local v6, "taskNdx":I
    :goto_2
    if-ltz v6, :cond_8

    .line 9524
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9525
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 9526
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 9523
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 9517
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v8    # "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1

    .line 9530
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskNdx":I
    .restart local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v8    # "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    if-eqz v1, :cond_5

    iget-object v10, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_5

    .line 9531
    if-nez v9, :cond_4

    .line 9532
    move-object v9, v5

    .line 9534
    :cond_4
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9537
    :cond_5
    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 9538
    iget v10, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v10, v11, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto :goto_3

    .line 9541
    :cond_6
    iget-object v10, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eqz v10, :cond_7

    .line 9542
    iget-object v10, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9543
    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9544
    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10, v1, v13, v13}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9546
    :cond_7
    iget v10, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v10, v4, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto :goto_3

    .line 9548
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    :goto_4
    if-ltz v6, :cond_b

    .line 9549
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9550
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 9551
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 9552
    iget v10, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v10, v11, v13, v13}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 9548
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 9554
    :cond_9
    if-eqz v1, :cond_a

    iget-object v10, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eqz v10, :cond_a

    .line 9555
    iget-object v10, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9556
    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9557
    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10, v1, v13, v13}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9559
    :cond_a
    iget v10, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v10, v4, v13, v13}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto :goto_5

    .line 9562
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->stopFreezingTaskToReturnToLocked()V

    .line 9563
    iget v10, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->arrangeTaskToReturnTo(I)V

    .line 9507
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 9565
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v3    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "normalStackId":I
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v8    # "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_c
    if-eqz v9, :cond_d

    .line 9566
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const-string v11, "by turning off multi winodw setting"

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 9568
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 9570
    .end local v2    # "displayNdx":I
    .end local v9    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_e
    return-void
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .locals 14
    .param p1, "taskId"    # I

    .prologue
    .line 6076
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 6077
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "needMoveOnlySpecificTaskToFront : task = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    if-nez v9, :cond_0

    .line 6079
    const/4 v11, 0x0

    .line 6113
    :goto_0
    return v11

    .line 6082
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    .line 6083
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6084
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 6085
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 6086
    .local v8, "targetStack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6087
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 6088
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_2

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v11, :cond_2

    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6090
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 6091
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/MultiWindowPolicy;->getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z

    move-result v2

    .line 6092
    .local v2, "isSupportMultiInstance":Z
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, v9, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v11, v12, :cond_2

    if-nez v2, :cond_2

    .line 6093
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "needMoveOnlySpecificTaskToFront : Try to move task to mSpecificFloatingStack = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6094
    iput-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    .line 6095
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 6097
    .end local v2    # "isSupportMultiInstance":Z
    :cond_1
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_2

    .line 6098
    new-instance v3, Landroid/content/Intent;

    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6099
    .local v3, "source":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6100
    new-instance v4, Landroid/content/Intent$FilterComparison;

    invoke-direct {v4, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6101
    .local v4, "sourceFilter":Landroid/content/Intent$FilterComparison;
    new-instance v6, Landroid/content/Intent;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6102
    .local v6, "target":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6103
    new-instance v7, Landroid/content/Intent$FilterComparison;

    invoke-direct {v7, v6}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6104
    .local v7, "targetFilter":Landroid/content/Intent$FilterComparison;
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->isDocument()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v4, v7}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6105
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "needMoveOnlySpecificTaskToFront : Try to move task to mSpecificFloatingStack = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6106
    iput-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    .line 6107
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 6084
    .end local v3    # "source":Landroid/content/Intent;
    .end local v4    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v6    # "target":Landroid/content/Intent;
    .end local v7    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 6113
    .end local v8    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method notifyActivityDrawnForKeyguard()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 713
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mTargetDismiss:Landroid/content/Intent;

    .line 714
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mIsKeyguardWaitingForActivityDrawnRequested:Z

    .line 716
    return-void
.end method

.method notifyAppsStatusToTaskBar(ILcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 13
    .param p1, "status"    # I
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 10555
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHiddenPkgString:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v12, v8, v10

    .line 10556
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10571
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 10555
    .restart local v12    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 10562
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 10563
    .local v0, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 10564
    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v1, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mStackType:I

    move v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->updateKnoxDesktopTaskBar(IIIIILandroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10567
    .end local v0    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v9

    .line 10568
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    const-string v2, "RemoteException when notifyAppsStatusToTaskBar"

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method final notifyCoupledTaskStatusChangedLocked()V
    .locals 13

    .prologue
    .line 9106
    const/4 v0, 0x0

    .line 9108
    .local v0, "IsResumedBothCoupled":Z
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 9109
    .local v5, "numDisplays":I
    const/4 v3, 0x0

    .local v3, "displayNdx":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 9110
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9111
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    .line 9112
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v8, 0x0

    .line 9113
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    .line 9114
    .local v9, "topOfOpposite":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 9115
    .local v1, "Opposite":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9116
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v11, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_0

    .line 9121
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 9122
    const/4 v0, 0x1

    .line 9109
    .end local v1    # "Opposite":Lcom/android/server/am/TaskRecord;
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "topOfOpposite":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9129
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsResumedBothCoupled:Z

    if-eq v0, v10, :cond_3

    .line 9130
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.action.NOTIFY_COUPLEDTASK_RESUMED_STATUS"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9132
    .local v2, "coupledTaskStatusIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.extra.COUPLED_RESUMED_STATUS"

    invoke-virtual {v2, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9134
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string v12, "com.samsung.android.dualscreen.permission.USE_INTERNAL_APIS"

    invoke-virtual {v10, v2, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 9136
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsResumedBothCoupled:Z

    .line 9138
    .end local v2    # "coupledTaskStatusIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method final notifyGlobalMultiWindowStatusChangedLocked()V
    .locals 12

    .prologue
    .line 9147
    const/4 v1, 0x0

    .line 9148
    .local v1, "hasMultiWindowStack":Z
    const/4 v2, 0x0

    .line 9149
    .local v2, "hasRunningCascadeApp":Z
    const/4 v3, 0x0

    .line 9151
    .local v3, "hasRunningSplitApp":Z
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 9152
    .local v6, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 9153
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v8, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9154
    .local v8, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    .line 9155
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x0

    .line 9156
    .local v9, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9157
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eqz v10, :cond_0

    .line 9158
    const/4 v1, 0x1

    .line 9159
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 9160
    const/4 v2, 0x1

    goto :goto_1

    .line 9161
    :cond_1
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 9162
    const/4 v3, 0x1

    goto :goto_1

    .line 9152
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9169
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    if-ne v1, v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    if-ne v2, v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    if-eq v3, v10, :cond_5

    .line 9171
    :cond_4
    const-string/jumbo v11, "sys.multiwindow.running"

    if-eqz v1, :cond_6

    const-string v10, "1"

    :goto_2
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 9173
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9174
    .local v5, "multiWindowModeIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9175
    const-string v10, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9176
    const-string v10, "com.sec.android.extra.MULTIWINDOW_SPLIT"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9177
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 9179
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    .line 9180
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    .line 9181
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    .line 9183
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService;->setIsCascadeRunning(Z)V

    .line 9185
    .end local v5    # "multiWindowModeIntent":Landroid/content/Intent;
    :cond_5
    return-void

    .line 9171
    :cond_6
    const-string v10, "0"

    goto :goto_2
.end method

.method public notifyMinimizeMultiWindow(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 9498
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 9499
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 9500
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V

    .line 9502
    :cond_0
    return-void
.end method

.method public notifyResizeStack()V
    .locals 15

    .prologue
    .line 9188
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 9189
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 9190
    .local v7, "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 9191
    .local v4, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 9192
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9193
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 9194
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 9195
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 9196
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 9197
    .local v8, "taskRecord":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v12, :cond_1

    .line 9198
    iget v10, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9210
    .end local v0    # "displayNdx":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "numDisplays":I
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 9191
    .restart local v0    # "displayNdx":I
    .restart local v4    # "numDisplays":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9204
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 9205
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 9206
    .restart local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_4

    .line 9207
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9204
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9210
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    :cond_5
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9211
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 7453
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7454
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 7465
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7466
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 7459
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7460
    return-void
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 14

    .prologue
    .line 7720
    const/4 v0, 0x0

    .line 7721
    .local v0, "didSomething":Z
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_5

    .line 7722
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 7723
    .local v3, "lockedTask":Lcom/android/server/am/TaskRecord;
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_0

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 7726
    .local v10, "wasWhitelisted":Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 7727
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 7730
    .local v2, "isWhitelisted":Z
    :goto_2
    if-eqz v10, :cond_2

    if-nez v2, :cond_2

    .line 7734
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7735
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 7736
    const/4 v0, 0x1

    .line 7721
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 7723
    .end local v2    # "isWhitelisted":Z
    .end local v10    # "wasWhitelisted":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 7727
    .restart local v10    # "wasWhitelisted":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 7739
    .end local v3    # "lockedTask":Lcom/android/server/am/TaskRecord;
    .end local v10    # "wasWhitelisted":Z
    :cond_5
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, "displayNdx":I
    :goto_3
    if-ltz v1, :cond_7

    .line 7740
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 7741
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, "stackNdx":I
    :goto_4
    if-ltz v6, :cond_6

    .line 7742
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 7743
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdatedLocked()V

    .line 7741
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 7739
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 7746
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 7747
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_a

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 7748
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    :goto_5
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v8, :cond_8

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 7753
    const/4 v11, 0x1

    const-string/jumbo v12, "package updated"

    const/4 v13, 0x0

    invoke-virtual {p0, v8, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 7755
    const/4 v0, 0x1

    .line 7757
    :cond_8
    if-eqz v0, :cond_9

    .line 7758
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 7760
    :cond_9
    return-void

    .line 7747
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/4 v8, 0x0

    goto :goto_5
.end method

.method pauseBackStacks(ZZZ)Z
    .locals 1
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z

    .prologue
    .line 1502
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZZ)Z

    move-result v0

    return v0
.end method

.method pauseBackStacks(ZZZZ)Z
    .locals 6
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z
    .param p4, "needToIdle"    # Z

    .prologue
    .line 1507
    const/4 v1, 0x0

    .line 1508
    .local v1, "someActivityPaused":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1509
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1510
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1511
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1512
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 1520
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1510
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1508
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1525
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v1
.end method

.method pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V
    .locals 5
    .param p1, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z
    .param p4, "resuming"    # Z
    .param p5, "dontWait"    # Z

    .prologue
    .line 1583
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1584
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1585
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1586
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 1587
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_0

    .line 1589
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 1585
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1583
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1593
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-void
.end method

.method processFinishingActivitiesLocked(ZI)Ljava/util/ArrayList;
    .locals 5
    .param p1, "remove"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9857
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9859
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9861
    .local v2, "finishs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 9862
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 9863
    .local v1, "f":Lcom/android/server/am/ActivityRecord;
    const/4 v4, -0x1

    if-le p2, v4, :cond_1

    .line 9864
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4, p2}, Lcom/android/server/am/DualScreenAttrs;->addFinishFlag(I)V

    .line 9865
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->okToFinish()Z

    move-result v4

    if-nez v4, :cond_1

    .line 9861
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9869
    :cond_1
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->clearFinishFlag()V

    .line 9870
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9871
    if-eqz p1, :cond_0

    .line 9872
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9873
    add-int/lit8 v0, v0, -0x1

    .line 9874
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 9877
    .end local v1    # "f":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v2
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7057
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method final processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;
    .locals 9
    .param p1, "remove"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7062
    const/4 v3, 0x0

    .line 7064
    .local v3, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v1

    .line 7065
    .local v1, "nowVisible":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 7066
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 7067
    .local v2, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 7081
    .local v4, "waitingVisible":Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 7082
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7083
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 7090
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 7093
    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    .line 7095
    if-nez v3, :cond_2

    .line 7096
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7098
    .restart local v3    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7099
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7065
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7103
    .end local v2    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    :cond_4
    return-object v3
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 32
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2375
    if-eqz p3, :cond_0

    .line 2376
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 2395
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2404
    :cond_0
    if-eqz p4, :cond_1

    .line 2428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v9

    .line 2431
    .local v9, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v9, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 2435
    .end local v9    # "config":Landroid/content/res/Configuration;
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2436
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 2437
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 2438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 2442
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    .line 2443
    .local v26, "idx":I
    if-gez v26, :cond_2

    .line 2444
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2449
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    .line 2450
    .local v31, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 2452
    :cond_3
    const/4 v4, 0x1

    const-string/jumbo v5, "mLockTaskAuth==LAUNCHABLE"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 2455
    :cond_4
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v30, v0

    .line 2457
    .local v30, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_6

    .line 2458
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2587
    :catch_0
    move-exception v25

    .line 2588
    .local v25, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_15

    .line 2591
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2595
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "2nd-crash"

    const/4 v15, 0x0

    move-object/from16 v10, v30

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2597
    const/4 v4, 0x0

    .line 2648
    .end local v25    # "e":Landroid/os/RemoteException;
    :goto_1
    return v4

    .line 2428
    .end local v26    # "idx":I
    .end local v30    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2460
    .restart local v26    # "idx":I
    .restart local v30    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v31    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    const/16 v17, 0x0

    .line 2461
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v18, 0x0

    .line 2462
    .local v18, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_7

    .line 2463
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 2464
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 2466
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 2472
    :cond_7
    if-eqz p3, :cond_8

    .line 2473
    const/16 v4, 0x7536

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v31

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2477
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 2486
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 2487
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2488
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 2491
    const/16 v21, 0x0

    .line 2492
    .local v21, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_c

    .line 2494
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 2495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 2496
    .local v29, "profileFile":Ljava/lang/String;
    if-eqz v29, :cond_c

    .line 2497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2498
    .local v28, "profileFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v28, :cond_b

    .line 2500
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v28

    .line 2512
    :cond_b
    :goto_3
    :try_start_3
    new-instance v21, Landroid/app/ProfilerInfo;

    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 2518
    .end local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "profileFile":Ljava/lang/String;
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_c
    if-eqz p3, :cond_d

    .line 2519
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 2520
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2522
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2530
    new-instance v9, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2542
    .restart local v9    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/DssHelper;->getScalingFactorAdss(Ljava/lang/String;)F

    move-result v24

    .line 2544
    .local v24, "dssScale":F
    move/from16 v0, v24

    invoke-static {v9, v0}, Lcom/android/server/am/ActivityManagerService;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    .line 2559
    .end local v24    # "dssScale":F
    :cond_e
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, v30

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v10, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    move-object/from16 v16, v0

    if-nez p3, :cond_14

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward(I)Z

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v23

    invoke-interface/range {v4 .. v23}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 2567
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_10

    .line 2572
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_f

    .line 2575
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 2580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2582
    .local v27, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2606
    .end local v27    # "msg":Landroid/os/Message;
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 2607
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2608
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " being launched, but already in LRU list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_11
    if-eqz p3, :cond_16

    .line 2615
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2640
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 2646
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2648
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2482
    .end local v9    # "config":Landroid/content/res/Configuration;
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_13
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 2501
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "profileFile":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 2502
    .local v25, "e":Ljava/io/IOException;
    if-eqz v28, :cond_b

    .line 2504
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2507
    :goto_6
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 2559
    .end local v25    # "e":Ljava/io/IOException;
    .end local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "profileFile":Ljava/lang/String;
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 2602
    .end local v9    # "config":Landroid/content/res/Configuration;
    .end local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v25, "e":Landroid/os/RemoteException;
    :cond_15
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2603
    throw v25

    .line 2632
    .end local v25    # "e":Landroid/os/RemoteException;
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_16
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2633
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_5

    .line 2505
    .end local v9    # "config":Landroid/content/res/Configuration;
    .local v25, "e":Ljava/io/IOException;
    .restart local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "profileFile":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_6
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 6937
    const/4 v1, 0x0

    .line 6939
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    .line 6941
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 6942
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 6946
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_1

    .line 6989
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void

    .line 6952
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v9, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_3

    .line 6941
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6957
    :cond_3
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_2

    .line 6960
    if-nez v1, :cond_4

    .line 6961
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_1

    .line 6962
    :cond_4
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v9, :cond_2

    .line 6963
    if-nez v8, :cond_5

    .line 6964
    new-instance v8, Landroid/util/ArraySet;

    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 6965
    .restart local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6967
    :cond_5
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6971
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v8, :cond_0

    .line 6977
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 6978
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 6979
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6981
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 6982
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 6984
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_0

    .line 6981
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 6978
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method removeAllStacks(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 9854
    return-void
.end method

.method removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5418
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 5419
    .local v0, "childStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "containerNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 5420
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5423
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    .line 5419
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5425
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7581
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7595
    :cond_0
    :goto_0
    return-void

    .line 7585
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7589
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7590
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7591
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7592
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 7593
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 4831
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4832
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 4833
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_0

    .line 4834
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4831
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4837
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .prologue
    .line 7441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 7442
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 7443
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 7431
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7432
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 5052
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5053
    return-void
.end method

.method removeVirtualScreen(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1751
    const v0, 0x1339e3

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1752
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->onDisplayRemoved(I)V

    .line 1753
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 7
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 1634
    const/4 v0, 0x0

    .line 1635
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1636
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1637
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 1638
    const/4 v0, 0x1

    .line 1639
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1640
    if-eqz p2, :cond_0

    .line 1641
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1643
    :cond_0
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1644
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1635
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1647
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 1648
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1650
    :cond_3
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1605
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1607
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1611
    :cond_0
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6623
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 6624
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6625
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 6640
    :cond_0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v3, :cond_1

    .line 6641
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 6645
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6653
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6661
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(I)V

    .line 6665
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6680
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 6681
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    move v4, v5

    .line 6730
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v4

    .line 6686
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v0

    .line 6690
    .local v0, "isVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 6691
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    if-eq v3, p1, :cond_1

    if-ne p2, v0, :cond_3

    .line 6693
    :cond_1
    if-eqz p2, :cond_2

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    move v4, v6

    .line 6694
    goto :goto_0

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object p1, v4

    .line 6693
    goto :goto_1

    .line 6698
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_4

    move v4, v5

    .line 6704
    goto :goto_0

    .line 6705
    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eq v7, p1, :cond_5

    move v4, v5

    .line 6712
    goto :goto_0

    .line 6715
    :cond_5
    if-eqz p2, :cond_6

    move-object v4, p1

    :cond_6
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 6716
    if-nez p2, :cond_7

    .line 6718
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 6719
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_7

    .line 6720
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    .line 6723
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_8

    .line 6726
    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    move v4, v6

    .line 6730
    goto :goto_0

    .line 6727
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Z)V

    .line 5441
    return-void
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "forceToResize"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5445
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 5446
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_1

    .line 5447
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeStack: stackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    :cond_0
    :goto_0
    return-void

    .line 5451
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 5452
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    if-nez v4, :cond_2

    .line 5456
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeStack: top task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not resizeable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5461
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowManagerService;->resizeStack(ILandroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 5462
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStack;->updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5463
    if-eqz v1, :cond_0

    .line 5464
    invoke-virtual {v2, v1, v6}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v3

    .line 5467
    .local v3, "updated":Z
    invoke-virtual {p0, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 5468
    if-nez v3, :cond_0

    .line 5469
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 5489
    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    .line 5490
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5491
    .local v0, "currentStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5525
    :cond_0
    :goto_0
    return-void

    .line 5496
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowManagerService;->getStackIdWithBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 5497
    .local v2, "matchingStackId":I
    if-eq v2, v5, :cond_3

    .line 5499
    if-eqz v0, :cond_2

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v4, v2, :cond_0

    .line 5504
    :cond_2
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v4, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    goto :goto_0

    .line 5508
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->numTasks()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 5510
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 5515
    :cond_4
    if-eqz v0, :cond_5

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v4, v5, :cond_5

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 5517
    .local v1, "displayId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 5519
    .local v3, "newStack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_6

    .line 5520
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTaskLocked: Can\'t create stack for task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5515
    .end local v1    # "displayId":I
    .end local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 5523
    .restart local v1    # "displayId":I
    .restart local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    .line 5524
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "startFlags"    # I
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "userId"    # I

    .prologue
    .line 1890
    const/4 v7, 0x0

    .line 1891
    .local v7, "displayChooserSelected":Z
    const/4 v6, 0x0

    .line 1892
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v5, 0x0

    .line 1893
    .local v5, "callerActivityRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 1908
    .local v4, "callerActivitiesSize":I
    const/4 v10, 0x0

    .line 1911
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 1938
    .local v9, "queryIntent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const v12, 0x10480

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-interface {v11, v0, v1, v12, v2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1944
    if-eqz v10, :cond_5

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-nez p6, :cond_0

    .line 2000
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v11, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 2004
    :cond_0
    if-eqz v3, :cond_4

    .line 2022
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2026
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v12, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v10, :cond_1

    iget v11, v10, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/16 v12, 0x64

    if-lt v11, v12, :cond_1

    .line 2028
    const-string v11, "crossProfileTargetUserId"

    iget v12, v10, Landroid/content/pm/ResolveInfo;->targetUserId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2033
    :cond_1
    and-int/lit8 v11, p4, 0x2

    if-eqz v11, :cond_2

    .line 2034
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v12, "system"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2035
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 2039
    :cond_2
    and-int/lit8 v11, p4, 0x4

    if-eqz v11, :cond_3

    .line 2040
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v12, "system"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2041
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 2045
    :cond_3
    if-eqz p5, :cond_4

    .line 2046
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v12, "system"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2047
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v11, v12, v13, v0}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 2051
    :cond_4
    return-object v3

    .line 1944
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1994
    :catch_0
    move-exception v8

    .line 1995
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    .prologue
    .line 1885
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1176
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_0

    .line 1219
    :goto_0
    return v2

    .line 1181
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1182
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_0

    .line 1186
    :cond_1
    if-eqz p2, :cond_2

    .line 1187
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1191
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1200
    .local v0, "mHomeStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1210
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3

    .line 1211
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1212
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 1219
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method resumeTopActivitiesLocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5118
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    .line 5136
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5139
    if-nez p1, :cond_0

    .line 5140
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 5143
    :cond_0
    const/4 v1, 0x0

    .line 5161
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5162
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 5165
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 5166
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5167
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 5168
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5169
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-ne v2, p1, :cond_3

    .line 5167
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 5183
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5189
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_2

    .line 5165
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5210
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    return v1
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1297
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1298
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 1317
    :cond_0
    :goto_0
    return-object v0

    .line 1301
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1302
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 1303
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1313
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 1314
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 6925
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6926
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6927
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6928
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 6929
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 6930
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6928
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6925
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6933
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 7416
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 7417
    return-void
.end method

.method final scheduleIdleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 7421
    if-eqz p1, :cond_0

    .line 7423
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7424
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7426
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 7411
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7412
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7413
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 6744
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6745
    return-void
.end method

.method scheduleMovePrevSamsungHomeTasks(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "samsungHomeTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 10199
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

    if-eq v0, p1, :cond_0

    .line 10200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedToMovePrevSamsungHomeTasks:Z

    .line 10201
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

    .line 10203
    :cond_0
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 7435
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7436
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 7438
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 7447
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7448
    return-void
.end method

.method sendExpandRequestToExpandableActivityLocked(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 10241
    return-void
.end method

.method sendShrinkRequestToAllResumedActivityLocked(II)V
    .locals 0
    .param p1, "toDisplayId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 10275
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1614
    const/4 v0, 0x0

    .line 1615
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1616
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1617
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 1618
    const/4 v0, 0x1

    .line 1619
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1620
    if-eqz p1, :cond_0

    .line 1621
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1623
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1624
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1615
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1627
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 1628
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1630
    :cond_3
    return-void
.end method

.method setFixedTask(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "fixedTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9881
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    if-eq v1, p1, :cond_1

    .line 9882
    if-nez p1, :cond_0

    .line 9883
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->fixed:Z

    .line 9885
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9886
    .local v0, "fixedTaskMsg":Landroid/os/Message;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9887
    if-eqz p1, :cond_2

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 9888
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    .line 9889
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9891
    .end local v0    # "fixedTaskMsg":Landroid/os/Message;
    :cond_1
    return-void

    .line 9887
    .restart local v0    # "fixedTaskMsg":Landroid/os/Message;
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3430
    if-nez p1, :cond_0

    .line 3446
    :goto_0
    return v1

    .line 3434
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3435
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_2

    .line 3436
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set focus stack for r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3440
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3443
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->notifyFocusChanged(I)V

    .line 3446
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setLaunchSource(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4841
    return-void
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "lockTaskModeState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "andResume"    # Z

    .prologue
    .line 7624
    if-nez p1, :cond_1

    .line 7626
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 7627
    .local v1, "lockedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    .line 7628
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7629
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7633
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 7634
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 7687
    .end local v1    # "lockedTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    return-void

    .line 7644
    :cond_1
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eqz v2, :cond_0

    .line 7649
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7650
    const-string v2, "ActivityManager"

    const-string/jumbo v3, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7654
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7656
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7657
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7658
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 7659
    const/16 v2, 0x6d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 7660
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 7661
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7666
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7667
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7669
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 7670
    iget v2, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 7683
    :cond_4
    if-eqz p4, :cond_0

    .line 7684
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 7685
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0
.end method

.method setNextTaskId(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 1281
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-le p1, v0, :cond_0

    .line 1282
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 1284
    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 7
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 658
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 659
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 661
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 663
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 665
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 666
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 667
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 668
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 669
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_0

    .line 670
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Default Display does not exist"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 706
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 672
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 666
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 679
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    .line 680
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 702
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 705
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->isLeanbackOnlyDevice()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    .line 706
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    return-void
.end method

.method showFixTaskDialog()V
    .locals 2

    .prologue
    .line 9909
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9910
    .local v0, "fixedTaskMsg":Landroid/os/Message;
    const/16 v1, 0x12d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9911
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9912
    return-void
.end method

.method showLockTaskEscapeMessageLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7614
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7615
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 7617
    :cond_0
    return-void
.end method

.method showLockTaskToast()V
    .locals 4

    .prologue
    .line 7598
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    if-nez v1, :cond_0

    .line 7599
    new-instance v1, Lcom/android/server/am/LockTaskNotify;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    .line 7602
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bikemode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7603
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "isBikeMode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 7604
    .local v0, "isBikeMode":I
    if-eqz v0, :cond_1

    .line 7605
    const-string v1, "ActivityManager"

    const-string v2, "Bike mode is on skip the screen pinning toasts"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7611
    .end local v0    # "isBikeMode":I
    :goto_0
    return-void

    .line 7610
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    goto :goto_0
.end method

.method shutdownLocked(I)Z
    .locals 14
    .param p1, "timeout"    # I

    .prologue
    .line 6342
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 6344
    const/4 v8, 0x0

    .line 6345
    .local v8, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 6347
    .local v2, "endTime":J
    :goto_0
    const/4 v0, 0x0

    .line 6348
    .local v0, "cantShutdown":Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "displayNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 6349
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6350
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_2
    if-ltz v4, :cond_0

    .line 6351
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v9

    or-int/2addr v0, v9

    .line 6350
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 6348
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6354
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    if-eqz v0, :cond_3

    .line 6355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v2, v10

    .line 6356
    .local v6, "timeRemaining":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_2

    .line 6358
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6359
    :catch_0
    move-exception v9

    goto :goto_0

    .line 6362
    :cond_2
    const-string v9, "ActivityManager"

    const-string v10, "Activity manager shutdown timed out"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6363
    const/4 v8, 0x1

    .line 6372
    .end local v6    # "timeRemaining":J
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 6373
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 6375
    return v8
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 32
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 2293
    if-nez p4, :cond_0

    .line 2294
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "intents is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2296
    :cond_0
    if-nez p5, :cond_1

    .line 2297
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "resolvedTypes is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2299
    :cond_1
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 2300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "intents are length different than resolvedTypes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2305
    :cond_2
    if-ltz p2, :cond_3

    .line 2306
    const/4 v12, -0x1

    .line 2313
    .local v12, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2315
    .local v28, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2316
    const/4 v2, 0x1

    :try_start_1
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    .line 2317
    .local v21, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_e

    .line 2318
    aget-object v25, p4, v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2319
    .local v25, "intent":Landroid/content/Intent;
    if-nez v25, :cond_5

    move-object/from16 v4, v25

    .line 2317
    .end local v25    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 2307
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v12    # "callingPid":I
    .end local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v24    # "i":I
    .end local v28    # "origId":J
    :cond_3
    if-nez p1, :cond_4

    .line 2308
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 2309
    .restart local v12    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 2311
    .end local v12    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    move/from16 v12, p2

    .restart local v12    # "callingPid":I
    goto :goto_0

    .line 2324
    .restart local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "i":I
    .restart local v25    # "intent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    :cond_5
    if-eqz v25, :cond_6

    :try_start_2
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2325
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2363
    .end local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v24    # "i":I
    .end local v25    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2365
    :catchall_1
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2328
    .restart local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "i":I
    .restart local v25    # "intent":Landroid/content/Intent;
    :cond_6
    if-eqz p6, :cond_7

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 2329
    .local v30, "sr":Lcom/android/server/am/ActivityRecord;
    :goto_3
    if-eqz v30, :cond_8

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v26, 0x1

    .line 2330
    .local v26, "isNotFromResolverActivity":Z
    :goto_4
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz v26, :cond_9

    const/16 v20, 0x1

    .line 2333
    .local v20, "componentSpecified":Z
    :goto_5
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2336
    .end local v25    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    aget-object v5, p5, v24

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2338
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v6, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2340
    if-eqz v6, :cond_a

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 2343
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2328
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "componentSpecified":Z
    .end local v26    # "isNotFromResolverActivity":Z
    .end local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v30, 0x0

    goto :goto_3

    .line 2329
    .restart local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/16 v26, 0x0

    goto :goto_4

    .line 2330
    .restart local v26    # "isNotFromResolverActivity":Z
    :cond_9
    const/16 v20, 0x0

    goto :goto_5

    .line 2348
    .end local v25    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "componentSpecified":Z
    :cond_a
    if-eqz p7, :cond_b

    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_b

    .line 2349
    move-object/from16 v18, p7

    .line 2353
    .local v18, "theseOptions":Landroid/os/Bundle;
    :goto_6
    aget-object v5, p5, v24

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p6

    move/from16 v13, p2

    move-object/from16 v14, p3

    move v15, v12

    move/from16 v16, p2

    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 2357
    .local v27, "res":I
    if-gez v27, :cond_c

    .line 2358
    monitor-exit v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2365
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2368
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "theseOptions":Landroid/os/Bundle;
    .end local v20    # "componentSpecified":Z
    .end local v26    # "isNotFromResolverActivity":Z
    .end local v27    # "res":I
    .end local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :goto_7
    return v27

    .line 2351
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "componentSpecified":Z
    .restart local v26    # "isNotFromResolverActivity":Z
    .restart local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_b
    const/16 v18, 0x0

    .restart local v18    # "theseOptions":Landroid/os/Bundle;
    goto :goto_6

    .line 2361
    .restart local v27    # "res":I
    :cond_c
    const/4 v2, 0x0

    :try_start_5
    aget-object v2, v21, v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    aget-object v2, v21, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_8
    goto/16 :goto_2

    :cond_d
    const/16 p6, 0x0

    goto :goto_8

    .line 2363
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "theseOptions":Landroid/os/Bundle;
    .end local v20    # "componentSpecified":Z
    .end local v26    # "isNotFromResolverActivity":Z
    .end local v27    # "res":I
    .end local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_e
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2365
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2368
    const/16 v27, 0x0

    goto :goto_7
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 74
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "realCallingPid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "startFlags"    # I
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "ignoreTargetSecurity"    # Z
    .param p18, "componentSpecified"    # Z
    .param p19, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p20, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p21, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2733
    const/16 v60, 0x0

    .line 2735
    .local v60, "err":I
    const/16 v32, 0x0

    .line 2736
    .local v32, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 2737
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v32

    .line 2738
    if-eqz v32, :cond_2

    .line 2739
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 2740
    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 2749
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .line 2750
    .local v11, "cmp":Landroid/content/ComponentName;
    const-string v12, ""

    .line 2754
    .local v12, "className":Ljava/lang/String;
    :try_start_0
    new-instance v67, Landroid/content/Intent;

    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2755
    .local v67, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual/range {v67 .. v67}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 2756
    const-string v6, ":android:show_fragment"

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2757
    if-nez v12, :cond_1

    if-eqz v11, :cond_1

    .line 2758
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .end local v67    # "mEdmIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p14

    move-object/from16 v10, p16

    .line 2764
    invoke-direct/range {v6 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 2766
    const/4 v6, 0x0

    .line 3225
    :goto_2
    return v6

    .line 2742
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v12    # "className":Ljava/lang/String;
    :cond_2
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/16 v60, -0x4

    goto :goto_0

    .line 2760
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    .restart local v12    # "className":Ljava/lang/String;
    :catch_0
    move-exception v59

    .line 2761
    .local v59, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "unknown"

    goto :goto_1

    .line 2770
    .end local v59    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 2772
    .local v22, "userId":I
    :goto_3
    if-nez v60, :cond_4

    .line 2773
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "START u"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "} from uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p13

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " on display "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p20, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v6, :cond_a

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_4
    invoke-static/range {v22 .. v22}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    .line 2788
    invoke-static/range {v13 .. v19}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->checkLaunchIntentForAccessDLP(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z

    .line 2793
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2794
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v63

    .line 2795
    .local v63, "intentData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v64

    .line 2796
    .local v64, "intentType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v62

    .line 2797
    .local v62, "intentAction":Ljava/lang/String;
    if-eqz v62, :cond_7

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v64, :cond_7

    const-string/jumbo v6, "video"

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "audio"

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    if-eqz v63, :cond_7

    const-string/jumbo v6, "http"

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2800
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getInstance()Lcom/itsoninc/android/ItsOnOemApi;

    move-result-object v6

    move-object/from16 v0, v63

    move/from16 v1, p11

    invoke-virtual {v6, v0, v1}, Lcom/itsoninc/android/ItsOnOemApi;->registerActivityMapping(Ljava/lang/String;I)V

    .line 2805
    .end local v62    # "intentAction":Ljava/lang/String;
    .end local v63    # "intentData":Ljava/lang/String;
    .end local v64    # "intentType":Ljava/lang/String;
    :cond_7
    const/16 v47, 0x0

    .line 2806
    .local v47, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v15, 0x0

    .line 2807
    .local v15, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_8

    .line 2808
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v47

    .line 2811
    if-eqz v47, :cond_8

    .line 2812
    if-ltz p9, :cond_8

    move-object/from16 v0, v47

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_8

    .line 2813
    move-object/from16 v15, v47

    .line 2818
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v66

    .line 2820
    .local v66, "launchFlags":I
    const/high16 v6, 0x2000000

    and-int v6, v6, v66

    if-eqz v6, :cond_10

    if-eqz v47, :cond_10

    .line 2823
    if-ltz p9, :cond_d

    .line 2824
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2825
    const/4 v6, -0x3

    goto/16 :goto_2

    .line 2770
    .end local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "userId":I
    .end local v47    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v66    # "launchFlags":I
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 2773
    .restart local v22    # "userId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p20

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v6, :cond_c

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p20

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v6, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto/16 :goto_4

    .line 2827
    .restart local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v66    # "launchFlags":I
    :cond_d
    move-object/from16 v0, v47

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2828
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v6

    if-nez v6, :cond_e

    .line 2829
    const/4 v15, 0x0

    .line 2831
    :cond_e
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 2832
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 2833
    const/4 v6, 0x0

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2834
    if-eqz v15, :cond_f

    .line 2835
    move-object/from16 v0, v47

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 2837
    :cond_f
    move-object/from16 v0, v47

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p11

    if-ne v6, v0, :cond_10

    .line 2848
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p12, v0

    .line 2852
    :cond_10
    if-nez v60, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_11

    .line 2855
    const/16 v60, -0x1

    .line 2858
    :cond_11
    if-nez v60, :cond_12

    if-nez p4, :cond_12

    .line 2861
    const/16 v60, -0x2

    .line 2864
    :cond_12
    if-nez v60, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v6

    if-nez v6, :cond_13

    move-object/from16 v0, p4

    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_13

    .line 2868
    const/16 v60, -0x8

    .line 2871
    :cond_13
    if-nez v60, :cond_14

    if-eqz v47, :cond_14

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_14

    .line 2877
    const/high16 v6, 0x10000000

    and-int v6, v6, v66

    if-nez v6, :cond_14

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_14

    .line 2880
    :try_start_1
    const-string v6, "android.intent.category.VOICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2881
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 2883
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2886
    const/16 v60, -0x7

    .line 2895
    :cond_14
    :goto_5
    if-nez v60, :cond_15

    if-eqz p5, :cond_15

    .line 2899
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 2901
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity being started in new voice task does not support: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2904
    const/16 v60, -0x7

    .line 2912
    :cond_15
    :goto_6
    if-nez v15, :cond_17

    const/4 v13, 0x0

    .line 2914
    .local v13, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_7
    if-eqz v60, :cond_18

    .line 2915
    if-eqz v13, :cond_16

    if-eqz v15, :cond_16

    .line 2916
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2920
    :cond_16
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2922
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    move/from16 v6, v60

    .line 2927
    goto/16 :goto_2

    .line 2888
    .end local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    :catch_1
    move-exception v59

    .line 2889
    .local v59, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v7, "Failure checking voice capabilities"

    move-object/from16 v0, v59

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2890
    const/16 v60, -0x7

    goto/16 :goto_5

    .line 2906
    .end local v59    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v59

    .line 2907
    .restart local v59    # "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v7, "Failure checking voice capabilities"

    move-object/from16 v0, v59

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2908
    const/16 v60, -0x7

    goto :goto_6

    .line 2912
    .end local v59    # "e":Landroid/os/RemoteException;
    :cond_17
    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_7

    .line 2930
    .restart local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_18
    const/16 v29, 0x0

    .line 2932
    .local v29, "allowLaunchIntent":Z
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x1

    :goto_8
    if-eqz v6, :cond_19

    .line 2934
    const/16 v29, 0x1

    .line 2939
    :cond_19
    const/16 v54, 0x0

    .line 2941
    .local v54, "abort":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v72

    .line 2944
    .local v72, "startAnyPerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v24, p2

    move/from16 v25, p10

    move/from16 v26, p11

    invoke-virtual/range {v23 .. v29}, Lcom/android/server/am/ActivityManagerService;->checkContainerAppPermission(Landroid/content/Intent;IIILjava/lang/String;Z)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1c

    .line 2946
    if-eqz v15, :cond_1a

    .line 2947
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2951
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkContainerAppPermission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with revoked permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .line 2955
    .local v69, "msg":Ljava/lang/String;
    const-string v6, "ActivityManager"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2961
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v69

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2932
    .end local v54    # "abort":Z
    .end local v69    # "msg":Ljava/lang/String;
    .end local v72    # "startAnyPerm":I
    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 2965
    .restart local v54    # "abort":Z
    .restart local v72    # "startAnyPerm":I
    :cond_1c
    if-eqz v72, :cond_22

    move-object/from16 v16, p0

    move-object/from16 v17, p4

    move-object/from16 v18, p12

    move/from16 v19, p10

    move/from16 v20, p11

    move/from16 v21, p17

    .line 2966
    invoke-direct/range {v16 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v58

    .line 2968
    .local v58, "componentRestriction":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v56

    .line 2971
    .local v56, "actionRestriction":I
    const/4 v6, 0x1

    move/from16 v0, v58

    if-eq v0, v6, :cond_1d

    const/4 v6, 0x1

    move/from16 v0, v56

    if-ne v0, v6, :cond_21

    .line 2973
    :cond_1d
    if-eqz v15, :cond_1e

    .line 2974
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2979
    :cond_1e
    const/4 v6, 0x1

    move/from16 v0, v56

    if-ne v0, v6, :cond_1f

    .line 2980
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with revoked permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .line 2995
    .restart local v69    # "msg":Ljava/lang/String;
    :goto_9
    const-string v6, "ActivityManager"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3001
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v69

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2984
    .end local v69    # "msg":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v6, :cond_20

    .line 2985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exported from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .restart local v69    # "msg":Ljava/lang/String;
    goto/16 :goto_9

    .line 2990
    .end local v69    # "msg":Ljava/lang/String;
    :cond_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .restart local v69    # "msg":Ljava/lang/String;
    goto/16 :goto_9

    .line 3004
    .end local v69    # "msg":Ljava/lang/String;
    :cond_21
    const/4 v6, 0x2

    move/from16 v0, v56

    if-ne v0, v6, :cond_25

    .line 3005
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .line 3010
    .local v68, "message":Ljava/lang/String;
    const-string v6, "ActivityManager"

    move-object/from16 v0, v68

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    const/16 v54, 0x1

    .line 3022
    .end local v56    # "actionRestriction":I
    .end local v58    # "componentRestriction":I
    .end local v68    # "message":Ljava/lang/String;
    :cond_22
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v17, p2

    move/from16 v18, p11

    move/from16 v19, p10

    move-object/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_26

    const/4 v6, 0x1

    :goto_b
    or-int v54, v54, v6

    .line 3025
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v6, :cond_23

    .line 3029
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v73

    .line 3030
    .local v73, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v73

    invoke-interface {v6, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-nez v6, :cond_27

    const/4 v6, 0x1

    :goto_c
    or-int v54, v54, v6

    .line 3037
    .end local v73    # "watchIntent":Landroid/content/Intent;
    :cond_23
    :goto_d
    if-eqz v54, :cond_28

    .line 3038
    if-eqz v13, :cond_24

    if-eqz v15, :cond_24

    .line 3039
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3044
    :cond_24
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3046
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3050
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 3012
    .restart local v56    # "actionRestriction":I
    .restart local v58    # "componentRestriction":I
    :cond_25
    const/4 v6, 0x2

    move/from16 v0, v58

    if-ne v0, v6, :cond_22

    .line 3013
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires appop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .line 3017
    .restart local v68    # "message":Ljava/lang/String;
    const-string v6, "ActivityManager"

    move-object/from16 v0, v68

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    const/16 v54, 0x1

    goto/16 :goto_a

    .line 3022
    .end local v56    # "actionRestriction":I
    .end local v58    # "componentRestriction":I
    .end local v68    # "message":Ljava/lang/String;
    :cond_26
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 3030
    .restart local v73    # "watchIntent":Landroid/content/Intent;
    :cond_27
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 3032
    .end local v73    # "watchIntent":Landroid/content/Intent;
    :catch_3
    move-exception v59

    .line 3033
    .restart local v59    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto/16 :goto_d

    .line 3054
    .end local v59    # "e":Landroid/os/RemoteException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->SUPPORT_APPLOCK:Z

    if-eqz v6, :cond_2a

    .line 3055
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2d

    const/16 v65, 0x1

    .line 3056
    .local v65, "isLaunchedFromRecents":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    if-nez v6, :cond_29

    if-eqz v47, :cond_2e

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_2e

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-nez v6, :cond_2e

    :cond_29
    const/16 v61, 0x1

    .line 3058
    .local v61, "hasMultiWindowStyle":Z
    :goto_f
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocked getMultiWindowStyle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocked isLaunchedFromRecents:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " hasMultiWindowStyle:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " not normal : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v47, :cond_2f

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_2f

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-nez v6, :cond_2f

    const/4 v6, 0x1

    :goto_10
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2a

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p12

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    if-nez v65, :cond_2a

    if-nez v61, :cond_2a

    invoke-static/range {v22 .. v22}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 3065
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocked pkgName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " className:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 3067
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v55

    .line 3068
    .local v55, "action":Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3069
    .local v18, "newIntent":Landroid/content/Intent;
    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p0

    move/from16 v20, p15

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v57

    .line 3071
    .local v57, "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v57, :cond_30

    .line 3072
    const-string v6, "LOCKED_PACKAGE_INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3073
    const-string v6, "LOCKED_PACKAGE_NAME"

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3074
    move-object/from16 v0, v57

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v57

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3075
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3076
    const/high16 v6, 0x8000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3077
    move-object/from16 p4, v57

    .line 3078
    move-object/from16 p2, v18

    .line 3087
    .end local v18    # "newIntent":Landroid/content/Intent;
    .end local v55    # "action":Ljava/lang/String;
    .end local v57    # "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v61    # "hasMultiWindowStyle":Z
    .end local v65    # "isLaunchedFromRecents":Z
    :cond_2a
    :goto_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setupKEAOverridePath(Landroid/content/pm/ActivityInfo;)V

    .line 3099
    new-instance v30, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v38, v0

    if-eqz p5, :cond_31

    const/16 v43, 0x1

    :goto_12
    move/from16 v33, p11

    move-object/from16 v34, p12

    move-object/from16 v35, p2

    move-object/from16 v36, p3

    move-object/from16 v37, p4

    move-object/from16 v39, v15

    move-object/from16 v40, p8

    move/from16 v41, p9

    move/from16 v42, p18

    move-object/from16 v44, p0

    move-object/from16 v45, p20

    move-object/from16 v46, p16

    move-object/from16 v48, p7

    invoke-direct/range {v30 .. v48}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 3104
    .local v30, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p19, :cond_2b

    .line 3105
    const/4 v6, 0x0

    aput-object v30, p19, v6

    .line 3108
    :cond_2b
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v6, :cond_2c

    if-eqz v47, :cond_2c

    .line 3111
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3115
    :cond_2c
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v6, :cond_32

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v6, :cond_32

    .line 3116
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v33, v0

    new-instance v34, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v38, "activity"

    const/16 v39, 0x0

    move-object/from16 v35, p1

    move/from16 v36, p10

    move/from16 v37, p11

    invoke-virtual/range {v33 .. v39}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 3118
    const/4 v6, -0x4

    goto/16 :goto_2

    .line 3055
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2d
    const/16 v65, 0x0

    goto/16 :goto_e

    .line 3056
    .restart local v65    # "isLaunchedFromRecents":Z
    :cond_2e
    const/16 v61, 0x0

    goto/16 :goto_f

    .line 3059
    .restart local v61    # "hasMultiWindowStyle":Z
    :cond_2f
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 3080
    .restart local v18    # "newIntent":Landroid/content/Intent;
    .restart local v55    # "action":Ljava/lang/String;
    .restart local v57    # "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    :cond_30
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLock can not resolve Activity , should never happen. Check Action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3099
    .end local v18    # "newIntent":Landroid/content/Intent;
    .end local v55    # "action":Ljava/lang/String;
    .end local v57    # "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v61    # "hasMultiWindowStyle":Z
    .end local v65    # "isLaunchedFromRecents":Z
    :cond_31
    const/16 v43, 0x0

    goto/16 :goto_12

    .line 3136
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_32
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 3137
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 3152
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v71, v0

    .line 3153
    .local v71, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p5, :cond_35

    move-object/from16 v0, v71

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_33

    move-object/from16 v0, v71

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p11

    if-eq v6, v0, :cond_35

    .line 3155
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    const-string v28, "Activity start"

    move/from16 v24, p10

    move/from16 v25, p11

    move/from16 v26, p13

    move/from16 v27, p14

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 3157
    new-instance v70, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v0, v70

    move-object/from16 v1, v30

    move-object/from16 v2, v47

    move/from16 v3, p15

    move-object/from16 v4, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 3159
    .local v70, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3160
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3162
    const/16 v33, 0x5

    const/16 v34, 0x5

    const/16 v35, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v36

    const-string v37, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move/from16 v39, v22

    invoke-static/range {v33 .. v39}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3166
    const/4 v6, 0x4

    goto/16 :goto_2

    .line 3139
    .end local v70    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v71    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_34
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_13

    .line 3170
    .restart local v71    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v6, :cond_37

    .line 3176
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 3181
    :goto_14
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 3211
    const/16 v51, 0x1

    move-object/from16 v45, p0

    move-object/from16 v46, v30

    move-object/from16 v48, p5

    move-object/from16 v49, p6

    move/from16 v50, p15

    move-object/from16 v52, p16

    move-object/from16 v53, p21

    invoke-virtual/range {v45 .. v53}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    move-result v60

    .line 3214
    if-gez v60, :cond_36

    .line 3220
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 3222
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    :cond_36
    move/from16 v6, v60

    .line 3225
    goto/16 :goto_2

    .line 3178
    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_14
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 45
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "iContainer"    # Landroid/app/IActivityContainer;
    .param p19, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2099
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2102
    :cond_0
    if-eqz p8, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v42

    .line 2103
    .local v42, "sr":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v42, :cond_2

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v35, 0x1

    .line 2104
    .local v35, "isNotFromResolverActivity":Z
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v35, :cond_3

    const/16 v27, 0x1

    .line 2107
    .local v27, "componentSpecified":Z
    :goto_2
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    move/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p17

    .line 2110
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v31

    .local v31, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v29, p18

    .line 2113
    check-cast v29, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2114
    .local v29, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2115
    if-eqz v29, :cond_4

    :try_start_0
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v5, :cond_4

    .line 2118
    const/16 v41, -0x6

    monitor-exit v3

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .line 2286
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_3
    return v41

    .line 2102
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "componentSpecified":Z
    .end local v29    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v35    # "isNotFromResolverActivity":Z
    .end local v42    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/16 v42, 0x0

    goto :goto_0

    .line 2103
    .restart local v42    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/16 v35, 0x0

    goto :goto_1

    .line 2104
    .restart local v35    # "isNotFromResolverActivity":Z
    :cond_3
    const/16 v27, 0x0

    goto :goto_2

    .line 2120
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v27    # "componentSpecified":Z
    .restart local v29    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 2121
    .local v22, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2123
    .local v23, "realCallingUid":I
    if-ltz p2, :cond_e

    .line 2124
    const/16 v19, -0x1

    .line 2133
    .local v19, "callingPid":I
    :goto_4
    if-eqz v29, :cond_5

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2134
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    .line 2144
    .local v43, "stack":Lcom/android/server/am/ActivityStack;
    :goto_5
    if-eqz p14, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, v43

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 2151
    .local v38, "origId":J
    if-eqz v31, :cond_18

    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    .line 2156
    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2160
    :cond_6
    move/from16 v8, p2

    .line 2161
    .local v8, "appCallingUid":I
    if-eqz p1, :cond_7

    .line 2162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v32

    .line 2163
    .local v32, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v32, :cond_12

    .line 2164
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2174
    .end local v32    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x2

    const-string v7, "android"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x1

    new-array v13, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v4, v13, v2

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v14, v2

    const/high16 v15, 0x50000000

    const/16 v16, 0x0

    move/from16 v9, p17

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v44

    .line 2180
    .local v44, "target":Landroid/content/IIntentSender;
    new-instance v36, Landroid/content/Intent;

    invoke-direct/range {v36 .. v36}, Landroid/content/Intent;-><init>()V

    .line 2181
    .local v36, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_8

    .line 2183
    const-string/jumbo v2, "has_result"

    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2185
    :cond_8
    const-string/jumbo v2, "intent"

    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v44

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 2188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ActivityRecord;

    .line 2189
    .local v34, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2191
    const-string v2, "cur_task"

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2194
    .end local v34    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const-string/jumbo v2, "new_app"

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2196
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2197
    const-string v2, "android"

    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2199
    move-object/from16 p4, v36

    .line 2200
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 2201
    const/16 p1, 0x0

    .line 2202
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2203
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v19

    .line 2204
    const/16 v27, 0x1

    .line 2206
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v5, 0x0

    const v6, 0x10480

    move-object/from16 v0, p4

    move/from16 v1, p17

    invoke-interface {v2, v0, v5, v6, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v40

    .line 2211
    .local v40, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v40, :cond_13

    move-object/from16 v0, v40

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2212
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p17

    invoke-virtual {v2, v13, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 2220
    .end local v8    # "appCallingUid":I
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v44    # "target":Landroid/content/IIntentSender;
    :goto_8
    const/16 v28, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v20, p2

    move-object/from16 v21, p3

    move/from16 v24, p11

    move-object/from16 v25, p15

    move/from16 v26, p16

    move-object/from16 v30, p19

    :try_start_4
    invoke-virtual/range {v9 .. v30}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v41

    .line 2226
    .local v41, "res":I
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    move-object/from16 v0, v43

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_a

    .line 2233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v6, "updateConfiguration()"

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    const/4 v2, 0x0

    move-object/from16 v0, v43

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v2, v0, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 2250
    :cond_a
    if-eqz v29, :cond_b

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_14

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2251
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v43

    .line 2256
    :goto_9
    if-eqz p13, :cond_d

    .line 2257
    move/from16 v0, v41

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 2258
    if-nez v41, :cond_15

    .line 2259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2262
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2265
    :goto_a
    :try_start_6
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_c

    .line 2286
    :cond_d
    :goto_b
    monitor-exit v3

    goto/16 :goto_3

    .line 2287
    .end local v19    # "callingPid":I
    .end local v22    # "realCallingPid":I
    .end local v23    # "realCallingUid":I
    .end local v38    # "origId":J
    .end local v41    # "res":I
    .end local v43    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v2

    :goto_c
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 2125
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v22    # "realCallingPid":I
    .restart local v23    # "realCallingUid":I
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_e
    if-nez p1, :cond_f

    .line 2126
    move/from16 v19, v22

    .line 2127
    .restart local v19    # "callingPid":I
    move/from16 p2, v23

    goto/16 :goto_4

    .line 2129
    .end local v19    # "callingPid":I
    :cond_f
    const/16 p2, -0x1

    move/from16 v19, p2

    .restart local v19    # "callingPid":I
    goto/16 :goto_4

    .line 2136
    :cond_10
    :try_start_7
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    .restart local v43    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_5

    .line 2144
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 2166
    .restart local v8    # "appCallingUid":I
    .restart local v32    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "origId":J
    :cond_12
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when starting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2170
    const/16 v41, -0x4

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 2211
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "newIntent":Landroid/content/Intent;
    .restart local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v44    # "target":Landroid/content/IIntentSender;
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 2213
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v33

    move-object/from16 v13, v31

    .line 2214
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v33, "e":Landroid/os/RemoteException;
    :goto_d
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 2253
    .end local v8    # "appCallingUid":I
    .end local v33    # "e":Landroid/os/RemoteException;
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v44    # "target":Landroid/content/IIntentSender;
    .restart local v41    # "res":I
    :cond_14
    :try_start_8
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    goto/16 :goto_9

    .line 2266
    :cond_15
    const/4 v2, 0x2

    move/from16 v0, v41

    if-ne v0, v2, :cond_d

    .line 2267
    const/4 v2, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v37

    .line 2268
    .local v37, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v37, :cond_16

    move-object/from16 v0, v37

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v5, :cond_16

    .line 2269
    const/4 v2, 0x0

    move-object/from16 v0, p13

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2270
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2271
    const-wide/16 v6, 0x0

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2272
    const-wide/16 v6, 0x0

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_b

    .line 2274
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2278
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2281
    :goto_e
    :try_start_a
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_17

    goto/16 :goto_b

    .line 2287
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v19    # "callingPid":I
    .end local v22    # "realCallingPid":I
    .end local v23    # "realCallingUid":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "origId":J
    .end local v41    # "res":I
    .end local v43    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_c

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "appCallingUid":I
    .restart local v19    # "callingPid":I
    .restart local v22    # "realCallingPid":I
    .restart local v23    # "realCallingUid":I
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "newIntent":Landroid/content/Intent;
    .restart local v38    # "origId":J
    .restart local v43    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v44    # "target":Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_c

    .line 2279
    .end local v8    # "appCallingUid":I
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v44    # "target":Landroid/content/IIntentSender;
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "res":I
    :catch_1
    move-exception v2

    goto :goto_e

    .line 2263
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_a

    .line 2213
    .end local v41    # "res":I
    .restart local v8    # "appCallingUid":I
    .restart local v36    # "newIntent":Landroid/content/Intent;
    .restart local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v44    # "target":Landroid/content/IIntentSender;
    :catch_3
    move-exception v33

    goto/16 :goto_d

    .end local v8    # "appCallingUid":I
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v44    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_18
    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_8
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    .locals 58
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 3526
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v34, v0

    .line 3527
    .local v34, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v24, v0

    .line 3530
    .local v24, "callingUid":I
    const/16 v27, 0x0

    .line 3537
    .local v27, "createdNewTask":Z
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-boolean v8, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v8, :cond_0

    .line 3538
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting activity in task not in recents: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    const/16 p8, 0x0

    .line 3542
    :cond_0
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/16 v40, 0x1

    .line 3543
    .local v40, "launchSingleTop":Z
    :goto_0
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    const/16 v38, 0x1

    .line 3544
    .local v38, "launchSingleInstance":Z
    :goto_1
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    const/16 v39, 0x1

    .line 3546
    .local v39, "launchSingleTask":Z
    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/content/Intent;->getFlags()I

    move-result v37

    .line 3547
    .local v37, "launchFlags":I
    const/high16 v8, 0x80000

    and-int v8, v8, v37

    if-eqz v8, :cond_c

    if-nez v38, :cond_1

    if-eqz v39, :cond_c

    .line 3550
    :cond_1
    const-string v8, "ActivityManager"

    const-string v9, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    const v8, -0x8080001

    and-int v37, v37, v8

    .line 3570
    :goto_3
    :pswitch_0
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v8, :cond_d

    if-nez v39, :cond_d

    if-nez v38, :cond_d

    const/high16 v8, 0x80000

    and-int v8, v8, v37

    if-eqz v8, :cond_d

    const/16 v41, 0x1

    .line 3574
    .local v41, "launchTaskBehind":Z
    :goto_4
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_2

    const/high16 v8, 0x10000000

    and-int v8, v8, v37

    if-eqz v8, :cond_2

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_2

    .line 3581
    const-string v8, "ActivityManager"

    const-string v9, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3585
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3588
    :cond_2
    const/high16 v8, 0x80000

    and-int v8, v8, v37

    if-eqz v8, :cond_3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_3

    .line 3602
    const/high16 v8, 0x10000000

    or-int v37, v37, v8

    .line 3608
    :cond_3
    const/high16 v8, 0x10000000

    and-int v8, v8, v37

    if-eqz v8, :cond_5

    .line 3609
    if-nez v41, :cond_4

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 3611
    :cond_4
    const/high16 v8, 0x8000000

    or-int v37, v37, v8

    .line 3617
    :cond_5
    const/high16 v8, 0x40000

    and-int v8, v8, v37

    if-nez v8, :cond_e

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3624
    if-nez p6, :cond_6

    .line 3625
    const/4 v8, 0x1

    move-object/from16 v0, p1

    iput-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 3628
    :cond_6
    const/high16 v8, 0x1000000

    and-int v8, v8, v37

    if-eqz v8, :cond_f

    move-object/from16 v47, p1

    .line 3635
    .local v47, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_6
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_8

    .line 3636
    move-object/from16 v25, p2

    .line 3637
    .local v25, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v25, :cond_7

    .line 3638
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v47

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 3640
    :cond_7
    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 3642
    and-int/lit8 p5, p5, -0x2

    .line 3646
    .end local v25    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/16 v22, 0x0

    .line 3647
    .local v22, "addingToTask":Z
    const/16 v50, 0x0

    .line 3652
    .local v50, "reuseTask":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_1c

    if-eqz p8, :cond_1c

    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_1c

    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v8, :cond_1c

    .line 3657
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v23

    .line 3658
    .local v23, "baseIntent":Landroid/content/Intent;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v51

    .line 3659
    .local v51, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v23, :cond_10

    .line 3660
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3661
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launching into task without base intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3542
    .end local v22    # "addingToTask":Z
    .end local v23    # "baseIntent":Landroid/content/Intent;
    .end local v37    # "launchFlags":I
    .end local v38    # "launchSingleInstance":Z
    .end local v39    # "launchSingleTask":Z
    .end local v40    # "launchSingleTop":Z
    .end local v41    # "launchTaskBehind":Z
    .end local v47    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v50    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v51    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 3543
    .restart local v40    # "launchSingleTop":Z
    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 3544
    .restart local v38    # "launchSingleInstance":Z
    :cond_b
    const/16 v39, 0x0

    goto/16 :goto_2

    .line 3555
    .restart local v37    # "launchFlags":I
    .restart local v39    # "launchSingleTask":Z
    :cond_c
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 3559
    :pswitch_1
    const/high16 v8, 0x80000

    or-int v37, v37, v8

    .line 3560
    goto/16 :goto_3

    .line 3562
    :pswitch_2
    const/high16 v8, 0x80000

    or-int v37, v37, v8

    .line 3563
    goto/16 :goto_3

    .line 3565
    :pswitch_3
    const v8, -0x8000001

    and-int v37, v37, v8

    goto/16 :goto_3

    .line 3570
    :cond_d
    const/16 v41, 0x0

    goto/16 :goto_4

    .line 3617
    .restart local v41    # "launchTaskBehind":Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 3628
    :cond_f
    const/16 v47, 0x0

    goto/16 :goto_6

    .line 3667
    .restart local v22    # "addingToTask":Z
    .restart local v23    # "baseIntent":Landroid/content/Intent;
    .restart local v47    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v50    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v51    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_10
    if-nez v38, :cond_11

    if-eqz v39, :cond_13

    .line 3668
    :cond_11
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 3669
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3670
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to launch singleInstance/Task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " into different task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3673
    :cond_12
    if-eqz v51, :cond_13

    .line 3674
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3675
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller with inTask "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has root "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v51

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but target is singleInstance/Task"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3682
    :cond_13
    if-nez v51, :cond_1a

    .line 3683
    const v30, 0x18082000

    .line 3686
    .local v30, "flagsOfInterest":I
    const v8, -0x18082001

    and-int v8, v8, v37

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const v10, 0x18082000

    and-int/2addr v9, v10

    or-int v37, v8, v9

    .line 3688
    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3689
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 3690
    const/16 v22, 0x1

    .line 3702
    .end local v30    # "flagsOfInterest":I
    :goto_7
    move-object/from16 v50, p8

    .line 3707
    .end local v23    # "baseIntent":Landroid/content/Intent;
    .end local v51    # "root":Lcom/android/server/am/ActivityRecord;
    :goto_8
    if-nez p8, :cond_14

    .line 3708
    if-nez p2, :cond_1d

    .line 3711
    const/high16 v8, 0x10000000

    and-int v8, v8, v37

    if-nez v8, :cond_14

    if-nez p8, :cond_14

    .line 3712
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    const/high16 v8, 0x10000000

    or-int v37, v37, v8

    .line 3728
    :cond_14
    :goto_9
    const/16 v45, 0x0

    .line 3729
    .local v45, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v46, 0x0

    .line 3731
    .local v46, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_21

    .line 3732
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_20

    .line 3738
    const/high16 v8, 0x10000000

    and-int v8, v8, v37

    if-nez v8, :cond_15

    .line 3739
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startActivity called from finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; forcing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    const/high16 v8, 0x10000000

    or-int v37, v37, v8

    .line 3742
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v45, v0

    .line 3743
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v46, v0

    .line 3747
    :cond_15
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_16

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_16

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p2

    if-ne v8, v0, :cond_16

    .line 3748
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity is launching from finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", so cancelling activity result."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3753
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3764
    :cond_16
    const/16 v52, 0x0

    .line 3765
    .local v52, "sourceStack":Lcom/android/server/am/ActivityStack;
    const/16 p2, 0x0

    .line 3774
    :goto_a
    const/16 v42, 0x0

    .line 3776
    .local v42, "movedHome":Z
    const/4 v5, 0x0

    .line 3779
    .local v5, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3780
    const/high16 v8, 0x10000

    and-int v8, v8, v37

    if-eqz v8, :cond_22

    const/4 v7, 0x1

    .line 3787
    .local v7, "noAnimation":Z
    :goto_b
    const/high16 v8, 0x10000000

    and-int v8, v8, v37

    if-eqz v8, :cond_17

    const/high16 v8, 0x8000000

    and-int v8, v8, v37

    if-eqz v8, :cond_19

    :cond_17
    if-nez v38, :cond_18

    if-eqz v39, :cond_47

    :cond_18
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v8, :cond_47

    .line 3795
    :cond_19
    if-nez p8, :cond_47

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_47

    .line 3800
    if-nez v38, :cond_23

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v35

    .line 3802
    .local v35, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_c
    if-eqz v35, :cond_47

    .line 3806
    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const v8, 0x10008000

    and-int v8, v8, v37

    const v10, 0x10008000

    if-ne v8, v10, :cond_24

    const/4 v8, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 3809
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 3810
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    const/4 v8, 0x5

    .line 4814
    .end local v35    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_e
    return v8

    .line 3695
    .end local v5    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "noAnimation":Z
    .end local v42    # "movedHome":Z
    .end local v45    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v46    # "newTaskIntent":Landroid/content/Intent;
    .end local v52    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "baseIntent":Landroid/content/Intent;
    .restart local v51    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/high16 v8, 0x10000000

    and-int v8, v8, v37

    if-eqz v8, :cond_1b

    .line 3696
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 3699
    :cond_1b
    const/16 v22, 0x1

    goto/16 :goto_7

    .line 3704
    .end local v23    # "baseIntent":Landroid/content/Intent;
    .end local v51    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/16 p8, 0x0

    goto/16 :goto_8

    .line 3716
    :cond_1d
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1e

    .line 3720
    const/high16 v8, 0x10000000

    or-int v37, v37, v8

    goto/16 :goto_9

    .line 3721
    :cond_1e
    if-nez v38, :cond_1f

    if-eqz v39, :cond_14

    .line 3724
    :cond_1f
    const/high16 v8, 0x10000000

    or-int v37, v37, v8

    goto/16 :goto_9

    .line 3768
    .restart local v45    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v46    # "newTaskIntent":Landroid/content/Intent;
    :cond_20
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v52, v0

    .restart local v52    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_a

    .line 3771
    .end local v52    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_21
    const/16 v52, 0x0

    .restart local v52    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_a

    .line 3780
    .restart local v5    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v42    # "movedHome":Z
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 3800
    .restart local v7    # "noAnimation":Z
    :cond_23
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v8}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v35

    goto :goto_c

    .line 3806
    .restart local v35    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_24
    const/4 v8, 0x0

    goto :goto_d

    .line 3813
    :cond_25
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_26

    .line 3814
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3818
    const-string/jumbo v8, "jp.co.nttdocomo.carriermail"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_26

    .line 3820
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingArTask:Lcom/android/server/am/TaskRecord;

    .line 3911
    :cond_26
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v8, :cond_27

    .line 3916
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 3918
    :cond_27
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3919
    if-eqz v5, :cond_28

    .line 3920
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3928
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v31

    .line 3929
    .local v31, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v31, :cond_2d

    const/16 v28, 0x0

    .line 3931
    .local v28, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_f
    const/16 v43, 0x0

    .line 3932
    .local v43, "movedToFront":Z
    if-eqz v28, :cond_29

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, v9, :cond_2e

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-ne v8, v9, :cond_2e

    .line 4079
    :cond_29
    :goto_10
    if-nez v43, :cond_2a

    .line 4082
    const-string/jumbo v8, "intentActivityFound"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4087
    :cond_2a
    const/high16 v8, 0x200000

    and-int v8, v8, v37

    if-eqz v8, :cond_2b

    .line 4088
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v35

    .line 4090
    :cond_2b
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_37

    .line 4095
    if-eqz p6, :cond_36

    .line 4096
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v5, v8, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4100
    if-nez v43, :cond_2c

    .line 4101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 4106
    :cond_2c
    :goto_11
    const/4 v8, 0x1

    goto/16 :goto_e

    .line 3929
    .end local v28    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v43    # "movedToFront":Z
    :cond_2d
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    goto :goto_f

    .line 3943
    .restart local v28    # "curTop":Lcom/android/server/am/ActivityRecord;
    .restart local v43    # "movedToFront":Z
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->isKnoxmode()Z

    move-result v8

    if-nez v8, :cond_33

    .line 3944
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x400000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3945
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    .line 3960
    :cond_2f
    :goto_12
    if-eqz p2, :cond_30

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_29

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, v9, :cond_29

    .line 3963
    :cond_30
    if-eqz v41, :cond_31

    if-eqz p2, :cond_31

    .line 3964
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 3966
    :cond_31
    const/16 v42, 0x1

    .line 4058
    const/4 v12, 0x1

    .line 4059
    .local v12, "isDoResume":Z
    if-eqz p1, :cond_35

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x1000

    if-nez v8, :cond_35

    const/4 v12, 0x1

    .line 4060
    :goto_13
    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v10, 0x0

    const-string v11, "bringingFoundTaskToFront"

    move-object/from16 v8, p7

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;Z)V

    .line 4063
    const/16 v43, 0x1

    .line 4064
    const v8, 0x10004000

    and-int v8, v8, v37

    const v9, 0x10004000

    if-ne v8, v9, :cond_32

    .line 4073
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4076
    :cond_32
    const/16 p7, 0x0

    goto/16 :goto_10

    .line 3947
    .end local v12    # "isDoResume":Z
    :cond_33
    sget-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    if-eqz v8, :cond_34

    .line 3948
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x400000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3949
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    goto :goto_12

    .line 3952
    :cond_34
    :try_start_0
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    const-string v9, "com.sec.android.app.launcher"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2f

    .line 3953
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    .line 3954
    :catch_0
    move-exception v48

    .line 3955
    .local v48, "npe":Ljava/lang/NullPointerException;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_12

    .line 4059
    .end local v48    # "npe":Ljava/lang/NullPointerException;
    .restart local v12    # "isDoResume":Z
    :cond_35
    const/4 v12, 0x0

    goto :goto_13

    .line 4104
    .end local v12    # "isDoResume":Z
    :cond_36
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_11

    .line 4110
    :cond_37
    const/16 v32, 0x0

    .line 4113
    .local v32, "ignoreIntentActivity":Z
    const v8, 0x10008000

    and-int v8, v8, v37

    const v9, 0x10008000

    if-ne v8, v9, :cond_3b

    .line 4118
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v50, v0

    .line 4119
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 4120
    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 4228
    :cond_38
    :goto_14
    if-nez v22, :cond_47

    if-nez v50, :cond_47

    .line 4235
    if-eqz p6, :cond_46

    .line 4273
    const/4 v8, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4277
    if-nez v43, :cond_3a

    .line 4281
    if-eqz v28, :cond_39

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 4283
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 4289
    :cond_3a
    :goto_15
    const/4 v8, 0x2

    goto/16 :goto_e

    .line 4121
    :cond_3b
    const/high16 v8, 0x4000000

    and-int v8, v8, v37

    if-nez v8, :cond_3c

    if-nez v38, :cond_3c

    if-eqz v39, :cond_40

    .line 4127
    :cond_3c
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v54

    .line 4129
    .local v54, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v54, :cond_3e

    .line 4130
    move-object/from16 v0, v54

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v8, :cond_3d

    .line 4135
    move-object/from16 v0, v54

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 4137
    :cond_3d
    const/16 v8, 0x7533

    move-object/from16 v0, v54

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4139
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v54

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_14

    .line 4165
    :cond_3e
    const/16 v22, 0x1

    .line 4168
    move-object/from16 p2, v35

    .line 4169
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4170
    .local v14, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v14, :cond_38

    iget-object v8, v14, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v8, :cond_38

    .line 4173
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4174
    if-nez v41, :cond_3f

    const/4 v8, 0x1

    :goto_16
    const/4 v9, 0x0

    invoke-virtual {v5, v14, v8, v9}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    goto/16 :goto_14

    :cond_3f
    const/4 v8, 0x0

    goto :goto_16

    .line 4179
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v54    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_40
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 4186
    const/high16 v8, 0x20000000

    and-int v8, v8, v37

    if-nez v8, :cond_41

    if-eqz v40, :cond_43

    :cond_41
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 4188
    const/16 v8, 0x7533

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4190
    move-object/from16 v0, v35

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v8, :cond_42

    .line 4191
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 4193
    :cond_42
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 4195
    :cond_43
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 4199
    const/16 v22, 0x1

    .line 4200
    move-object/from16 p2, v35

    goto/16 :goto_14

    .line 4210
    :cond_44
    const/high16 v8, 0x200000

    and-int v8, v8, v37

    if-nez v8, :cond_45

    .line 4216
    const/16 v22, 0x1

    .line 4217
    move-object/from16 p2, v35

    goto/16 :goto_14

    .line 4218
    :cond_45
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v8, v8, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v8, :cond_38

    .line 4226
    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_14

    .line 4287
    :cond_46
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_15

    .line 4301
    .end local v28    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "focusStack":Lcom/android/server/am/ActivityStack;
    .end local v32    # "ignoreIntentActivity":Z
    .end local v35    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v43    # "movedToFront":Z
    :cond_47
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_4b

    .line 4305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v55, v0

    .line 4332
    .local v55, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v55

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v54

    .line 4342
    .restart local v54    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v54, :cond_4d

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_4d

    .line 4343
    move-object/from16 v0, v54

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    move-object/from16 v0, v54

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v9, :cond_4d

    .line 4344
    move-object/from16 v0, v54

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_4d

    move-object/from16 v0, v54

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_4d

    .line 4345
    const/high16 v8, 0x20000000

    and-int v8, v8, v37

    if-nez v8, :cond_48

    if-nez v40, :cond_48

    if-eqz v39, :cond_4d

    :cond_48
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v8, :cond_4d

    .line 4348
    const/16 v8, 0x7533

    move-object/from16 v0, v54

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v54

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4352
    const/4 v8, 0x0

    move-object/from16 v0, v55

    iput-object v8, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4353
    if-eqz p6, :cond_49

    .line 4354
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4356
    :cond_49
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4357
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_4a

    .line 4361
    const/4 v8, 0x1

    goto/16 :goto_e

    .line 4363
    :cond_4a
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v54

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4364
    const/4 v8, 0x3

    goto/16 :goto_e

    .line 4371
    .end local v54    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v55    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_4b
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_4c

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_4c

    .line 4372
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v14, -0x1

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4375
    :cond_4c
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4376
    const/4 v8, -0x2

    goto/16 :goto_e

    .line 4379
    .restart local v54    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v55    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_4d
    const-string v8, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 4380
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_4f

    const-string v8, "CU_Flag"

    const/4 v9, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4f

    .line 4381
    new-instance v33, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v33

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4382
    .local v33, "in":Landroid/content/Intent;
    const/high16 v8, 0x50000000

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4383
    const-string v8, "CU_Vas"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4385
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4390
    :goto_17
    const/4 v8, 0x4

    goto/16 :goto_e

    .line 4386
    :catch_1
    move-exception v29

    .line 4387
    .local v29, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "ActivityManager"

    const-string v9, "Activity Not Found !!! "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    invoke-virtual/range {v29 .. v29}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_17

    .line 4392
    .end local v29    # "e":Landroid/content/ActivityNotFoundException;
    .end local v33    # "in":Landroid/content/Intent;
    :cond_4e
    const-string v8, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 4393
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 4394
    new-instance v33, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHECK_CMCC_VAS"

    move-object/from16 v0, v33

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4395
    .restart local v33    # "in":Landroid/content/Intent;
    const/high16 v8, 0x50000000

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4397
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4402
    :goto_18
    const/4 v8, 0x4

    goto/16 :goto_e

    .line 4398
    :catch_2
    move-exception v29

    .line 4399
    .restart local v29    # "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "ActivityManager"

    const-string v9, "Activity Not Found !!! "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    invoke-virtual/range {v29 .. v29}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_18

    .line 4406
    .end local v29    # "e":Landroid/content/ActivityNotFoundException;
    .end local v33    # "in":Landroid/content/Intent;
    :cond_4f
    const/16 v44, 0x0

    .line 4407
    .local v44, "newTask":Z
    const/16 v36, 0x0

    .line 4410
    .local v36, "keepCurTransition":Z
    const/16 v26, 0x0

    .line 4461
    .local v26, "coupledTaskMode":Z
    if-eqz v41, :cond_52

    if-eqz p2, :cond_52

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v53, v0

    .line 4465
    .local v53, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :goto_19
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_50

    if-nez p8, :cond_50

    if-nez v22, :cond_50

    const/high16 v8, 0x10000000

    and-int v8, v8, v37

    if-nez v8, :cond_51

    :cond_50
    if-eqz v26, :cond_5e

    .line 4469
    :cond_51
    if-eqz v50, :cond_53

    move-object/from16 v14, v50

    .line 4474
    .restart local v14    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 4475
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 4476
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted Lock Task Mode violation r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    const/4 v8, 0x5

    goto/16 :goto_e

    .line 4461
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v53    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_52
    const/16 v53, 0x0

    goto :goto_19

    .line 4469
    .restart local v53    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_53
    new-instance v13, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v15

    if-eqz v45, :cond_54

    move-object/from16 v16, v45

    :goto_1b
    if-eqz v46, :cond_55

    move-object/from16 v17, v46

    :goto_1c
    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-direct/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    move-object v14, v13

    goto :goto_1a

    :cond_54
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    goto :goto_1b

    :cond_55
    move-object/from16 v17, v34

    goto :goto_1c

    .line 4481
    .restart local v14    # "task":Lcom/android/server/am/TaskRecord;
    :cond_56
    const/16 v44, 0x1

    .line 4483
    const/16 v57, 0x1

    .line 4490
    .local v57, "updateFocus":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v44

    move-object/from16 v3, p2

    move/from16 v4, v57

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4497
    const-string/jumbo v8, "startingNewTask"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4501
    if-nez v50, :cond_5d

    .line 4504
    if-nez v41, :cond_5b

    const/4 v15, 0x1

    :goto_1d
    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v45, :cond_5c

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v18, v0

    :goto_1e
    move-object v13, v5

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZZI)V

    .line 4505
    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4541
    :goto_1f
    if-nez v42, :cond_57

    .line 4542
    const v8, 0x10004000

    and-int v8, v8, v37

    const v9, 0x10004000

    if-ne v8, v9, :cond_57

    .line 4547
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4775
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v57    # "updateFocus":Z
    :cond_57
    :goto_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v20, v0

    move/from16 v16, v24

    move-object/from16 v18, v34

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 4778
    if-eqz p2, :cond_58

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v8

    if-eqz v8, :cond_58

    .line 4779
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4781
    :cond_58
    if-eqz v44, :cond_59

    .line 4782
    const/16 v8, 0x7534

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4794
    :cond_59
    const/16 v8, 0x7535

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4795
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v15, v5

    move-object/from16 v16, p1

    move/from16 v17, v44

    move/from16 v18, p6

    move/from16 v19, v36

    move-object/from16 v20, p7

    move/from16 v21, v27

    .line 4796
    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;Z)V

    .line 4798
    if-nez v41, :cond_5a

    .line 4800
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "startedActivity"

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4814
    :cond_5a
    const/4 v8, 0x0

    goto/16 :goto_e

    .line 4504
    .restart local v14    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v57    # "updateFocus":Z
    :cond_5b
    const/4 v15, 0x0

    goto/16 :goto_1d

    :cond_5c
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v8, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v18, v0

    goto/16 :goto_1e

    .line 4532
    :cond_5d
    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_1f

    .line 4550
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v57    # "updateFocus":Z
    :cond_5e
    if-eqz p2, :cond_67

    .line 4551
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4552
    .local v6, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 4553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 4554
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted Lock Task Mode violation r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    const/4 v8, 0x5

    goto/16 :goto_e

    .line 4557
    :cond_5f
    iget-object v5, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4558
    const-string/jumbo v8, "sourceStackToFront"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4559
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v56

    .line 4560
    .local v56, "topTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v56

    if-eq v0, v6, :cond_60

    .line 4561
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "sourceTaskToFront"

    move-object/from16 v8, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 4581
    :cond_60
    const-string/jumbo v8, "sourceStackToFront"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4582
    move-object/from16 v0, v56

    if-eq v0, v6, :cond_61

    .line 4583
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "sourceTaskToFront"

    move-object/from16 v8, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 4587
    :cond_61
    if-nez v22, :cond_63

    const/high16 v8, 0x4000000

    and-int v8, v8, v37

    if-eqz v8, :cond_63

    .line 4591
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v54

    .line 4592
    const/16 v36, 0x1

    .line 4593
    if-eqz v54, :cond_66

    .line 4594
    const/16 v8, 0x7533

    move-object/from16 v0, v54

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4595
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v54

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4598
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4599
    if-eqz p6, :cond_62

    .line 4600
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4602
    if-nez v41, :cond_62

    .line 4603
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "FIXME"

    move-object/from16 v0, v54

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4607
    :cond_62
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4608
    const/4 v8, 0x3

    goto/16 :goto_e

    .line 4610
    :cond_63
    if-nez v22, :cond_66

    const/high16 v8, 0x20000

    and-int v8, v8, v37

    if-eqz v8, :cond_66

    .line 4615
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v54

    .line 4616
    if-eqz v54, :cond_66

    .line 4617
    move-object/from16 v0, v54

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4620
    .restart local v14    # "task":Lcom/android/server/am/TaskRecord;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 4623
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v54

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 4626
    :cond_64
    move-object/from16 v0, v54

    invoke-virtual {v14, v0}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4627
    const/16 v8, 0x7533

    move-object/from16 v0, p1

    invoke-static {v8, v0, v14}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4628
    move-object/from16 v0, v54

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4629
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v54

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4630
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4631
    if-eqz p6, :cond_65

    .line 4632
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4634
    if-nez v41, :cond_65

    .line 4635
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "FIXME"

    move-object/from16 v0, v54

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4639
    :cond_65
    const/4 v8, 0x3

    goto/16 :goto_e

    .line 4645
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    :cond_66
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_20

    .line 4665
    .end local v6    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .end local v56    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_67
    if-eqz p8, :cond_6e

    .line 4668
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 4669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 4670
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted Lock Task Mode violation r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    const/4 v8, 0x5

    goto/16 :goto_e

    .line 4710
    :cond_68
    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4711
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v19, v0

    const-string/jumbo v20, "inTaskToFront"

    move-object v15, v5

    move-object/from16 v16, p8

    move/from16 v17, v7

    move-object/from16 v18, p7

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 4714
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_69

    .line 4715
    const-string/jumbo v8, "inTaskToFront"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4722
    :cond_69
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v54

    .line 4723
    if-eqz v54, :cond_6c

    move-object/from16 v0, v54

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    move-object/from16 v0, v54

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v9, :cond_6c

    .line 4724
    const/high16 v8, 0x20000000

    and-int v8, v8, v37

    if-nez v8, :cond_6a

    if-nez v40, :cond_6a

    if-eqz v39, :cond_6c

    .line 4726
    :cond_6a
    const/16 v8, 0x7533

    move-object/from16 v0, v54

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v54

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4727
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_6b

    .line 4731
    const/4 v8, 0x1

    goto/16 :goto_e

    .line 4733
    :cond_6b
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v54

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4734
    const/4 v8, 0x3

    goto/16 :goto_e

    .line 4738
    :cond_6c
    if-nez v22, :cond_6d

    .line 4741
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4742
    const/4 v8, 0x2

    goto/16 :goto_e

    .line 4745
    :cond_6d
    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_20

    .line 4753
    :cond_6e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v44

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4754
    const-string v8, "addingToTopTask"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4755
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v49

    .line 4756
    .local v49, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v49, :cond_6f

    move-object/from16 v0, v49

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_21
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4758
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_20

    .line 4756
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v5

    move-object/from16 v18, v34

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    goto :goto_21

    .line 3555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startBackgroundUserLocked(ILcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 7043
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7044
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 2056
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V

    .line 2057
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 2074
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 2076
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 2083
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    .line 2087
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2089
    :cond_0
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    .line 2654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    .line 2658
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_0

    .line 2659
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 2662
    :cond_0
    if-eqz v15, :cond_6

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_6

    .line 2664
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_5

    .line 2665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_1

    .line 2666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v15, v5}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 2674
    :cond_1
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const-string v4, "android"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2680
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v15, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 2683
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2723
    :cond_4
    :goto_1
    return-void

    .line 2668
    :cond_5
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_1

    .line 2669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v4, :cond_1

    .line 2670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v5, 0x0

    invoke-virtual {v4, v15, v5}, Lcom/android/server/am/DynamicHiddenApp;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    goto :goto_0

    .line 2685
    :catch_0
    move-exception v16

    .line 2686
    .local v16, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when starting activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2696
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "activity"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v14

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v17

    .line 2703
    .local v17, "startedApp":Lcom/android/server/am/ProcessRecord;
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_8

    .line 2704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_7

    .line 2705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 2714
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2717
    if-eqz v15, :cond_4

    .line 2718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2707
    :cond_8
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_7

    .line 2708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v4, :cond_7

    .line 2709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/DynamicHiddenApp;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    goto :goto_2
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 6992
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 6993
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 6994
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 6996
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6997
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 6998
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6999
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 7000
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 7001
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 7002
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 7003
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    .line 7004
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 6999
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 6997
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7009
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 7010
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_3

    .line 7011
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 7013
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    .line 7014
    .local v1, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7015
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 7024
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v7, "switchUserOnHomeDisplay"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 7027
    if-eqz v6, :cond_4

    .line 7028
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 7034
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    return v1

    .line 7032
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "absoluteTop"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 8999
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .prologue
    .line 1654
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .prologue
    .line 1660
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "checkObscuredScreen"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1679
    if-gez p2, :cond_0

    .line 1680
    const/4 p2, 0x0

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1691
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v1, 0x0

    .line 1692
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isKnoxDesktopModeLocked()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1693
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1694
    if-eqz v1, :cond_2

    if-eq p1, v1, :cond_2

    move-object v5, v1

    .line 1733
    :cond_1
    :goto_0
    return-object v5

    .line 1721
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v6, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1724
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1725
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1726
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1727
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1728
    if-eqz v1, :cond_3

    move-object v5, v1

    .line 1729
    goto :goto_0

    .line 1724
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method updateCascadeHiddenFlag(Z)V
    .locals 15
    .param p1, "resumed"    # Z

    .prologue
    .line 9664
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->needsCascadeForceHidden()Z

    move-result v5

    .line 9665
    .local v5, "needsFlags":Z
    const/4 v1, 0x0

    .line 9666
    .local v1, "flagChanged":Z
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 9667
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 9668
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9669
    .local v9, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 9670
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 9671
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 9672
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_0

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 9673
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eq v11, v5, :cond_0

    .line 9674
    const/4 v1, 0x1

    .line 9675
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9676
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v11, 0x8

    invoke-virtual {v4, v11, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 9677
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v11, v4}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_1

    .line 9667
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9684
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 9685
    if-eqz v5, :cond_5

    .line 9686
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 9692
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 9693
    .local v2, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_4

    .line 9694
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 9695
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_4

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 9696
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v6

    .line 9697
    .local v6, "nextStackId":I
    const/4 v11, -0x1

    if-le v6, v11, :cond_6

    .line 9698
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 9704
    .end local v6    # "nextStackId":I
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    return-void

    .line 9687
    .end local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    if-eqz p1, :cond_3

    .line 9688
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_2

    .line 9700
    .restart local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "nextStackId":I
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto :goto_3
.end method

.method updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9003
    if-eqz p1, :cond_3

    .line 9004
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9005
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 9016
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, p1, :cond_1

    .line 9019
    const v1, 0x12c4b5

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    if-nez p1, :cond_4

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9020
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasLastDrawnFocusedStackFrameId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9021
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->setLastDrawnFocusedStackFrameId(I)V

    .line 9051
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, p1, :cond_2

    .line 9052
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    .line 9053
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mChangedFocusedStackWhileSleeping=true/ mFocusedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / newStack=stack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9058
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 9086
    return-void

    .line 9013
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 9019
    :cond_4
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1
.end method

.method updateLastShownWhenLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 6753
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6754
    :cond_0
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5088
    const/4 v1, 0x0

    .line 5089
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 5090
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5091
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 5092
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5093
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5094
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    .line 5095
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5089
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5096
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 5097
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 5091
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 5106
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v1, :cond_4

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_4

    .line 5112
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 5113
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 5115
    :cond_4
    return-void
.end method

.method validateTopActivitiesLocked()V
    .locals 11

    .prologue
    .line 7107
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_8

    .line 7108
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 7109
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "stackNdx":I
    :goto_1
    if-ltz v5, :cond_7

    .line 7110
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 7111
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 7112
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 7113
    .local v7, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7114
    if-nez v2, :cond_2

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: null top activity, stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7109
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 7112
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_1
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 7117
    .restart local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_2
    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 7118
    .local v1, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_3

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7121
    :cond_3
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_0

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_0

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: activity in front not resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 7126
    .end local v1    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 7127
    .local v3, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    if-ne v3, v2, :cond_5

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    :cond_5
    if-eqz v2, :cond_0

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_6

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_0

    :cond_6
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: activity in back resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 7107
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 7135
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    return-void
.end method
