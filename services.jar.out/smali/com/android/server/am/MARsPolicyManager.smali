.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;,
        Lcom/android/server/am/MARsPolicyManager$PolicyException;,
        Lcom/android/server/am/MARsPolicyManager$Policy;
    }
.end annotation


# static fields
.field public static final ACTION_FORCEKILL_PACKAGE:I = 0x4

.field public static final ACTION_FORCESTOP_PACKAGE:I = 0x2

.field public static final ACTION_FORCESTOP_PACKAGE_LATER:I = 0x3

.field public static final ACTION_NONSTICKY_KILLPACKAGE:I = 0x1

.field static AppSleep_Enable:Z = false

.field static App_StartUp_History:Z = false

.field static DEBUG_ACTIVE_TRAFFIC:Z = false

.field static DEBUG_APPSTART:Z = false

.field static DEBUG_MARs:Z = false

.field static DEBUG_NET_STAT:Z = false

.field static DEBUG_SCPM:Z = false

.field static GlobalModelWithChinaSIM:Z = false

.field public static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final MARS_SCPM_OPTIMIZIED_TYPE_SKIP:I = 0x3

.field static final MARS_SCPM_RESTRICTED_TYPE_BLACKLIST:I = 0x0

.field static final MARS_SCPM_RESTRICTED_TYPE_BLACKLIST_ACTIVE_TRAFFIC:I = 0x4

.field static final MARS_SCPM_RESTRICTED_TYPE_BLOCK:I = 0x1

.field static final MARS_SCPM_RESTRICTED_TYPE_SKIP:I = 0x2

.field static MARs_ENABLE:Z = false

.field public static final POLICY_NUM_APPLOCKER:I = 0x3

.field public static final POLICY_NUM_AUTORUN:I = 0x4

.field public static final POLICY_NUM_GCMLOCKER:I = 0x2

.field public static final POLICY_NUM_SBIKE:I = 0x6

.field public static final POLICY_NUM_SPCM:I = 0x1

.field public static final POLICY_NUM_UDS:I = 0x5

.field public static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING:I = 0xc

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING_AND_NOTUSEDRECENTLY:I = 0xd

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field public static final POLICY_TARGET_CATEGORY_AUTO_OPTIMIZING:I = 0xa

.field public static final POLICY_TARGET_CATEGORY_GLOBAL_AUTORUN_OFF:I = 0x18

.field public static final POLICY_TARGET_CATEGORY_SBIKE:I = 0x17

.field public static final POLICY_TARGET_CATEGORY_TURNED_OFF:I = 0xb

.field public static final POLICY_TARGET_CATEGORY_UDS:I = 0x16

.field public static final POLICY_TARGET_CATEGORY_USINGGCM:I = 0x2

.field static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field static final REQUEST_CNT_TRACKING_START_TIME:J = 0x493e0L

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x13b8110

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_AUTORUN:I = 0x390880

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_GCMLOCKER:I = 0x1008112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SBIKE:I = 0x1000112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SPCM:I = 0x0

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_UDS:I = 0x1000220

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field public static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field public static final RESTRICTION_TYPE_BLOCK_AUTO_RUN:I = 0x10000000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_EDGE_INTENT:I = 0x80000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x100000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_GEAR_INTENT:I = 0x10000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x40000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_KIES_INTENT:I = 0x200000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SPECIALINTENTS_FOR_SKT:I = 0x20000

.field public static final RESTRICTION_TYPE_NONE:I = 0x0

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCKALL:I = 0x100

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field public static final RESTRICTION_TYPE_SERVICE_BLOCKALL:I = 0x10

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field public static final SERVICE_KILL_LIMIT_OF_ADJ:I = 0xe

.field static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field static final TAG_FORCE_KILL:Ljava/lang/String; = "MARs-ForceKillPackage-"

.field static final TAG_NONSTICKY_KILL:Ljava/lang/String; = "MARs-NonSticky-Kill-"

.field public static nonStickyKillAdj:I


# instance fields
.field public final MOVE_TO_INACTIVE_TIME_INTERNAL:J

.field public final SPCM_BASE_PACKAGE_SCORE:I

.field private final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

.field private UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

.field private final UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

.field private final UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

.field private appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field lastScreenOffStartTime:J

.field mAccessibilityContentObserver:Landroid/database/ContentObserver;

.field private mActiveAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveAdminsUpdated:Z

.field private mAllPoliciesOn:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppSizeIncreased:J

.field private mAppUsedRecently:Z

.field private mBoundAppWidgetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCarModeOn:Z

.field mContext:Landroid/content/Context;

.field private mCurrentHomePackage:Ljava/lang/String;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field private mDataConnectionIsConnected:Z

.field private mDataTrafficAmount:J

.field private mDefaultIMEPackage:Ljava/lang/String;

.field mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnabledAccessibilityPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTimeExcutingPolicy:Z

.field private mFirstTimeUpdatePackages:Z

.field mInputMethodObserver:Landroid/database/ContentObserver;

.field private mIsManualMode:Z

.field private mLastUpdatePackagesScoreTime:J

.field public mLatestProtectedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLockingTimeChanged:Z

.field private final mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mMARsUpdatePackagesThread:Ljava/lang/Thread;

.field private mManagedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mNotiUpdateWhileScreenOffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCountDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationUpdatedCount:J

.field private mOngoingNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningLocationPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmBlackListValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmBlockValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipOptimizationValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSpecialSKTPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatPeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_RX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_TX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field private mUnusedAutoFreezeTime:J

.field private mUnusedLockingTime:J

.field private mVpnServicePackage:Ljava/lang/String;

.field private mWallpaperPackage:Ljava/lang/String;

.field private mWhiteListIntentsForSKT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public spcmPolicyTrigger:Z

.field private udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    .line 95
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    .line 96
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_NET_STAT:Z

    .line 97
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ACTIVE_TRAFFIC:Z

    .line 98
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_APPSTART:Z

    .line 100
    const-string/jumbo v2, "sys.config.mars"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 103
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    .line 106
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 109
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 462
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    return-void

    :cond_0
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 121
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 122
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 123
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    .line 124
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 392
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 395
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 400
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 403
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 406
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 409
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    .line 460
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 461
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 466
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    .line 467
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 468
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 469
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 470
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 471
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 472
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

    .line 475
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicyTrigger:Z

    .line 477
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->MOVE_TO_INACTIVE_TIME_INTERNAL:J

    .line 478
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

    .line 479
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

    .line 480
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    .line 481
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->SPCM_BASE_PACKAGE_SCORE:I

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    .line 496
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 497
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 498
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 499
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 500
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 501
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 502
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 514
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    .line 515
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    .line 516
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    .line 517
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    .line 518
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    .line 543
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 544
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 545
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 546
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 547
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    .line 549
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    .line 614
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 615
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 616
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 617
    new-instance v0, Lcom/android/server/am/MARsDBManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 619
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 620
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsPolicyManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->updatePackagesScore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateSMDBValues()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->checkCarModeState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsPolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method private appLockerStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3944
    packed-switch p1, :pswitch_data_0

    .line 3956
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3946
    :pswitch_0
    const-string v0, "PACKAGE_AUTO_OPTIMIZING                (extras 0)"

    goto :goto_0

    .line 3948
    :pswitch_1
    const-string v0, "PACKAGE_ALWAYS_OPTIMIZING              (extras 9)"

    goto :goto_0

    .line 3950
    :pswitch_2
    const-string v0, "PACKAGE_TURNED_OFF                     (extras 9)"

    goto :goto_0

    .line 3952
    :pswitch_3
    const-string v0, "PACKAGE_AUTO_OPTIMIZING_NOTUSEDRECENTLY(extras 1)"

    goto :goto_0

    .line 3954
    :pswitch_4
    const-string v0, "PACKAGE_SETTO_AUTO_OPTIMIZING          (extras 2)"

    goto :goto_0

    .line 3944
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkCarModeState()V
    .locals 5

    .prologue
    .line 1761
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 1762
    .local v1, "mUiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 1763
    .local v0, "mCarMode":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-eq v2, v0, :cond_1

    .line 1764
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1765
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change the car mode state from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 1768
    :cond_1
    return-void

    .line 1762
    .end local v0    # "mCarMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertStateToAutorun(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 3650
    packed-switch p1, :pswitch_data_0

    .line 3659
    :goto_0
    :pswitch_0
    return v0

    .line 3657
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "strIsSMFreezed"    # Ljava/lang/String;
    .param p2, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 3613
    const/4 v0, 0x0

    .line 3615
    .local v0, "state":I
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3616
    const/4 v0, 0x2

    .line 3628
    :cond_0
    :goto_0
    return v0

    .line 3617
    :cond_1
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3618
    const/4 v0, 0x1

    goto :goto_0

    .line 3620
    :cond_2
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3621
    const/4 v0, 0x0

    goto :goto_0

    .line 3622
    :cond_3
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3623
    const/4 v0, 0x3

    goto :goto_0

    .line 3624
    :cond_4
    const-string v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3625
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private covertStateToDBExtrasValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3632
    packed-switch p1, :pswitch_data_0

    .line 3644
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 3634
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 3636
    :pswitch_1
    const-string v0, "9"

    goto :goto_0

    .line 3638
    :pswitch_2
    const-string v0, "9"

    goto :goto_0

    .line 3640
    :pswitch_3
    const-string v0, "1"

    goto :goto_0

    .line 3642
    :pswitch_4
    const-string v0, "2"

    goto :goto_0

    .line 3632
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createPolicies()V
    .locals 40

    .prologue
    .line 812
    const-string/jumbo v2, "sys.config.mars_spcm"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    .line 813
    .local v7, "spcmPolicyEnabled":Z
    :goto_0
    new-instance v2, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "spcmpolicy"

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 819
    const-string/jumbo v2, "sys.config.mars_gcmlocker"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    .line 820
    .local v13, "gcmLockerPolicyEnabled":Z
    :goto_1
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const v12, 0x1008112

    const-string/jumbo v14, "gcmlockerpolicy"

    const/4 v15, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 826
    const-string/jumbo v2, "sys.config.mars_applocker"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v19, 0x1

    .line 828
    .local v19, "appLockerPolicyEnabled":Z
    :goto_2
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v16, 0xd

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getActionTypeByCountryIso()I

    move-result v17

    const v18, 0x13b8110

    const-string v20, "applockerpolicy"

    const/16 v21, 0x3

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v21}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 834
    const-string/jumbo v2, "sys.config.mars_autorun"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v25, 0x1

    .line 835
    .local v25, "autoRunPolicyEnabled":Z
    :goto_3
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v22, 0x15

    const/16 v23, 0x4

    const v24, 0x390880

    const-string v26, "autorunpolicy"

    const/16 v27, 0x4

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v27}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 841
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UDS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    .line 842
    .local v31, "udsPolicyEnabled":Z
    new-instance v26, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v28, 0x16

    const/16 v29, 0x2

    const v30, 0x1000220

    const-string/jumbo v32, "udspolicy"

    const/16 v33, 0x5

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v33}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 848
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    .line 849
    .local v37, "sbikePolicyEnabled":Z
    new-instance v32, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v34, 0x17

    const/16 v35, 0x2

    const v36, 0x1000112

    const-string/jumbo v38, "sbkiepolicy"

    const/16 v39, 0x6

    move-object/from16 v33, p0

    invoke-direct/range {v32 .. v39}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 854
    return-void

    .line 812
    .end local v7    # "spcmPolicyEnabled":Z
    .end local v13    # "gcmLockerPolicyEnabled":Z
    .end local v19    # "appLockerPolicyEnabled":Z
    .end local v25    # "autoRunPolicyEnabled":Z
    .end local v31    # "udsPolicyEnabled":Z
    .end local v37    # "sbikePolicyEnabled":Z
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 819
    .restart local v7    # "spcmPolicyEnabled":Z
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 826
    .restart local v13    # "gcmLockerPolicyEnabled":Z
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 834
    .restart local v19    # "appLockerPolicyEnabled":Z
    :cond_3
    const/16 v25, 0x0

    goto :goto_3
.end method

.method private forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3001
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 3002
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZZII)Z

    .line 3003
    monitor-exit v7

    .line 3004
    return-void

    .line 3003
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2997
    return-void
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTime"    # J

    .prologue
    .line 3960
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 3961
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const v2, 0x20015

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1371
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    .line 1374
    .local v0, "category":I
    if-ne v0, v5, :cond_2

    .line 1375
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1460
    :cond_0
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v7, :cond_18

    .line 1461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_18

    .line 1462
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1463
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_1

    .line 1464
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1465
    add-int/lit8 v1, v1, -0x1

    .line 1461
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1377
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    if-ne v0, v6, :cond_4

    .line 1378
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1379
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1380
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->isUsingGcm:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v4, :cond_3

    .line 1381
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1385
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_6

    .line 1386
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1387
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1388
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v4, :cond_5

    .line 1389
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1392
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    const/16 v4, 0xb

    if-ne v0, v4, :cond_8

    .line 1393
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1394
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1395
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_7

    .line 1396
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1399
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    const/16 v4, 0xc

    if-ne v0, v4, :cond_a

    .line 1400
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1401
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1402
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v5, :cond_9

    .line 1403
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1406
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    const/16 v4, 0xd

    if-ne v0, v4, :cond_d

    .line 1407
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1408
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1409
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v4, v5, :cond_b

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_c

    .line 1411
    :cond_b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1416
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_d
    const/16 v4, 0x14

    if-ne v0, v4, :cond_f

    .line 1417
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1418
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1419
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v4, :cond_e

    .line 1420
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1423
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_f
    const/16 v4, 0x15

    if-ne v0, v4, :cond_12

    .line 1424
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1425
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1426
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v4, :cond_10

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v4, v5, :cond_11

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_11

    .line 1428
    :cond_10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1432
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_12
    const/16 v4, 0x16

    if-ne v0, v4, :cond_14

    .line 1433
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1434
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1435
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    if-ne v4, v5, :cond_13

    .line 1436
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1440
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_14
    const/16 v4, 0x17

    if-ne v0, v4, :cond_16

    .line 1441
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1442
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1443
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    if-ne v4, v5, :cond_15

    .line 1444
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1441
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1449
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_16
    const/16 v4, 0x18

    if-ne v0, v4, :cond_0

    .line 1450
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1451
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1452
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v4, :cond_17

    .line 1453
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1470
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_18
    return-object v3
.end method

.method private getActiveAdminsPackages()Ljava/util/ArrayList;
    .locals 8
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
    .line 1793
    const/4 v1, 0x0

    .line 1794
    .local v1, "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 1795
    .local v5, "mDpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1797
    .local v0, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 1798
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    .restart local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1800
    .local v3, "cmpName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1801
    .local v2, "adminPkgName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1802
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1806
    .end local v2    # "adminPkgName":Ljava/lang/String;
    .end local v3    # "cmpName":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method private getBoundAppWidgetPackages()Ljava/util/ArrayList;
    .locals 8
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
    .line 1830
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1831
    .local v2, "mAwm":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 1832
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1834
    .local v6, "userId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 1835
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1836
    .local v4, "provider":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1837
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3, v6}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 1838
    .local v1, "isBound":Z
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1839
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1842
    .end local v1    # "isBound":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "provider":Landroid/content/ComponentName;
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    return-object v7
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1511
    const/4 v0, 0x0

    .line 1512
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1516
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1517
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1518
    aget-object v0, v1, v4

    .line 1522
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getEnabledAccessibilityPackage()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1846
    const/4 v6, 0x0

    .line 1847
    .local v6, "strAccessibility":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1848
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1849
    .local v7, "tmp":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1851
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1852
    if-eqz v6, :cond_1

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1853
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1854
    .local v4, "mAccessibilityServiceList":[Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1855
    .local v0, "accessibilityservice":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1856
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1857
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1858
    aget-object v5, v7, v11

    .line 1859
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1860
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    const-string v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1866
    .end local v0    # "accessibilityservice":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mAccessibilityServiceList":[Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1867
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1868
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1869
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 1870
    aget-object v5, v7, v11

    .line 1871
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1872
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    const-string v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_2
    return-void
.end method

.method private getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3363
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3365
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 3366
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3370
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_1
    return-object v1

    .line 3364
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3370
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/MARsPackageStatus;"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    if-eqz p1, :cond_1

    .line 1130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1131
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 1132
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1136
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :goto_1
    return-object v1

    .line 1130
    .restart local v0    # "i":I
    .restart local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1136
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNotiUpdateCountWhileScreenOff(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1771
    const/4 v0, -0x1

    .line 1772
    .local v0, "updateCount":I
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1773
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1775
    :cond_0
    return v0
.end method

.method private getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I
    .locals 24
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .param p6, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPackageStatus;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;JJ)I"
        }
    .end annotation

    .prologue
    .line 3785
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p2

    array-length v4, v0

    .line 3786
    .local v4, "count":I
    const/16 v17, 0x0

    .line 3787
    .local v17, "score":I
    const v5, 0x20015

    .line 3794
    .local v5, "dateFormatFlags":I
    if-lez v4, :cond_1

    .line 3795
    const/16 v20, 0x0

    aget-object v2, p2, v20

    .line 3797
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .line 3798
    .local v6, "foreground_score":I
    const/4 v12, 0x0

    .line 3800
    .local v12, "lasttime_score":I
    const-wide/16 v8, 0x0

    .line 3801
    .local v8, "foregroundtime":J
    const-wide/16 v10, 0x0

    .line 3802
    .local v10, "lasttime":J
    const/4 v7, 0x0

    .line 3804
    .local v7, "found":Z
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3805
    .local v3, "activityName":Ljava/lang/String;
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3806
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3815
    .local v16, "processName":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 3817
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    .line 3819
    .local v15, "pkgstat":Landroid/app/usage/UsageStats;
    iget-object v0, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 3820
    iget-wide v8, v15, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 3821
    iget-wide v10, v15, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 3822
    const/4 v7, 0x1

    .line 3827
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_0
    if-nez v7, :cond_3

    .line 3829
    const/4 v6, 0x0

    .line 3830
    const/4 v12, 0x0

    .line 3849
    :goto_1
    add-int v17, v6, v12

    .line 3853
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "activityName":Ljava/lang/String;
    .end local v6    # "foreground_score":I
    .end local v7    # "found":Z
    .end local v8    # "foregroundtime":J
    .end local v10    # "lasttime":J
    .end local v12    # "lasttime_score":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg_i":I
    .end local v16    # "processName":Ljava/lang/String;
    :cond_1
    return v17

    .line 3815
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activityName":Ljava/lang/String;
    .restart local v6    # "foreground_score":I
    .restart local v7    # "found":Z
    .restart local v8    # "foregroundtime":J
    .restart local v10    # "lasttime":J
    .restart local v12    # "lasttime_score":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "pkg_i":I
    .restart local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    .restart local v16    # "processName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3833
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_3
    const-wide/16 v20, 0x0

    cmp-long v20, p4, v20

    if-eqz v20, :cond_4

    .line 3834
    const-wide/16 v20, 0x2710

    mul-long v20, v20, v8

    div-long v20, v20, p4

    move-wide/from16 v0, v20

    long-to-int v6, v0

    .line 3836
    :cond_4
    if-nez v6, :cond_5

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_5

    .line 3837
    const/4 v6, 0x1

    .line 3839
    :cond_5
    if-lez v6, :cond_6

    .line 3840
    add-int/lit16 v6, v6, 0x7d0

    .line 3842
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v18, v20, v10

    .line 3843
    .local v18, "tmptime":J
    const-wide/16 v20, 0x2710

    const-wide/16 v22, 0x2710

    mul-long v22, v22, v18

    div-long v22, v22, p6

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 3846
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    goto :goto_1
.end method

.method private getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I
    .locals 16
    .param p1, "providers"    # [Landroid/content/pm/ProviderInfo;

    .prologue
    .line 3878
    const/4 v9, 0x0

    .line 3879
    .local v9, "score":I
    const/4 v11, 0x0

    .line 3880
    .local v11, "tmpscore":I
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_3

    .line 3881
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_3

    .line 3882
    aget-object v4, p1, v3

    .line 3884
    .local v4, "pInfo":Landroid/content/pm/ProviderInfo;
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 3885
    .local v8, "providerName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 3886
    .local v6, "processName":Ljava/lang/String;
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 3888
    .local v5, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 3889
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x1

    invoke-virtual {v12, v6, v14, v15}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 3890
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 3891
    const/16 v11, 0x3e8

    .line 3894
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "proi":I
    :goto_1
    if-ltz v7, :cond_0

    .line 3895
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 3897
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3899
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3900
    .local v10, "size":I
    if-lez v10, :cond_0

    .line 3901
    add-int/lit16 v11, v11, 0xfa0

    .line 3906
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    .end local v10    # "size":I
    :cond_0
    monitor-exit v13

    .line 3908
    if-le v11, v9, :cond_1

    move v9, v11

    .line 3881
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3894
    .restart local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v7    # "proi":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3906
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 3912
    .end local v3    # "i":I
    .end local v4    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    .end local v8    # "providerName":Ljava/lang/String;
    :cond_3
    return v9
.end method

.method private getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I
    .locals 13
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "sevices"    # [Landroid/content/pm/ServiceInfo;
    .param p3, "lLockTime"    # J

    .prologue
    .line 3858
    const/4 v0, 0x0

    .line 3859
    .local v0, "lastActivityScore":I
    const/4 v4, 0x0

    .line 3863
    .local v4, "tmpScore":I
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->lastServiceActivityTime:J

    .line 3864
    .local v2, "lastActivityTime":J
    const/16 v1, 0x1388

    .line 3865
    .local v1, "serviceBaseScore":I
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 3866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v2

    .line 3868
    .local v6, "tmptime":J
    cmp-long v5, v6, p3

    if-gez v5, :cond_0

    .line 3869
    int-to-long v8, v1

    int-to-long v10, v1

    mul-long/2addr v10, v6

    div-long v10, v10, p3

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 3873
    .end local v6    # "tmptime":J
    :cond_0
    return v0
.end method

.method private getRunningProcessImprotance(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1526
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1527
    .local v3, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/16 v2, 0x3e8

    .line 1528
    .local v2, "result":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1529
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1530
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,getRunningProcessImprotance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-le v2, v4, :cond_0

    .line 1532
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    goto :goto_0

    .line 1537
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v2
.end method

.method public static getSmartManagerPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 889
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J
    .locals 22
    .param p2, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 3742
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v17, "usagestats"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 3744
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const-wide/16 v18, 0x0

    .line 3746
    .local v18, "totalForegroundtime_indays":J
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 3748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, p2

    .line 3749
    .local v4, "begintime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3750
    .local v6, "endtime":J
    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v16

    .line 3753
    .local v16, "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const v8, 0x20015

    .line 3758
    .local v8, "dateFormatFlags":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 3759
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    .line 3761
    .local v15, "pkgcnt":I
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_0
    if-ge v14, v15, :cond_3

    .line 3762
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v9, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 3763
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v10, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 3764
    .local v10, "foregroundtime":J
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v12, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 3767
    .local v12, "lasttime":J
    cmp-long v3, v12, v4

    if-ltz v3, :cond_0

    const-wide/32 v20, 0xea60

    add-long v20, v20, v6

    cmp-long v3, v12, v20

    if-lez v3, :cond_1

    .line 3761
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3770
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3771
    add-long v18, v18, v10

    goto :goto_1

    .line 3777
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    .end local v14    # "pkg_i":I
    .end local v15    # "pkgcnt":I
    :cond_2
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_3

    .line 3778
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v17, "getTotalForegroundtimeIndays no packages run activity in last 7 days!!! --- "

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    .end local v4    # "begintime":J
    .end local v6    # "endtime":J
    .end local v8    # "dateFormatFlags":I
    .end local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_3
    return-wide v18
.end method

.method private hasOngoingNotification(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1496
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1497
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return v0

    .line 1502
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1503
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1507
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPolicyExceptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1140
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokeNMGetNotificationCountInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1588
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getNotiUpdateCountWhileScreenOff(Ljava/lang/String;)I

    move-result v0

    .line 1589
    .local v0, "notiUpdateCount":I
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invokeNMGetNotificationCountInfo notiUpdateCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1591
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1592
    .local v1, "prevNotiCount":I
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invokeNMGetNotificationCountInfo- diffNOTICount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    .end local v1    # "prevNotiCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    return-void
.end method

.method private invokePMGetPackageSizeInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1565
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1566
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$2;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    .line 1583
    .local v0, "mStatsObserver":Landroid/content/pm/IPackageStatsObserver$Stub;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1584
    return-void
.end method

.method private isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2245
    if-nez p1, :cond_0

    .line 2267
    :goto_0
    return v4

    .line 2248
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2249
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2252
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2254
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 2257
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const v8, 0x7fffffff

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->getServices(II)Ljava/util/List;

    move-result-object v2

    .line 2258
    .local v2, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2259
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v7, :cond_2

    .line 2260
    if-eqz p1, :cond_2

    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2262
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 2265
    .end local v3    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    monitor-exit v6

    goto :goto_0

    .end local v0    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2493
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2495
    .local v0, "calleePkgName":Ljava/lang/String;
    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 2496
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2504
    .local v1, "callerPkgName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "startService"

    if-eq p3, v3, :cond_0

    const-string v3, "bindService"

    if-ne p3, v3, :cond_1

    :cond_0
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2507
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isSamsungService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2508
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2509
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    .end local v1    # "callerPkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 2499
    :cond_3
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2500
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy !! -- Caller is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2512
    .restart local v1    # "callerPkgName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2513
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2514
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- shouldBlock cases!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2517
    :cond_5
    const-string v3, "bindService"

    if-ne p3, v3, :cond_8

    .line 2518
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2519
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2520
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- JobSchedulerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2523
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2524
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2525
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- SyncManagerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2528
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2529
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2530
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- isBindNotificationListenerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2536
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 2586
    if-nez p1, :cond_1

    .line 2608
    :cond_0
    :goto_0
    return v0

    .line 2589
    :cond_1
    const/4 v0, 0x0

    .line 2590
    .local v0, "bindNotiListenerPermissionFound":Z
    const/4 v3, 0x0

    .line 2592
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2593
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2595
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2596
    if-eqz v3, :cond_0

    .line 2597
    const-string v4, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2599
    const/4 v0, 0x1

    .line 2600
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2603
    :catch_0
    move-exception v1

    .line 2604
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBindNotificationListenerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z
    .locals 9
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 1916
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_1

    if-ne p2, v8, :cond_1

    .line 1917
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1918
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1919
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -is blacklist package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v7, v1

    .line 2093
    :goto_0
    return v7

    .line 1927
    :cond_1
    iput-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 1930
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    if-nez v0, :cond_3

    .line 1931
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_2

    .line 1932
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -isForceStopDisabled package from EDM!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_2
    const-string v0, "EDMForceStopDisabledPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_0

    .line 1937
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1938
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4

    .line 1939
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -wallpaper package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_4
    const-string v0, "WallpaperPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_0

    .line 1945
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1946
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_6

    .line 1947
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -default inputMethod package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_6
    const-string v0, "DefaultIMEPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1953
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-eqz v0, :cond_9

    .line 1954
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_8

    .line 1955
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -is active device admin package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_8
    const-string v0, "ActiveDeviceAdminPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1963
    :cond_9
    if-nez p3, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v0, :cond_c

    if-eq p2, v7, :cond_c

    .line 1964
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1965
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_b

    .line 1966
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - isMusicOrRecordActive!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_b
    const-string v0, "MusicOrRecordActivePackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1972
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_10

    if-ne p2, v8, :cond_10

    .line 1974
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1975
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_d

    .line 1976
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -current home package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_d
    const-string v0, "CurrentHomePackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1982
    :cond_e
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1983
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_f

    .line 1984
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -foreground package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_f
    const-string v0, "ForegroundPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1991
    :cond_10
    if-eqz p3, :cond_11

    move v7, v1

    .line 1992
    goto/16 :goto_0

    .line 1996
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_15

    if-ne p2, v8, :cond_15

    .line 1997
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1998
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_12

    .line 1999
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -first time excuting policy for Widget!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_12
    const-string v0, "FirstTimeExcutingPolicy-Widget"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2003
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2004
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_14

    .line 2005
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -first time excuting policy for Accessibility!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_14
    const-string v0, "FirstTimeExcutingPolicy-Accessibility"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2012
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_16

    if-eq p2, v8, :cond_18

    .line 2013
    :cond_16
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v0, :cond_18

    .line 2014
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_17

    .line 2015
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -has running widgets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runningWidgets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2021
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2022
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_19

    .line 2023
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -vpnService package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_19
    const-string v0, "VpnServicePackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2028
    :cond_1a
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isDependsOnSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2029
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1b

    .line 2030
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -dependsOnSystem package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_1b
    const-string v0, "DependsOnSystemPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2036
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_1d

    if-eq p2, v8, :cond_1f

    .line 2037
    :cond_1d
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v0, v7, :cond_1f

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2039
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1e

    .line 2040
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -hasOngoingNotification!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_1e
    const-string/jumbo v0, "hasOngoingNotificationPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2047
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_21

    if-ne p2, v7, :cond_21

    .line 2048
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2049
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    .line 2050
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -in latest protected packageslist for SPCM!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_20
    const-string v0, "LatestProtectedPackages"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2057
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_2b

    if-ne p2, v8, :cond_2b

    .line 2059
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficExisting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2060
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_22

    .line 2061
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - isActiveTrafficExisting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_22
    const-string v0, "ActiveTrafficExistingPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2066
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_25

    move v6, v7

    .line 2067
    .local v6, "isUnusedAppTimeExpired":Z
    :goto_1
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v0, :cond_26

    if-nez v6, :cond_26

    .line 2068
    iput-boolean v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 2069
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_24

    .line 2070
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Used in last 15 mins!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_24
    const-string v0, "UsedRecentlyPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .end local v6    # "isUnusedAppTimeExpired":Z
    :cond_25
    move v6, v1

    .line 2066
    goto :goto_1

    .line 2075
    .restart local v6    # "isUnusedAppTimeExpired":Z
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "com.baidu.BaiduMap"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.autonavi.minimap"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.autonavi.xmgd.navigator"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.tencent.map"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.sogou.map.android.maps"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.baidu.navi"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.mapbar.android.mapbarmap"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.uu.uunavi"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2080
    :cond_27
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_28

    .line 2081
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - isRunningLocationPackages!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_28
    const-string v0, "RunningLocationPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2086
    :cond_29
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v0, v7, :cond_2b

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    if-nez v0, :cond_2b

    .line 2087
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_2a

    .line 2088
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - has No Icon!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_2a
    const-string/jumbo v0, "hasNoIcon"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .end local v6    # "isUnusedAppTimeExpired":Z
    :cond_2b
    move v7, v1

    .line 2093
    goto/16 :goto_0
.end method

.method private isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2374
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from Current Launcher app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/4 v0, 0x1

    .line 2379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDependsOnSystem(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1485
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "system"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1487
    .local v0, "prSystem":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    .line 1488
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1489
    const/4 v1, 0x1

    .line 1492
    :cond_0
    return v1
.end method

.method private isEdgeIntent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 2352
    const/4 v0, 0x0

    return v0
.end method

.method private isForegroundPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1474
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1475
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1478
    .local v1, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1479
    const/4 v2, 0x1

    .line 1481
    :goto_1
    return v2

    .line 1475
    .end local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1481
    .restart local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2315
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.accessory"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2322
    :cond_0
    const/4 v0, 0x1

    .line 2324
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z
    .locals 7
    .param p1, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I

    .prologue
    const/4 v3, 0x1

    .line 1145
    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 1147
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1148
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;

    .line 1149
    .local v2, "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    iget-object v4, v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;->exception:I

    add-int/lit8 v5, p2, -0x1

    shl-int v5, v3, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 1151
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInPolicyExceptionList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in whitelist!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    .end local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :goto_1
    return v3

    .line 1147
    .restart local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1157
    .end local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_1
    const-string v4, ".cts."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".cts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1159
    :cond_2
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--is CTS Package, exclude!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1165
    :cond_3
    const-string v4, "com.samsung.accessory"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1166
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1171
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_5

    .line 1172
    const-string v4, "com.sec.android.app.shealth"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v4, v3, :cond_5

    .line 1173
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1180
    :cond_5
    const/4 v4, 0x3

    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1181
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1185
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 2541
    if-nez p1, :cond_1

    .line 2563
    :cond_0
    :goto_0
    return v1

    .line 2544
    :cond_1
    const/4 v1, 0x0

    .line 2545
    .local v1, "jobPermissionFound":Z
    const/4 v3, 0x0

    .line 2547
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2548
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2550
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2551
    if-eqz v3, :cond_0

    .line 2552
    const-string v4, "android.permission.BIND_JOB_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2554
    const/4 v1, 0x1

    .line 2555
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2558
    :catch_0
    move-exception v0

    .line 2559
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isJobSchedulerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2357
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    const-string v0, "com.wssnps"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.easyMover"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "com.sec.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.REQUEST_VERIFY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2367
    :cond_1
    const/4 v0, 0x1

    .line 2369
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLauncherableApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2405
    const-string v4, "com.baidu.searchbox_samsung"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.bst.floatingmsgproxy"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return v3

    .line 2409
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2410
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2411
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 2412
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2

    .line 2413
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isLauncherableApp -- Not launcherable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2414
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2416
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 2417
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLaucherableApp exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1541
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1542
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    new-instance v3, Landroid/media/SamsungAudioManager;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    .line 1544
    .local v3, "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 1545
    .local v1, "mMusicIsActive":Z
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v2

    .line 1547
    .local v2, "mRecordIsActive":Z
    if-eqz v1, :cond_0

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getRunningProcessImprotance(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-gt v4, v5, :cond_3

    .line 1549
    :cond_2
    const/4 v4, 0x1

    .line 1551
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isRunningPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2097
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 2098
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2099
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2100
    const/4 v3, 0x1

    .line 2103
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v3
.end method

.method private isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "policy_num"    # I
    .param p3, "calleePackage"    # Ljava/lang/String;
    .param p4, "callerPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    .line 4445
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 4446
    :cond_0
    const/4 v2, 0x0

    .line 4488
    :goto_0
    return v2

    .line 4449
    :cond_1
    const/4 v2, 0x0

    .line 4450
    .local v2, "isManagedPackage":Z
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4451
    .local v5, "scpmManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    if-nez p1, :cond_5

    .line 4452
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4453
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm BlackList Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 4466
    .local v0, "action":Ljava/lang/String;
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4467
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4470
    :cond_3
    if-ne p2, v8, :cond_4

    .line 4471
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4472
    .local v3, "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_4

    .line 4473
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 4474
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4475
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, p3, p4, v0}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4476
    const/4 v2, 0x1

    .line 4485
    .end local v1    # "i":I
    .end local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    const-string v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMManagedPackage --- calleePackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , callerPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isManagedPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4454
    .end local v0    # "action":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    .line 4455
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4456
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm Block Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4457
    :cond_6
    const/4 v6, 0x2

    if-ne p1, v6, :cond_7

    .line 4458
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4459
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm Skip Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4460
    :cond_7
    if-ne p1, v8, :cond_2

    .line 4461
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4462
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm BlackList for Active Traffic Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4473
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p3, "policy_num"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 4406
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 4439
    :cond_0
    :goto_0
    return v1

    .line 4410
    :cond_1
    iget v6, p2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v6, :cond_0

    .line 4414
    const/4 v1, 0x0

    .line 4415
    .local v1, "isSkipOptimizationPackage":Z
    iget-object v2, p2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 4416
    .local v2, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4418
    .local v5, "scpmSkipManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 4419
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4424
    :cond_2
    const/4 v6, 0x4

    if-ne p3, v6, :cond_3

    .line 4425
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4426
    .local v3, "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_3

    .line 4427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 4428
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4429
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, v2, v7, v7}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4430
    const/4 v1, 0x1

    .line 4438
    .end local v0    # "i":I
    .end local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_3
    const-string v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMSkipOptimizationPackage --- packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isSkipOptimizationPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4427
    .restart local v0    # "i":I
    .restart local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 4393
    const/4 v0, 0x0

    .line 4395
    .local v0, "isMatch":Z
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4398
    :cond_5
    const/4 v0, 0x1

    .line 4400
    :cond_6
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSCPMValueMatch --- value.strCallee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value.strCaller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value.strAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " .....isSCPMValueMatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    return v0
.end method

.method private isSamsungService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2384
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2385
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2386
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SamsungService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_1
    :goto_0
    return v0

    .line 2390
    :cond_2
    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.baidu.searchbox_samsung"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.baidu.netdisk_ss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 2392
    goto :goto_0

    .line 2395
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2396
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2397
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SystemPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2401
    goto :goto_0
.end method

.method private isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 2423
    const-string v0, "com.sec.android.cloudagent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.baidu.netdisk_ss"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2448
    :goto_0
    return v1

    .line 2427
    :cond_0
    const/4 v6, 0x0

    .line 2428
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2429
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2432
    :cond_1
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    .line 2433
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2438
    :cond_2
    const-string v0, "com.samsung.android.opencalendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2439
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2444
    :cond_3
    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2445
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: SCPM caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2448
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 2452
    const/4 v6, 0x0

    .line 2453
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2454
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2457
    :cond_0
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2459
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: Enable AccessibilityService callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2486
    :goto_0
    return v0

    .line 2463
    :cond_1
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "com.alipay.android.app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2465
    :cond_3
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4

    .line 2466
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldSkipCaseForAutoRun: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v7

    .line 2467
    goto :goto_0

    .line 2469
    :cond_5
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2470
    :cond_6
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called with screen on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2471
    goto :goto_0

    .line 2473
    :cond_7
    const-string v0, "com.cmcc.sso"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.cmdm.rcs"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2474
    :cond_8
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2475
    goto/16 :goto_0

    .line 2477
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.sina.weibo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2478
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2479
    goto/16 :goto_0

    .line 2482
    :cond_a
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2483
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: SCPM caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2484
    goto/16 :goto_0

    .line 2486
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2329
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2330
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2331
    .local v1, "theIntent":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2332
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1

    .line 2333
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specila Intent for speical SKT package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_1
    const/4 v2, 0x1

    .line 2340
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "theIntent":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2567
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 2568
    :cond_0
    const/4 v1, 0x0

    .line 2582
    :cond_1
    :goto_0
    return v1

    .line 2570
    :cond_2
    const/4 v1, 0x0

    .line 2573
    .local v1, "syncActionFound":Z
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.SyncAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2575
    const/4 v1, 0x1

    .line 2576
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2578
    :catch_0
    move-exception v0

    .line 2579
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSyncManagerPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2273
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2274
    if-eqz p1, :cond_0

    .line 2275
    :try_start_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-gtz v3, :cond_3

    .line 2276
    monitor-exit v2

    .line 2283
    :goto_0
    return v0

    .line 2279
    :cond_0
    if-eqz p3, :cond_1

    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_2

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 2281
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 2279
    goto :goto_1

    .line 2281
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 2283
    goto :goto_0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2288
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2289
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2291
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 2310
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 2295
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 2299
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2302
    .local v2, "match":I
    if-ltz v2, :cond_0

    .line 2303
    const/4 v4, 0x1

    goto :goto_0

    .line 2307
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "match":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2308
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSystemPackage exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markAppStartUpResult(ZLjava/lang/String;Ljava/lang/String;Landroid/app/IApplicationThread;)V
    .locals 9
    .param p1, "isRestricted"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "caller"    # Landroid/app/IApplicationThread;

    .prologue
    .line 2922
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2923
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "markAppStartUpResult : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", isRestricted = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", Type = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2927
    .local v4, "currentTime":J
    const/4 v2, 0x0

    .line 2928
    .local v2, "callerPackage":Ljava/lang/String;
    move-object v1, p2

    .line 2931
    .local v1, "calleePackage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 2932
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_2

    .line 2933
    const/4 v2, 0x0

    .line 2938
    :goto_0
    const-string v0, "activity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2940
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2941
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " is starting with Activity, skip to record it."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    :cond_1
    :goto_1
    return-void

    .line 2935
    :cond_2
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2946
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2947
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2948
    const-string v0, "MARsPolicyManager"

    const-string v3, "caller and callee are same."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2953
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v7

    .line 2955
    .local v7, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-nez v7, :cond_5

    .line 2956
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2957
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " is a preload app, skip it."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2962
    :cond_5
    if-eqz p1, :cond_7

    .line 2963
    iget v0, v7, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v0, :cond_6

    .line 2964
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_1

    .line 2966
    :cond_6
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WTF -- auto run off case : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "start process "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2969
    :cond_7
    iget v0, v7, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 2970
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto/16 :goto_1

    .line 2972
    :cond_8
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WTF -- auto run on case : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "start process "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "nonStickyKillAdj"    # I

    .prologue
    .line 2985
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 2986
    const/4 v4, 0x1

    .line 2987
    .local v4, "needClearNotification":Z
    :try_start_0
    const-string/jumbo v0, "spcm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2988
    const/4 v4, 0x0

    .line 2990
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZZII)Z

    move-result v0

    monitor-exit v7

    return v0

    .line 2991
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private printlogs_AllList_test()V
    .locals 6

    .prologue
    .line 4265
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mManagedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 4267
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4268
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--Score  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--State  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4272
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRestrictedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 4274
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4275
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    const-string v3, "MARsPolicyManager"

    const-string v4, "--appliedPolicies  "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 4278
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4279
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4282
    .end local v1    # "j":I
    :cond_1
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "null"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4285
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    return-void
.end method

.method private registerDefaultInputMethodChanged()V
    .locals 5

    .prologue
    .line 1881
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$3;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 1889
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1891
    return-void
.end method

.method private registerEnabledAccessibilityServicesChanged()V
    .locals 5

    .prologue
    .line 1894
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$4;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1902
    return-void
.end method

.method private registerNotificationListener()V
    .locals 6

    .prologue
    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    :goto_0
    return-void

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MARsPolicyManager"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runMARsUpdatePackagesThread()V
    .locals 2

    .prologue
    .line 3300
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$9;

    const-string v1, "MARsUpdatePackages"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$9;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    .line 3359
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3360
    return-void
.end method

.method private switchPolicies(I)V
    .locals 8
    .param p1, "policy"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    .line 989
    if-ne p1, v3, :cond_7

    .line 990
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v2, 0x18

    const v4, 0x390880

    const-string v6, "autorunpolicy"

    move-object v1, p0

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 995
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1004
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 1007
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    .line 1010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    .line 1011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    .line 1012
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    .line 1041
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1042
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1045
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1046
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1049
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 1052
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_6

    .line 1054
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()Ljava/util/ArrayList;

    .line 1056
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V

    .line 1058
    :cond_6
    return-void

    .line 1004
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1013
    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1014
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1016
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_8

    .line 1017
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1018
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_9

    .line 1019
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1021
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_a

    .line 1022
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1023
    :cond_a
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1024
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 1025
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1026
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 1027
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1028
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1030
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 1031
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1032
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 1033
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1034
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 1035
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1036
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1037
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 1023
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private turnOffPolicies()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 969
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 971
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 973
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 980
    :cond_2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_3

    .line 981
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 982
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 985
    return-void

    .line 982
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private turnOnPolicies()V
    .locals 3

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 963
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 966
    return-void

    .line 963
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateActiveAdminsToManaged()V
    .locals 5

    .prologue
    .line 1815
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1816
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1818
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1819
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 1820
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 1821
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 1822
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 1817
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1825
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    monitor-exit v4

    .line 1827
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 1825
    .restart local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateLaunchedBeforeInitToManaged()V
    .locals 6

    .prologue
    .line 3374
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3376
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 3377
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3378
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 3379
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3380
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 3375
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3383
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3384
    monitor-exit v4

    .line 3385
    return-void

    .line 3384
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updatePackagesScore(Ljava/lang/String;)V
    .locals 26
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3664
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 3665
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePackagesScore PackageInfo name -- "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :cond_0
    const/4 v15, 0x0

    .line 3669
    .local v15, "forceUpdatedOne":Z
    if-eqz p1, :cond_1

    .line 3670
    const/4 v15, 0x1

    .line 3672
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3673
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    sub-long v8, v12, v8

    const-wide/32 v24, 0x927c0

    cmp-long v2, v8, v24

    if-gez v2, :cond_2

    if-eqz v15, :cond_c

    .line 3674
    :cond_2
    if-nez v15, :cond_3

    .line 3675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    .line 3678
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3680
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 3682
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 3684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3685
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 3686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 3689
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_4

    .line 3690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 3691
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/16 v14, 0xd

    .line 3694
    .local v14, "flags":I
    :try_start_1
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 3695
    .local v19, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v19, :cond_4

    .line 3696
    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3703
    .end local v14    # "flags":I
    .end local v19    # "pkginfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    .line 3704
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    if-nez v18, :cond_6

    .line 3685
    :cond_5
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3698
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "flags":I
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v11

    .line 3699
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageInfo package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not installed!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3735
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "flags":I
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3707
    .restart local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .restart local v18    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    const/16 v17, 0x0

    .line 3710
    .local v17, "packageScore":I
    if-eqz v15, :cond_7

    if-eqz v15, :cond_5

    :try_start_3
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3712
    :cond_7
    const/4 v10, 0x0

    .line 3713
    .local v10, "activityScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8

    .line 3714
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager;->getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v10

    .line 3719
    :cond_8
    const/16 v22, 0x0

    .line 3720
    .local v22, "serviceScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_9

    .line 3721
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I

    move-result v22

    .line 3725
    :cond_9
    const/16 v21, 0x0

    .line 3726
    .local v21, "providerScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_a

    .line 3727
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v21

    .line 3730
    :cond_a
    add-int v2, v10, v22

    add-int v17, v2, v21

    .line 3732
    move/from16 v0, v17

    iput v0, v3, Lcom/android/server/am/MARsPackageStatus;->score:I

    goto :goto_2

    .line 3735
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "activityScore":I
    .end local v17    # "packageScore":I
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .end local v21    # "providerScore":I
    .end local v22    # "serviceScore":I
    :cond_b
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3738
    .end local v5    # "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v6    # "totalForegroundtime_indays":J
    .end local v16    # "i":I
    :cond_c
    return-void
.end method

.method private updateSMDBValues()V
    .locals 21

    .prologue
    .line 3397
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 3398
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "updateSMDBValues"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3402
    .local v19, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/16 v17, 0x0

    .line 3404
    .local v17, "needTriggerAppLockerPolicy":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 3406
    .local v14, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 3407
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_14

    .line 3408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MARsPackageStatus;

    .line 3411
    .local v18, "ps":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-gtz v3, :cond_4

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3417
    :cond_4
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    .line 3419
    .local v6, "extras":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_8

    .line 3420
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    .local v2, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3431
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "extras":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 3433
    :cond_6
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_9

    .line 3407
    :cond_7
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 3422
    .restart local v6    # "extras":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3423
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_1

    .line 3436
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "extras":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3437
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3516
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3441
    .restart local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    :try_start_1
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_b

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 3443
    :cond_b
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3444
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3446
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_c

    .line 3447
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3449
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_c
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3450
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_3

    .line 3455
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_d
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-nez v3, :cond_10

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    if-eqz v3, :cond_10

    .line 3457
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_7

    .line 3459
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3461
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_f

    .line 3462
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_e

    .line 3471
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3475
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_7

    .line 3476
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 3477
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3464
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_f
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3465
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_4

    .line 3482
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_10
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v3, :cond_12

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    if-eqz v3, :cond_12

    .line 3485
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_11

    .line 3486
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3493
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3494
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto/16 :goto_2

    .line 3488
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_11
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3489
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_5

    .line 3497
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_12
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v3, :cond_7

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez v3, :cond_7

    .line 3500
    const/4 v3, 0x3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3502
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_13

    .line 3503
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3511
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 3505
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_13
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3506
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_6

    .line 3516
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_14
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_15

    if-eqz v17, :cond_15

    .line 3520
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 3521
    .local v16, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3522
    const-string v3, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3527
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 3529
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 3530
    return-void
.end method


# virtual methods
.method cancelPolicy(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyNum"    # I

    .prologue
    .line 2208
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 2210
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 2211
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2209
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2214
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 2215
    if-eqz p2, :cond_2

    .line 2216
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2217
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$Policy;

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, p2, :cond_5

    .line 2218
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2220
    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    .line 2221
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 2229
    .end local v1    # "j":I
    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 2230
    :cond_3
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 2233
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 2234
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2235
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2216
    .restart local v1    # "j":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2238
    .end local v1    # "j":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    monitor-exit v4

    .line 2239
    return-void

    .line 2238
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public checkSCPMParameters()V
    .locals 1

    .prologue
    .line 4289
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->checkSCPMParametersFromDB()V

    .line 4290
    return-void
.end method

.method public clearNotiUpdateWhileScreenOn()V
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1780
    return-void
.end method

.method public clearNotificationDiffWhileScreenOff()V
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1789
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1790
    return-void
.end method

.method public clearStorageDiffWhileScreenOff()V
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1784
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1785
    return-void
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3968
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3969
    :try_start_0
    const-string v5, "ACTIVITY MANAGER MARs (dumpsys activity mars)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    const-string/jumbo v5, "mManagedPackages --- size "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3972
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3974
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 3975
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3977
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_2

    .line 3979
    :cond_1
    const-string v5, "--State "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->appLockerStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3982
    const-string v5, "--resetTime "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_3

    .line 3987
    const-string v5, "--Score "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    if-nez v5, :cond_8

    const-string v5, "0    "

    :goto_1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3991
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_4

    .line 3992
    iget-boolean v5, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v5, :cond_4

    .line 3993
    const-string v5, "--receivedGcm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_5

    .line 3999
    const-string v5, "--AutoRun "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4002
    :cond_5
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4005
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 4006
    const-string v5, "--SkipReason "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4010
    :cond_6
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4011
    const-string v5, "--Running "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4013
    :cond_7
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3987
    :cond_8
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 4016
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    const-string/jumbo v5, "mRestrictedPackages --- size "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4017
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4018
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 4019
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4022
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v5, "--resetTime "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4024
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4025
    const-string v5, "--appliedPolicies "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4026
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 4027
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 4028
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4027
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4031
    .end local v1    # "j":I
    :cond_a
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4034
    :cond_b
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4018
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4037
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_d

    .line 4040
    const-string/jumbo v5, "mLatestProtectedPackages "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 4042
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4045
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 4046
    const-string/jumbo v5, "mWallpaperPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4048
    :cond_e
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 4049
    const-string/jumbo v5, "mVpnServicePackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4052
    :cond_f
    const-string v5, "DefaultIMEPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4054
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_10

    .line 4055
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 4056
    const-string v5, "CurrentHomePackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4060
    :cond_10
    const-string v5, "OngoingNotificationPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    const/4 v0, 0x0

    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    .line 4062
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4063
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4066
    :cond_11
    const-string v5, "NotificationListenerPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4067
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_12

    .line 4068
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4069
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4067
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4072
    :cond_12
    const/4 v3, 0x0

    .line 4073
    .local v3, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const/4 v4, 0x0

    .line 4074
    .local v4, "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const-string v5, "SCPMBlackListPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4075
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4076
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_13

    .line 4077
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_13

    .line 4078
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4079
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4080
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4081
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4082
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4077
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4086
    :cond_13
    const-string v5, "SCPMBlackListForActiveTrafficPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4087
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4088
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_14

    .line 4089
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_14

    .line 4090
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4091
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4092
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4093
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4094
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4089
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4098
    :cond_14
    const-string v5, "SCPMBlockPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4099
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4100
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_15

    .line 4101
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_15

    .line 4102
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4103
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4104
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4105
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4106
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4101
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4110
    :cond_15
    const-string v5, "SCPMSkipPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4112
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_16

    .line 4113
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_16

    .line 4114
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4115
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4116
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4117
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4118
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4122
    :cond_16
    const-string v5, "SCPMSkipOptimizationPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4124
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_17

    .line 4125
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_17

    .line 4126
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4127
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4128
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4129
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4130
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4133
    :cond_17
    monitor-exit v6

    .line 4134
    return-void

    .line 4133
    .end local v0    # "i":I
    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V
    .locals 10
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 2108
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2109
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v4, :cond_1

    .line 2110
    :cond_0
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not enabled!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    monitor-exit v5

    .line 2199
    :goto_0
    return-void

    .line 2114
    :cond_1
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2

    .line 2115
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2122
    .local v2, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_3

    .line 2123
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$5;

    invoke-direct {v4, p0}, Lcom/android/server/am/MARsPolicyManager$5;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2136
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 2137
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 2138
    .local v3, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2139
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2146
    :cond_5
    const/4 v1, 0x0

    .line 2148
    .local v1, "spcmPolicyChoosed":Z
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2153
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2156
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v4, v8, :cond_d

    .line 2157
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARs-NonSticky-Kill-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2158
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_6

    .line 2159
    const/4 v1, 0x1

    .line 2173
    :cond_6
    :goto_3
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_7

    if-eqz v1, :cond_4

    .line 2176
    :cond_7
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 2177
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v4, :cond_f

    .line 2178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 2179
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2186
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2191
    :cond_9
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_4

    if-eqz v1, :cond_4

    .line 2196
    .end local v1    # "spcmPolicyChoosed":Z
    .end local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_b

    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v9, :cond_b

    .line 2197
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 2198
    :cond_b
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2161
    .restart local v0    # "i":I
    .restart local v1    # "spcmPolicyChoosed":Z
    .restart local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .restart local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_4

    .line 2162
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosed Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2165
    :cond_d
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    .line 2166
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 2168
    :cond_e
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v4, v9, :cond_6

    .line 2169
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARs-ForceKillPackage-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2181
    :cond_f
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2182
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4
.end method

.method public forceRunPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "policyNum"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4140
    invoke-virtual {p0, p3}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    .line 4141
    .local v2, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v5, :cond_1

    .line 4142
    :cond_0
    const-string/jumbo v5, "policy is not exist or not enabled!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4199
    :goto_0
    return-void

    .line 4146
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 4147
    :try_start_0
    const-string v5, "all"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4148
    invoke-direct {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4155
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 4156
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageStatus;

    .line 4157
    .local v4, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v4, :cond_3

    .line 4158
    const-string/jumbo v5, "not our managed package!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4159
    monitor-exit v6

    goto :goto_0

    .line 4198
    .end local v0    # "i":I
    .end local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4150
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 4151
    .local v1, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4152
    .restart local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4162
    .end local v1    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    .restart local v0    # "i":I
    .restart local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is CurrentImportantPackage !!!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4155
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4168
    :cond_4
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4171
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    .line 4172
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MARs-NonSticky-Kill-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4184
    :cond_5
    :goto_4
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 4185
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v5, :cond_b

    .line 4186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 4187
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4193
    :cond_6
    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4194
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4196
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add mRestrictedPackages "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " policy --"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 4174
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosed Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4177
    :cond_9
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_a

    .line 4178
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 4179
    :cond_a
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_5

    .line 4180
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MARs-ForceKillPackage-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4189
    :cond_b
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4190
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4198
    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .locals 11
    .param p1, "policyNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 4203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4205
    .local v4, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    .line 4206
    .local v3, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 4207
    :cond_0
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "policy is not exist or not enabled!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    :goto_0
    return-void

    .line 4211
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 4212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 4213
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4214
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 4215
    .local v2, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_2

    .line 4216
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4212
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4219
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    .line 4220
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageStatus;

    .line 4221
    .local v5, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v5, :cond_5

    .line 4222
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v8, "not our managed package!"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4226
    :cond_5
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v8, 0x1

    invoke-direct {p0, v5, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4232
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v6, v10, :cond_a

    .line 4233
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MARs-NonSticky-Kill-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4244
    :cond_6
    :goto_4
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 4245
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v6, :cond_c

    .line 4246
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 4247
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4253
    :cond_7
    :goto_5
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 4254
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4256
    :cond_8
    const-string v6, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add mRestrictedPackages "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4258
    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 4235
    .restart local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    :try_start_1
    const-string v6, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choosed Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4238
    :cond_a
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    .line 4239
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 4240
    :cond_b
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    .line 4241
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MARs-ForceKillPackage-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4249
    :cond_c
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 4250
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4258
    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_d
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method getActionTypeByCountryIso()I
    .locals 6

    .prologue
    .line 912
    const/4 v0, 0x1

    .line 913
    .local v0, "actionType":I
    const/4 v1, 0x0

    .line 916
    .local v1, "countryIso":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CountryISO"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 922
    :goto_0
    const-string/jumbo v3, "tw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "hk"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 923
    :cond_0
    const/4 v0, 0x4

    .line 926
    :cond_1
    return v0

    .line 917
    :catch_0
    move-exception v2

    .line 918
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on CountryISO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppUsedRecentlyState()Z
    .locals 1

    .prologue
    .line 1725
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    return v0
.end method

.method public getCarModeOnState()Z
    .locals 1

    .prologue
    .line 1757
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    return v0
.end method

.method getManagedPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method getManagedSMDBValueList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1193
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 1194
    const-string v1, "MARsPolicyManager"

    const-string/jumbo v2, "getManagedSMDBValueList"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v8, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 1199
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 1200
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageStatus;

    .line 1201
    .local v7, "ps":Lcom/android/server/am/MARsPackageStatus;
    new-instance v0, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v7, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v7, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    .local v0, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1204
    .end local v0    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v7    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    monitor-exit v9

    .line 1206
    return-object v8

    .line 1204
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 930
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 943
    :goto_0
    return-object v0

    .line 932
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 934
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 936
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 937
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 938
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 939
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 940
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 941
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 943
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenOnState()Z
    .locals 1

    .prologue
    .line 1739
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method public getmAllPoliciesOn()I
    .locals 1

    .prologue
    .line 4493
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    return v0
.end method

.method public handelAlertToastWindowStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3027
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 3045
    :goto_0
    return-void

    .line 3029
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 3030
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelAlertToastWindowStarted pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_1
    move-object v0, p1

    .line 3034
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$6;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handelNotificationBarClicked(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3048
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 3066
    :goto_0
    return-void

    .line 3050
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 3051
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelNotificationBarClicked pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    :cond_1
    move-object v0, p1

    .line 3055
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$7;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 3073
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3074
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 3075
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppWidgetManagerActions pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :cond_0
    if-eqz p1, :cond_4

    .line 3080
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 3081
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 3082
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_1

    .line 3083
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 3084
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3087
    :cond_1
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3088
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    .line 3090
    :cond_2
    monitor-exit v3

    .line 3109
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_0
    return-void

    .line 3092
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 3093
    .local v1, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v1, :cond_4

    .line 3094
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3095
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 3097
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3108
    .end local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3099
    .restart local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_5
    :try_start_1
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3100
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_1

    .line 3102
    :cond_6
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3103
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 3116
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 3117
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 3118
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceAdminActions pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    :cond_0
    if-eqz p1, :cond_1

    .line 3121
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3122
    .local v0, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_1

    .line 3123
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3124
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 3125
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3131
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 3132
    return-void

    .line 3126
    .restart local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3127
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    goto :goto_0

    .line 3131
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3228
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1

    .line 3229
    if-eqz p4, :cond_0

    .line 3230
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.HOME"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3232
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Home Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Resumed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 3241
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3242
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_1

    .line 3243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    .line 3246
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    .line 3247
    move-object v1, p1

    .line 3249
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/MARsPolicyManager$8;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/MARsPolicyManager$8;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3257
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3258
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3259
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3268
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_5

    .line 3271
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p3, :cond_8

    .line 3287
    :cond_5
    :goto_1
    return-void

    .line 3260
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 3261
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3262
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3264
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3275
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 3276
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 3277
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_5

    .line 3278
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 3279
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3284
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3285
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_1
.end method

.method public handlePackageStatusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isReInstall"    # Z

    .prologue
    .line 3187
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3219
    :cond_0
    :goto_0
    return-void

    .line 3191
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 3192
    :try_start_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3195
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->insertPackageToDB(Ljava/lang/String;)V

    .line 3218
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3197
    :cond_3
    :try_start_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3198
    if-eqz p3, :cond_4

    .line 3199
    const-string v1, "MARsPolicyManager"

    const-string/jumbo v3, "handlePackageStatusChange isReInstall don\'t care!"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    monitor-exit v2

    goto :goto_0

    .line 3203
    :cond_4
    const/4 v0, 0x0

    .line 3204
    .local v0, "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3205
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3208
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3209
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3216
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->deletePackageInDB(Ljava/lang/String;)V

    goto :goto_1

    .line 3212
    :cond_6
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected !! Uninstalled package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in mManagedPackages list !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public handlePowerOff()V
    .locals 2

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpHistory(Z)V

    .line 2981
    return-void
.end method

.method public handleSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 3158
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3184
    :cond_0
    :goto_0
    return-void

    .line 3162
    :cond_1
    const-string v1, "android.view.InputMethod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3163
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3164
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3167
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string v1, "android.net.VpnService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3168
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 3171
    :cond_3
    const-string v1, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3172
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 3173
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3174
    .restart local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3177
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3178
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3179
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3180
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3141
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3155
    :cond_0
    :goto_0
    return-void

    .line 3143
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3144
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->setPackageReceivedGCMIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 3146
    :cond_2
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3149
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3151
    :cond_4
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3153
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Z)V
    .locals 7
    .param p1, "boot"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 624
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->registerEmStateReceiver()V

    .line 627
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 628
    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 635
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppSleepUIAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    const-string v2, "MARsPolicyManager"

    const-string v3, "AppSleepUI is available"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    .line 642
    :cond_2
    :try_start_0
    const-string/jumbo v2, "sys.config.mars_version"

    const-string v3, "1.00"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    .line 649
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "isChinaNal":Ljava/lang/String;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isChinaNal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v2, "ChinaNalSecurity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 653
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3

    .line 654
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 655
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_4

    .line 656
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 657
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_5

    .line 658
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v2, :cond_12

    .line 659
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 666
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_6

    .line 667
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 669
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 670
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 671
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    .line 672
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    .line 673
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    .line 674
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    .line 675
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    .line 679
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppStartUpHistoryEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 680
    const-string v2, "MARsPolicyManager"

    const-string v3, "App StartUp History is enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 686
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2, v5}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 689
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_9

    .line 690
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    .line 694
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_a

    .line 695
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    .line 698
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerDefaultInputMethodChanged()V

    .line 699
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerEnabledAccessibilityServicesChanged()V

    .line 702
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveAdminsPackages()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    .line 704
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->initSettingFromUI()V

    .line 705
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 706
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->initSKTPackagesWhiteList()V

    .line 709
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkSCPMParameters()V

    .line 711
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->initPolicyExceptionList()Ljava/util/ArrayList;

    .line 716
    if-eqz p1, :cond_e

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_e

    .line 719
    :cond_d
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V

    .line 723
    :cond_e
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_f

    .line 724
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->updateAutoRun()V

    .line 728
    :cond_f
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v2, :cond_10

    .line 729
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->insertForBootUp()V

    .line 733
    :cond_10
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    .line 735
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spcmPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gcmLockerPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appLockerPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " autoRunPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " udsPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sbikePolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_11
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 747
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerNotificationListener()V

    .line 750
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()Ljava/util/ArrayList;

    .line 754
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V

    goto/16 :goto_0

    .line 643
    .end local v1    # "isChinaNal":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MARsPolicyManager"

    const-string/jumbo v3, "init(), we cannot set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 661
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isChinaNal":Ljava/lang/String;
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    goto/16 :goto_2
.end method

.method public isActiveTrafficExisting(Ljava/lang/String;)Z
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1649
    const/16 v22, 0x1

    .line 1650
    .local v22, "retCode":Z
    const/4 v13, 0x0

    .line 1651
    .local v13, "currTrafficTX":Ljava/lang/Long;
    const/16 v21, 0x0

    .line 1652
    .local v21, "prevTrafficTX":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 1653
    .local v12, "currTrafficRX":Ljava/lang/Long;
    const/16 v20, 0x0

    .line 1657
    .local v20, "prevTrafficRX":Ljava/lang/Long;
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1658
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1659
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActiveTrafficExisting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -scpm blacklist package, force stop it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_0
    const/4 v2, 0x0

    .line 1719
    :goto_0
    return v2

    .line 1664
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1665
    .local v19, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1666
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    .line 1667
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1668
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1675
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1676
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 1680
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 1683
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1685
    if-eqz v21, :cond_5

    if-eqz v13, :cond_5

    if-eqz v20, :cond_5

    if-nez v12, :cond_7

    .line 1687
    :cond_5
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_6

    .line 1688
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficForPkg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1670
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v18

    .line 1671
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException occurred for package :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1683
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1693
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 1694
    .local v16, "diffTX":J
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v14, v2, v4

    .line 1695
    .local v14, "diffRX":J
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_8

    .line 1696
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveTraffic :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v16, v2

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v14, v2

    if-gez v2, :cond_a

    .line 1699
    :cond_9
    const/16 v22, 0x0

    .line 1702
    :cond_a
    if-eqz v22, :cond_d

    .line 1703
    const-wide/16 v10, 0x0

    .line 1704
    .local v10, "StorageDiff":J
    const/4 v8, 0x0

    .line 1705
    .local v8, "NotiDiff":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1706
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1709
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1712
    :cond_c
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1713
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": StorageDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NotiDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_d

    int-to-long v2, v8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    .line 1715
    const/16 v22, 0x0

    .line 1716
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Storage zero and noti no updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "NotiDiff":I
    .end local v10    # "StorageDiff":J
    :cond_d
    move/from16 v2, v22

    .line 1719
    goto/16 :goto_0

    .line 1712
    .restart local v8    # "NotiDiff":I
    .restart local v10    # "StorageDiff":J
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method isAppOptUIAvailable()Z
    .locals 5

    .prologue
    .line 860
    const-string v0, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    .line 861
    .local v0, "APP_OPTIMIZATION_INTENT":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 864
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 865
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 867
    .local v2, "isAppOptUI":Z
    :goto_0
    return v2

    .line 866
    .end local v2    # "isAppOptUI":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isAppSleepUIAvailable()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 871
    const-string v0, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    .line 872
    .local v0, "APP_SLEEP_INTENT":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 874
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 875
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 878
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 880
    const/4 v4, 0x1

    .line 883
    :cond_0
    return v4
.end method

.method isAppStartUpHistoryEnabled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 894
    const-string v0, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 895
    .local v0, "APP_STARTUP_HISTORY_INTENT":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 897
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 898
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.sm.ACTION_AUTO_RUN"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 901
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_0

    .line 903
    const/4 v4, 0x1

    .line 906
    :cond_0
    return v4
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1211
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_1

    .line 1212
    :cond_0
    const-string v2, "MARsPolicyManager"

    const-string v3, "Auto Run Policy not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_0
    return v1

    .line 1215
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 1216
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-nez v0, :cond_2

    .line 1217
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run ON."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1221
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skip 1."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    :cond_3
    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_4

    .line 1225
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run OFF."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1226
    goto :goto_0

    .line 1228
    :cond_4
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run ON."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPolicyEnabled(I)Z
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    .line 948
    .local v0, "pl":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v0, :cond_0

    .line 949
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 951
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2614
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 26
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "queueName"    # Ljava/lang/String;

    .prologue
    .line 2622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2623
    .local v12, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 2624
    .local v11, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2625
    .local v7, "callerPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2626
    .local v18, "target":Lcom/android/server/am/MARsPackageStatus;
    const/4 v10, 0x0

    .line 2639
    .local v10, "isRestricted":Z
    sget-boolean v19, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v19, :cond_1

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2641
    const/4 v5, 0x0

    .line 2642
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_0

    .line 2643
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 2645
    :cond_0
    const-string v19, "SchedPolicyManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "isRestrictedPackage() --callee: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --caller: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --callingPid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --callingUid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --hostingType "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --intent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --queueName: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2653
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2655
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 2656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/MARsPackageStatus;

    .line 2657
    .local v15, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v0, v15, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2658
    const/4 v10, 0x1

    .line 2659
    move-object/from16 v18, v15

    .line 2664
    .end local v15    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    if-nez v10, :cond_5

    .line 2665
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/32 v24, 0x493e0

    cmp-long v19, v22, v24

    if-ltz v19, :cond_3

    .line 2666
    const-string v19, "MARsPolicyManager"

    const-string v21, "SSRMSJ:: detected wakeup!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService;->updateWakeupCount(Ljava/lang/String;)V

    .line 2677
    :cond_3
    const/16 v19, 0x0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2916
    :goto_1
    return v19

    .line 2649
    .end local v8    # "i":I
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 2655
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "i":I
    .restart local v15    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2681
    .end local v15    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_5
    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 2682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/32 v24, 0x493e0

    cmp-long v19, v22, v24

    if-ltz v19, :cond_6

    .line 2683
    const-string v19, "MARsPolicyManager"

    const-string v21, "SSRMSJ:: detected wakeup!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService;->updateWakeupCount(Ljava/lang/String;)V

    .line 2694
    :cond_6
    const/16 v19, 0x0

    monitor-exit v20

    goto :goto_1

    .line 2903
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v19

    .line 2698
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 2699
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_8

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 2700
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2703
    :cond_8
    const/4 v10, 0x0

    .line 2704
    const/4 v14, 0x0

    .line 2705
    .local v14, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    const/16 v16, 0x0

    .line 2706
    .local v16, "receivedGCM":Z
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_d

    .line 2707
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    check-cast v14, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2708
    .restart local v14    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    move/from16 v17, v0

    .line 2711
    .local v17, "restrictions":I
    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 2712
    :cond_9
    const/4 v10, 0x0

    .line 2706
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2716
    :cond_b
    const-string v19, "activity"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 2717
    and-int/lit8 v19, v17, 0x1

    if-eqz v19, :cond_13

    .line 2718
    const/4 v10, 0x1

    .line 2884
    :cond_c
    :goto_3
    if-eqz v10, :cond_a

    .line 2889
    .end local v17    # "restrictions":I
    :cond_d
    if-nez v10, :cond_e

    .line 2890
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 2894
    :cond_e
    if-nez v10, :cond_f

    if-eqz v16, :cond_f

    .line 2895
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 2896
    const/16 v16, 0x0

    .line 2899
    :cond_f
    sget-boolean v19, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v19, :cond_10

    if-eqz v10, :cond_10

    .line 2900
    const-string v19, "MARsPolicyManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " hostingType: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is Restricted by policy: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " caller is: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_10
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2904
    if-nez v10, :cond_11

    .line 2905
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v19

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v12, v20

    const-wide/32 v22, 0x493e0

    cmp-long v19, v20, v22

    if-ltz v19, :cond_11

    .line 2906
    const-string v19, "MARsPolicyManager"

    const-string v20, "SSRMSJ:: detected wakeup!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService;->updateWakeupCount(Ljava/lang/String;)V

    .line 2912
    :cond_11
    sget-boolean v19, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v19, :cond_12

    .line 2913
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->markAppStartUpResult(ZLjava/lang/String;Ljava/lang/String;Landroid/app/IApplicationThread;)V

    :cond_12
    move/from16 v19, v10

    .line 2916
    goto/16 :goto_1

    .line 2724
    .restart local v17    # "restrictions":I
    :cond_13
    const/4 v4, 0x0

    .line 2725
    .local v4, "allowedFlag":I
    and-int/lit8 v19, v17, 0x2

    if-eqz v19, :cond_14

    .line 2726
    or-int/lit8 v4, v4, 0x1

    .line 2727
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 2728
    or-int/lit8 v4, v4, 0x2

    .line 2731
    :cond_14
    and-int/lit8 v19, v17, 0x4

    if-eqz v19, :cond_15

    .line 2732
    or-int/lit8 v4, v4, 0x1

    .line 2733
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2734
    or-int/lit8 v4, v4, 0x2

    .line 2739
    :cond_15
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_16

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    :cond_16
    const/4 v9, 0x1

    .line 2740
    .local v9, "isAllowed":Z
    :goto_4
    if-nez v9, :cond_18

    const/4 v10, 0x1

    .line 2741
    :goto_5
    goto/16 :goto_3

    .line 2739
    .end local v9    # "isAllowed":Z
    :cond_17
    const/4 v9, 0x0

    goto :goto_4

    .line 2740
    .restart local v9    # "isAllowed":Z
    :cond_18
    const/4 v10, 0x0

    goto :goto_5

    .line 2743
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_19
    const-string/jumbo v19, "startService"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1a

    const-string v19, "bindService"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_22

    .line 2744
    :cond_1a
    and-int/lit8 v19, v17, 0x10

    if-eqz v19, :cond_1b

    .line 2745
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2748
    :cond_1b
    const/4 v4, 0x0

    .line 2749
    .restart local v4    # "allowedFlag":I
    and-int/lit8 v19, v17, 0x20

    if-eqz v19, :cond_1c

    .line 2750
    or-int/lit8 v4, v4, 0x1

    .line 2751
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 2752
    or-int/lit8 v4, v4, 0x2

    .line 2755
    :cond_1c
    and-int/lit8 v19, v17, 0x40

    if-eqz v19, :cond_1d

    .line 2756
    or-int/lit8 v4, v4, 0x1

    .line 2757
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 2758
    or-int/lit8 v4, v4, 0x2

    .line 2761
    :cond_1d
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 2762
    or-int/lit8 v4, v4, 0x1

    .line 2763
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v19

    if-nez v19, :cond_1e

    .line 2764
    or-int/lit8 v4, v4, 0x2

    .line 2767
    :cond_1e
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_1f

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    :cond_1f
    const/4 v9, 0x1

    .line 2768
    .restart local v9    # "isAllowed":Z
    :goto_6
    if-nez v9, :cond_21

    const/4 v10, 0x1

    .line 2769
    :goto_7
    goto/16 :goto_3

    .line 2767
    .end local v9    # "isAllowed":Z
    :cond_20
    const/4 v9, 0x0

    goto :goto_6

    .line 2768
    .restart local v9    # "isAllowed":Z
    :cond_21
    const/4 v10, 0x0

    goto :goto_7

    .line 2771
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_22
    const-string/jumbo v19, "provider"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2a

    .line 2772
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_23

    .line 2773
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2776
    :cond_23
    const/4 v4, 0x0

    .line 2777
    .restart local v4    # "allowedFlag":I
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_24

    .line 2778
    or-int/lit8 v4, v4, 0x1

    .line 2779
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 2780
    or-int/lit8 v4, v4, 0x2

    .line 2783
    :cond_24
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_25

    .line 2784
    or-int/lit8 v4, v4, 0x1

    .line 2785
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 2786
    or-int/lit8 v4, v4, 0x2

    .line 2789
    :cond_25
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_26

    .line 2790
    or-int/lit8 v4, v4, 0x1

    .line 2791
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v19

    if-nez v19, :cond_26

    .line 2792
    or-int/lit8 v4, v4, 0x2

    .line 2795
    :cond_26
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_27

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    :cond_27
    const/4 v9, 0x1

    .line 2796
    .restart local v9    # "isAllowed":Z
    :goto_8
    if-nez v9, :cond_29

    const/4 v10, 0x1

    .line 2797
    :goto_9
    goto/16 :goto_3

    .line 2795
    .end local v9    # "isAllowed":Z
    :cond_28
    const/4 v9, 0x0

    goto :goto_8

    .line 2796
    .restart local v9    # "isAllowed":Z
    :cond_29
    const/4 v10, 0x0

    goto :goto_9

    .line 2799
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_2a
    const-string v19, "broadcast"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_39

    .line 2800
    if-eqz p6, :cond_2b

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    if-eqz v19, :cond_2c

    .line 2801
    :cond_2b
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2804
    :cond_2c
    const/4 v4, 0x0

    .line 2805
    .restart local v4    # "allowedFlag":I
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x2000

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    .line 2806
    or-int/lit8 v4, v4, 0x1

    .line 2807
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 2808
    or-int/lit8 v4, v4, 0x2

    .line 2811
    :cond_2d
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    .line 2812
    or-int/lit8 v4, v4, 0x1

    .line 2813
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 2814
    or-int/lit8 v4, v4, 0x2

    .line 2818
    :cond_2e
    const v19, 0x8000

    and-int v19, v19, v17

    if-eqz v19, :cond_2f

    .line 2819
    or-int/lit8 v4, v4, 0x1

    .line 2820
    const-string v19, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 2821
    or-int/lit8 v4, v4, 0x2

    .line 2822
    const/16 v16, 0x1

    .line 2827
    :cond_2f
    const/high16 v19, 0x10000

    and-int v19, v19, v17

    if-eqz v19, :cond_30

    .line 2828
    or-int/lit8 v4, v4, 0x1

    .line 2829
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 2830
    or-int/lit8 v4, v4, 0x2

    .line 2834
    :cond_30
    const/high16 v19, 0x20000

    and-int v19, v19, v17

    if-eqz v19, :cond_31

    .line 2835
    or-int/lit8 v4, v4, 0x1

    .line 2836
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/server/am/MARsPolicyManager;->isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 2837
    or-int/lit8 v4, v4, 0x2

    .line 2841
    :cond_31
    const/high16 v19, 0x40000

    and-int v19, v19, v17

    if-eqz v19, :cond_32

    .line 2842
    or-int/lit8 v4, v4, 0x1

    .line 2844
    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_32

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_32

    const-string v19, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_32

    const-string/jumbo v19, "foreground"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 2848
    or-int/lit8 v4, v4, 0x2

    .line 2853
    :cond_32
    const/high16 v19, 0x80000

    and-int v19, v19, v17

    if-eqz v19, :cond_33

    .line 2854
    or-int/lit8 v4, v4, 0x1

    .line 2855
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isEdgeIntent(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 2856
    or-int/lit8 v4, v4, 0x2

    .line 2860
    :cond_33
    const/high16 v19, 0x200000

    and-int v19, v19, v17

    if-eqz v19, :cond_34

    .line 2861
    or-int/lit8 v4, v4, 0x1

    .line 2862
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 2863
    or-int/lit8 v4, v4, 0x2

    .line 2867
    :cond_34
    const/high16 v19, 0x100000

    and-int v19, v19, v17

    if-eqz v19, :cond_35

    .line 2868
    or-int/lit8 v4, v4, 0x1

    .line 2869
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_35

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 2870
    or-int/lit8 v4, v4, 0x2

    .line 2873
    :cond_35
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_36

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_37

    :cond_36
    const/4 v9, 0x1

    .line 2874
    .restart local v9    # "isAllowed":Z
    :goto_a
    if-nez v9, :cond_38

    const/4 v10, 0x1

    .line 2875
    :goto_b
    goto/16 :goto_3

    .line 2873
    .end local v9    # "isAllowed":Z
    :cond_37
    const/4 v9, 0x0

    goto :goto_a

    .line 2874
    .restart local v9    # "isAllowed":Z
    :cond_38
    const/4 v10, 0x0

    goto :goto_b

    .line 2877
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_39
    const-string v19, "backup"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2878
    const/high16 v19, 0x1000000

    and-int v19, v19, v17

    if-eqz v19, :cond_c

    .line 2879
    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method public screenOnStateChanged(Z)V
    .locals 2
    .param p1, "onoff"    # Z

    .prologue
    .line 1746
    if-nez p1, :cond_0

    .line 1747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    .line 1750
    :cond_0
    return-void
.end method

.method setAllPoliciesOnOffState(I)V
    .locals 6
    .param p1, "on"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1075
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1076
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_1

    .line 1080
    packed-switch p1, :pswitch_data_0

    .line 1110
    :goto_0
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 1112
    :cond_1
    return-void

    .line 1082
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOffPolicies()V

    .line 1084
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_2

    .line 1085
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1087
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1090
    :pswitch_1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_3

    .line 1091
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1092
    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(I)V

    .line 1094
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    .line 1095
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1098
    :pswitch_2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_4

    .line 1099
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1100
    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(I)V

    .line 1102
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    .line 1103
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1106
    :pswitch_3
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1107
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(I)V

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAppUsedRecentlyState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1729
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 1730
    return-void
.end method

.method public setAutoRunDownloadParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "trafficDuration"    # Ljava/lang/String;
    .param p2, "trafficAmount"    # Ljava/lang/String;
    .param p3, "notiUpdateCount"    # Ljava/lang/String;
    .param p4, "appSizeIncreased"    # Ljava/lang/String;

    .prologue
    .line 4299
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    .line 4300
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 4301
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 4302
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 4303
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunDownloadParameter --- trafficDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , trafficAmount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , notiUpdateCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appSizeIncreased = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    return-void
.end method

.method public setAutoRunParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "triggerPeriod"    # Ljava/lang/String;
    .param p2, "unusedPeriod"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 4293
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    .line 4294
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 4295
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunParameter --- TriggerPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , UnusedPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    return-void
.end method

.method public setCarModeOnState(Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    .line 1753
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 1754
    return-void
.end method

.method public setDataConnectionConnected()V
    .locals 5

    .prologue
    .line 1556
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1557
    .local v0, "mConnManagerDoNotUseDirectly":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1558
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 1559
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1560
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_0
    return-void

    .line 1558
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPackageReceivedGCMIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3011
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_1

    .line 3013
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 3014
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3015
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_0

    .line 3016
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    .line 3017
    :cond_0
    monitor-exit v2

    .line 3019
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    return-void

    .line 3017
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPackagesUnusedLockingTime(I)V
    .locals 6
    .param p1, "hours"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1061
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1062
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 1069
    :cond_1
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 1070
    return-void
.end method

.method public setSCPMBlackListForActiveTrafficValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4359
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4360
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4363
    .local v0, "autoRunBlackListForActiveTraffic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4364
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4365
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4363
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4371
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4372
    monitor-exit v3

    .line 4373
    return-void

    .line 4372
    .end local v0    # "autoRunBlackListForActiveTraffic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMBlackListValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4342
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4343
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4346
    .local v0, "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4347
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4348
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4354
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4355
    monitor-exit v3

    .line 4356
    return-void

    .line 4355
    .end local v0    # "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMBlockValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4308
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4309
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4312
    .local v0, "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4313
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4314
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4312
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4320
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4321
    monitor-exit v3

    .line 4322
    return-void

    .line 4321
    .end local v0    # "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMSkipOptimizationValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4376
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4377
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4380
    .local v0, "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4381
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4382
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4388
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4389
    monitor-exit v3

    .line 4390
    return-void

    .line 4389
    .end local v0    # "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMSkipValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4325
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4326
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4329
    .local v0, "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4330
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4331
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4337
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4338
    monitor-exit v3

    .line 4339
    return-void

    .line 4338
    .end local v0    # "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setSKTSpeicalPackages(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1115
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1117
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1118
    monitor-exit v1

    .line 1119
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenOnState(Z)V
    .locals 1
    .param p1, "onoff"    # Z

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    .line 1734
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->screenOnStateChanged(Z)V

    .line 1735
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 1736
    return-void
.end method

.method setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1124
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1125
    monitor-exit v1

    .line 1126
    return-void

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchUser(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 760
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 767
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 773
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->unregisterContentObserver()V

    .line 774
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->setContext(Landroid/content/Context;)V

    .line 775
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 776
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsTrigger;->setContext(Landroid/content/Context;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 780
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 781
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 782
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 783
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 785
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 786
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 787
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 788
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 789
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 790
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 791
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 792
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 793
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 794
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 795
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 796
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 797
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 798
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 799
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 800
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 801
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 802
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 803
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 804
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 806
    :cond_e
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 808
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->init(Z)V

    .line 809
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public updateDB()V
    .locals 0

    .prologue
    .line 3291
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateSMDBValues()V

    .line 3292
    return-void
.end method

.method public updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V
    .locals 7
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;

    .prologue
    const/4 v6, 0x0

    .line 3539
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_4

    .line 3541
    :cond_1
    if-eqz p1, :cond_4

    .line 3543
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 3545
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v0, :cond_3

    .line 3546
    :cond_2
    iput v6, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3547
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3549
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_6

    .line 3550
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3551
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 3562
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 3563
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3564
    :cond_5
    return-void

    .line 3553
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3556
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto :goto_0
.end method

.method public updateDBResetTimeForTimeChanged(J)V
    .locals 13
    .param p1, "changedTime"    # J

    .prologue
    .line 3574
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_0

    .line 3575
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDBResetTimeForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 3579
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_1

    .line 3580
    const-string v5, "MARsPolicyManager"

    const-string v6, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_1
    :goto_0
    return-void

    .line 3585
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3587
    .local v3, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 3589
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3591
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    .line 3592
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    add-long/2addr v8, p1

    iput-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3595
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3596
    .local v0, "extras":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v0}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3588
    .end local v0    # "extras":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3601
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 3602
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method updateManagedPackages(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 1234
    if-eqz p1, :cond_15

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 1235
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 1236
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateManagedPackages! size = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    const/4 v10, 0x0

    .line 1239
    .local v10, "needTriggerAppLockerPolicy":Z
    const/4 v11, 0x0

    .line 1241
    .local v11, "needTriggerAutoRunPolicy":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_11

    .line 1242
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 1243
    .local v13, "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1244
    .local v5, "newState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v12

    .line 1247
    .local v12, "newAutoRun":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .local v2, "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_8

    .line 1254
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    if-ne v5, v3, :cond_1

    .line 1257
    const/4 v10, 0x0

    .line 1261
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v3, 0x2

    if-ne v5, v3, :cond_2

    .line 1264
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1267
    :cond_2
    iput v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 1270
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1271
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 1274
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_4

    .line 1275
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_5

    .line 1276
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1241
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1278
    :cond_5
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1279
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1280
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_6

    const/4 v3, 0x1

    if-ne v12, v3, :cond_6

    .line 1281
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1283
    :cond_6
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_1

    .line 1366
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    .end local v12    # "newAutoRun":I
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :catchall_0
    move-exception v3

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1285
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .restart local v5    # "newState":I
    .restart local v8    # "i":I
    .restart local v10    # "needTriggerAppLockerPolicy":Z
    .restart local v11    # "needTriggerAutoRunPolicy":Z
    .restart local v12    # "newAutoRun":I
    .restart local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_7
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_1

    .line 1292
    :cond_8
    const-wide/16 v6, 0x0

    .line 1293
    .local v6, "time":J
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1294
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1297
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    if-eq v5, v3, :cond_a

    const/4 v3, 0x3

    if-ne v5, v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez v3, :cond_b

    .line 1300
    const/4 v10, 0x1

    .line 1303
    :cond_b
    new-instance v2, Lcom/android/server/am/MARsPackageStatus;

    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPackageStatus;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1306
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_c

    .line 1308
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    .line 1309
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1310
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    .line 1315
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_e

    .line 1316
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_f

    .line 1317
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1325
    :goto_2
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d

    .line 1327
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    .line 1330
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_e

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_e

    .line 1331
    const/4 v11, 0x1

    .line 1335
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1319
    :cond_f
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 1320
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_2

    .line 1322
    :cond_10
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_2

    .line 1340
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v6    # "time":J
    .end local v12    # "newAutoRun":I
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 1341
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged()V

    .line 1342
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    .line 1345
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_13

    if-eqz v10, :cond_13

    .line 1347
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1348
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1349
    const-string v3, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1354
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_14

    if-eqz v11, :cond_14

    .line 1356
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1357
    .restart local v9    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1358
    const-string v3, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1361
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 1364
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 1366
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    :cond_15
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    return-void
.end method

.method public updateRunningLocationPackages(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1640
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1641
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1643
    const-string/jumbo v1, "packagelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 1645
    :cond_0
    return-void
.end method

.method public updateSBikePackages(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3935
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3936
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 3937
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    .line 3935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3939
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    return-void
.end method

.method public updateTrafficStat()V
    .locals 15

    .prologue
    .line 1600
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const-string v7, "android.intent.action.GET_RUNNING_LOCATION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v3, "intentGetLocaitonPkg":Landroid/content/Intent;
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_0

    const-string v7, "MARsPolicyManager"

    const-string v12, "GPS INTENT send"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1604
    iget-boolean v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    if-eqz v7, :cond_4

    .line 1605
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1606
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1607
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1609
    iget-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 1610
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1611
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageStatus;

    .line 1612
    .local v6, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v4, v6, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1615
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 1616
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1617
    .local v10, "txbytestime":J
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1618
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_1

    .line 1620
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_TX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",txbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_1
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 1623
    .local v8, "rxbytestime":J
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1624
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->invokePMGetPackageSizeInfo(Ljava/lang/String;)V

    .line 1626
    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->invokeNMGetNotificationCountInfo(Ljava/lang/String;)V

    .line 1627
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_2

    .line 1628
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_RX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",rxbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1610
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "rxbytestime":J
    .end local v10    # "txbytestime":J
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1631
    :catch_0
    move-exception v1

    .line 1632
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1635
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v7

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_3
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1637
    .end local v2    # "i":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void
.end method

.method public updateUDSPackages(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3920
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3921
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3922
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3923
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3924
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 3925
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 3920
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3929
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
