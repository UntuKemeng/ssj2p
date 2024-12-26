.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    }
.end annotation


# static fields
.field private static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field private static final COCKTAIL_BAR_ACTION_START_CLOCK:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEBUG:Z

.field private static final MIN_UPDATE_PERIOD:I

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "cocktails.xml"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WAKELOCK_TIMEOUT:J

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field private mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

.field private final mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

.field private final mContext:Landroid/content/Context;

.field private mDefaultDisplayDensity:I

.field private mEnabledCocktailPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

.field private mInitialzed:Z

.field private mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private mLocale:Ljava/util/Locale;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mNextCocktailId:I

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mRemoteViewsServicesCocktails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSaveStateRunnable:Ljava/lang/Runnable;

.field private mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

.field private mStateLoaded:Z

.field private mTickerDisableflags:I

.field private final mUserId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 114
    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    .line 116
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    .line 124
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    const v1, 0x1b7740

    :cond_0
    sput v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    return-void

    :cond_1
    move v0, v2

    .line 116
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "policyManager"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
    .param p5, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    .line 143
    iput v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 144
    iput v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mTickerDisableflags:I

    .line 145
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->WAKELOCK_TIMEOUT:J

    .line 148
    iput-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 150
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    .line 982
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    .line 153
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 154
    iput p5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 155
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 156
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    .line 157
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 158
    iput-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .line 159
    iput-object p4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 160
    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 161
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 162
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 164
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mDefaultDisplayDensity:I

    .line 175
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemReady()V

    .line 176
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->WAKELOCK_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    return v0
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "categoryIds"    # I
    .param p3, "version"    # I

    .prologue
    const/4 v3, 0x0

    .line 588
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 632
    :cond_0
    :goto_0
    return-object v0

    .line 591
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 594
    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 595
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 596
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 597
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : disable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v3

    .line 599
    goto :goto_0

    .line 602
    :cond_4
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 603
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : even if the package is disable in emergency mode, allow creating cocktail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v2, "provider":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v1

    .line 616
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_8

    .line 617
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProviderLocked : already existed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 618
    goto/16 :goto_0

    .line 607
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "provider":Landroid/content/ComponentName;
    :cond_6
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 608
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 609
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : disable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v0, v3

    .line 611
    goto/16 :goto_0

    .line 620
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "provider":Landroid/content/ComponentName;
    :cond_8
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 621
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_a

    .line 622
    invoke-virtual {v0, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->setVersion(I)V

    .line 623
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 624
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 626
    :cond_9
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 628
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "addProviderLocked : success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object v0, v3

    .line 632
    goto/16 :goto_0
.end method

.method private addProvidersForPackageLocked(Ljava/lang/String;I)Z
    .locals 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 700
    sget-boolean v12, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 701
    sget-object v12, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addProvidersForPackageLocked : pkgName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    const/4 v9, 0x0

    .line 704
    .local v9, "providersAdded":Z
    const/4 v11, 0x0

    .line 705
    .local v11, "toolsAdded":Z
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v8

    .line 706
    .local v8, "intentName":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget v12, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {p0, v7, v12}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 709
    .local v3, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 710
    .local v1, "N":I
    :goto_0
    iget-object v12, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v12}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v5

    .line 711
    .local v5, "categoryIds":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 712
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 713
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 714
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 711
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 709
    .end local v1    # "N":I
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "categoryIds":I
    .end local v6    # "i":I
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 717
    .restart local v1    # "N":I
    .restart local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "categoryIds":I
    .restart local v6    # "i":I
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 718
    move/from16 v0, p2

    invoke-direct {p0, v10, v5, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v4

    .line 719
    .local v4, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v4, :cond_1

    .line 720
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v12

    iget v12, v12, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    .line 721
    const/4 v11, 0x1

    .line 723
    :cond_4
    const/4 v12, 0x0

    invoke-direct {p0, v4, v8, v12}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    .line 724
    const/4 v9, 0x1

    goto :goto_2

    .line 728
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-eqz v9, :cond_6

    .line 729
    if-eqz v11, :cond_6

    .line 730
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 733
    :cond_6
    return v9
.end method

.method private cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1335
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1336
    .local v0, "broadcast":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1340
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1344
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    .line 1346
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 1342
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private checkCocktailAffinityLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method private checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "category"    # I

    .prologue
    .line 270
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 271
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1947
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1948
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1949
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 1950
    .local v2, "key":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1951
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1955
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1956
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1957
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1961
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/content/Intent$FilterComparison;
    :cond_1
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1898
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/content/Intent;)V

    .line 1918
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1922
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1924
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1929
    return-void

    .line 1927
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2273
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 2274
    .local v0, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2276
    const-string v1, "] provider "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2279
    const-string v1, " (label="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2281
    const-string v1, ") (description="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2282
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2283
    const-string v1, ") (icon="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2284
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2285
    const-string v1, ") (previewImage="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2287
    const-string v1, ") (updatePeriodMillis="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2288
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2289
    const-string v1, ") (category="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2290
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2291
    const-string v1, ") (permitVisibilityChanged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2292
    iget-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2293
    const-string v1, ") (configure="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2294
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2295
    const-string v1, ") (privateMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2296
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    const-string v1, ") (cscPreviewImage="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    iget-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2299
    const-string v1, " (uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2300
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2301
    const-string v1, ") "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2303
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .locals 5

    .prologue
    .line 540
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    if-nez v1, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 542
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 543
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->loadCocktailListLocked(I)V

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->loadStateLocked()V

    .line 546
    new-instance v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;-><init>(Landroid/content/Context;Landroid/util/SparseArray;I)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 547
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    .line 549
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v2, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 488
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 489
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 490
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 491
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    return-object v2
.end method

.method private findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "privateMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v2, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 500
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 501
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 502
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    .line 503
    .local v4, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    iget-object v5, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    return-object v2
.end method

.method private getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I
    .locals 3
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1631
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1632
    .local v0, "cocktailIds":[I
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    aput v2, v0, v1

    .line 1633
    return-object v0
.end method

.method private getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 1748
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1749
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1752
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_0
    return-object v0

    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSettingsFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 1136
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cocktails.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1696
    const/4 v0, 0x0

    .line 1698
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1702
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1703
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1705
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 1699
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "fc"    # Landroid/content/Intent$FilterComparison;

    .prologue
    .line 1933
    const/4 v0, 0x0

    .line 1934
    .local v0, "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1940
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1941
    return-void

    .line 1937
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1938
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static isLocalBinder()Z
    .locals 2

    .prologue
    .line 2137
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCocktailListLocked(I)V
    .locals 7
    .param p1, "version"    # I

    .prologue
    .line 577
    new-instance v4, Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v4, "intent":Landroid/content/Intent;
    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {p0, v4, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 579
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 580
    .local v0, "N":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v6}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v2

    .line 581
    .local v2, "categoryIds":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 582
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 583
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 579
    .end local v0    # "N":I
    .end local v2    # "categoryIds":I
    .end local v3    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 585
    .restart local v0    # "N":I
    .restart local v2    # "categoryIds":I
    .restart local v3    # "i":I
    :cond_1
    return-void
.end method

.method private loadStateLocked()V
    .locals 6

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 967
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 969
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 970
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 976
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 958
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 959
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 947
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 948
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 949
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 950
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 954
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_1
    return-object v1

    .line 948
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 11
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "viewId"    # I

    .prologue
    .line 1486
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    .line 1488
    :try_start_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v8, v8, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    iget v10, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v8, v9, p2, v10}, Lcom/samsung/android/cocktailbar/ICocktailHost;->viewDataChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-nez v8, :cond_2

    .line 1493
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1494
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$FilterComparison;

    .line 1495
    .local v3, "key":Landroid/content/Intent$FilterComparison;
    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1496
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1498
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 1518
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1520
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1522
    .local v6, "token":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v0, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1525
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1530
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Landroid/content/Intent$FilterComparison;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v5    # "userId":I
    .end local v6    # "token":J
    :cond_2
    return-void

    .line 1489
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z
    .locals 12
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "categoryIds"    # I
    .param p5, "version"    # I

    .prologue
    .line 653
    iget-object v6, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 654
    .local v6, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 655
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x0

    .line 657
    .local v10, "res":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.cocktail.provider"

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 658
    if-nez v3, :cond_1

    .line 659
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No com.samsung.android.cocktail.provider meta-data for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    const/4 v0, 0x0

    .line 692
    if-eqz v3, :cond_0

    .line 693
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 663
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v0, 0x1

    if-eq v11, v0, :cond_2

    const/4 v0, 0x2

    if-ne v11, v0, :cond_1

    .line 667
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 668
    .local v9, "nodeName":Ljava/lang/String;
    const-string v0, "cocktail-provider"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 669
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta-data does not start with cocktail-provider tag for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    const/4 v0, 0x0

    .line 692
    if-eqz v3, :cond_0

    .line 693
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 673
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object v1, p3

    move-object v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v8

    .line 674
    .local v8, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v8, :cond_6

    .line 675
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v8, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    invoke-virtual {p1, v8}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 677
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 678
    const/4 v10, 0x1

    .line 692
    :goto_1
    if-eqz v3, :cond_4

    .line 693
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    move v0, v10

    .line 696
    goto :goto_0

    .line 680
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 683
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 685
    .end local v8    # "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_0
    move-exception v7

    .line 689
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML parsing failed for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 690
    const/4 v0, 0x0

    .line 692
    if-eqz v3, :cond_0

    .line 693
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 692
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_7

    .line 693
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v0
.end method

.method private parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "categoryIds"    # I
    .param p4, "version"    # I

    .prologue
    .line 637
    new-instance v1, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    invoke-direct {v1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 638
    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailAffinity:I

    if-lez v0, :cond_0

    .line 640
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAffinityLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 648
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    :goto_0
    return-object v1

    .line 647
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 648
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 923
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 925
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 926
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x280

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v3

    .line 932
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 935
    :catch_0
    move-exception v2

    .line 936
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 27
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 1038
    const/16 v19, 0x0

    .line 1039
    .local v19, "success":Z
    const/16 v22, 0x0

    .line 1041
    .local v22, "version":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 1042
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1044
    const/16 v17, 0x0

    .line 1045
    .local v17, "providerIndex":I
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 1047
    .local v11, "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    :cond_0
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .line 1048
    .local v21, "type":I
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1049
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1050
    .local v20, "tag":Ljava/lang/String;
    const-string/jumbo v23, "gs"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1051
    const/16 v23, 0x0

    const-string/jumbo v24, "version"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1f
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-result-object v3

    .line 1053
    .local v3, "attributeValue":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1f
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result v22

    .line 1089
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v20    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1090
    const/16 v19, 0x1

    .line 1104
    if-nez v19, :cond_2

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .local v9, "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2f
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .local v18, "str":Ljava/lang/String;
    :try_start_3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .local v12, "msgBuffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    goto :goto_1

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1117
    if-eqz v4, :cond_2

    .line 1119
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1123
    :goto_3
    const/4 v4, 0x0

    .line 1129
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    :cond_2
    :goto_4
    if-nez v19, :cond_3

    .line 1130
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v24, "Failed to read state, clearing cocktail."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 1133
    :cond_3
    return-void

    .line 1054
    .restart local v3    # "attributeValue":Ljava/lang/String;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    :catch_1
    move-exception v8

    .line 1055
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v22, 0x0

    goto :goto_0

    .line 1057
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_6
    const-string/jumbo v23, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1058
    const/16 v23, 0x0

    const-string/jumbo v24, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1059
    .local v15, "pkg":Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "cl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1060
    .local v7, "cl":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1f
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-result-object v13

    .line 1062
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_7
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1f
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1070
    :goto_5
    :try_start_8
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v6

    .line 1072
    .local v6, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v23

    const-string v24, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1083
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 1084
    move/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1086
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1063
    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :catch_2
    move-exception v8

    .line 1064
    .local v8, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1068
    .local v16, "pkgs":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v15, v16, v23

    goto :goto_5

    .line 1074
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v16    # "pkgs":[Ljava/lang/String;
    .restart local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_7
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1075
    new-instance v6, Lcom/samsung/android/cocktailbar/Cocktail;

    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    move/from16 v0, v23

    invoke-direct {v6, v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .line 1076
    .restart local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    new-instance v10, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    invoke-direct {v10}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>()V

    .line 1077
    .local v10, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1078
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V

    .line 1079
    invoke-virtual {v6, v10}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1f
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_6

    .line 1091
    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v7    # "cl":Ljava/lang/String;
    .end local v10    # "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "providerIndex":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_3
    move-exception v8

    .line 1092
    .local v8, "e":Ljava/lang/NullPointerException;
    :try_start_9
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1104
    if-nez v19, :cond_2

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2e
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_b
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    goto :goto_7

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_4
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_8
    :try_start_c
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1117
    if-eqz v4, :cond_2

    .line 1119
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1123
    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_8
    if-eqz v5, :cond_19

    .line 1119
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 1123
    :goto_a
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    :goto_b
    if-eqz v4, :cond_9

    .line 1119
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 1123
    :goto_c
    const/4 v4, 0x0

    :cond_9
    throw v23

    .line 1120
    :catch_7
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_a
    if-eqz v5, :cond_19

    .line 1119
    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1123
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_d
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    :catch_8
    move-exception v8

    .line 1121
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v23

    :goto_e
    if-eqz v4, :cond_b

    .line 1119
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 1123
    :goto_f
    const/4 v4, 0x0

    :cond_b
    throw v23

    .line 1120
    :catch_a
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1093
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 1094
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_12
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1104
    if-nez v19, :cond_2

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2d
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_14
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_10
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto :goto_10

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_c
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_11
    :try_start_15
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1117
    if-eqz v4, :cond_2

    .line 1119
    :try_start_16
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 1123
    :goto_12
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_c
    if-eqz v5, :cond_19

    .line 1119
    :try_start_17
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    .line 1123
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_13
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_d
    move-exception v8

    .line 1121
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_e
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v23

    :goto_14
    if-eqz v4, :cond_d

    .line 1119
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 1123
    :goto_15
    const/4 v4, 0x0

    :cond_d
    throw v23

    .line 1120
    :catch_f
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1095
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v8

    .line 1096
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_19
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 1104
    if-nez v19, :cond_2

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_1b
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_16
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_16

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_11
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_17
    :try_start_1c
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 1117
    if-eqz v4, :cond_2

    .line 1119
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_13

    .line 1123
    :goto_18
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_e
    if-eqz v5, :cond_19

    .line 1119
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12

    .line 1123
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_19
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_12
    move-exception v8

    .line 1121
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_13
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v23

    :goto_1a
    if-eqz v4, :cond_f

    .line 1119
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14

    .line 1123
    :goto_1b
    const/4 v4, 0x0

    :cond_f
    throw v23

    .line 1120
    :catch_14
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1097
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v8

    .line 1098
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_20
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 1104
    if-nez v19, :cond_2

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2b
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_22
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_1c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_16
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    goto :goto_1c

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_16
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_1d
    :try_start_23
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    .line 1117
    if-eqz v4, :cond_2

    .line 1119
    :try_start_24
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_18

    .line 1123
    :goto_1e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_10
    if-eqz v5, :cond_19

    .line 1119
    :try_start_25
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_17

    .line 1123
    :goto_1f
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_17
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_18
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1117
    :catchall_4
    move-exception v23

    :goto_20
    if-eqz v4, :cond_11

    .line 1119
    :try_start_26
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_19

    .line 1123
    :goto_21
    const/4 v4, 0x0

    :cond_11
    throw v23

    .line 1120
    :catch_19
    move-exception v8

    .line 1121
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1099
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v8

    .line 1100
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_27
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 1104
    if-nez v19, :cond_2

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_2a
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_29
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_22
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1b
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    goto :goto_22

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_1b
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_23
    :try_start_2a
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 1117
    if-eqz v4, :cond_2

    .line 1119
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1d

    .line 1123
    :goto_24
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_12
    if-eqz v5, :cond_19

    .line 1119
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1c

    .line 1123
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_25
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1c
    move-exception v8

    .line 1121
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_1d
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v23

    :goto_26
    if-eqz v4, :cond_13

    .line 1119
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_1e

    .line 1123
    :goto_27
    const/4 v4, 0x0

    :cond_13
    throw v23

    .line 1120
    :catch_1e
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1101
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1f
    move-exception v8

    .line 1102
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2e
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    .line 1104
    if-nez v19, :cond_2

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_29
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_30
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_28
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_14

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_20
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    goto :goto_28

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_20
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_29
    :try_start_31
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    .line 1117
    if-eqz v4, :cond_2

    .line 1119
    :try_start_32
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_22

    .line 1123
    :goto_2a
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_14
    if-eqz v5, :cond_19

    .line 1119
    :try_start_33
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_21

    .line 1123
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2b
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_21
    move-exception v8

    .line 1121
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_22
    move-exception v8

    .line 1121
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v23

    :goto_2c
    if-eqz v4, :cond_15

    .line 1119
    :try_start_34
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_23

    .line 1123
    :goto_2d
    const/4 v4, 0x0

    :cond_15
    throw v23

    .line 1120
    :catch_23
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1104
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v23

    if-nez v19, :cond_16

    .line 1105
    const/4 v4, 0x0

    .line 1107
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_35
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1108
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_28
    .catchall {:try_start_35 .. :try_end_35} :catchall_8

    .line 1109
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1110
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_36
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_2e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_17

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_24
    .catchall {:try_start_36 .. :try_end_36} :catchall_9

    goto :goto_2e

    .line 1114
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_24
    move-exception v8

    move-object v4, v5

    .line 1115
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_2f
    :try_start_37
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_8

    .line 1117
    if-eqz v4, :cond_16

    .line 1119
    :try_start_38
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_26

    .line 1123
    :goto_30
    const/4 v4, 0x0

    .line 1126
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_16
    :goto_31
    throw v23

    .line 1117
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_17
    if-eqz v5, :cond_16

    .line 1119
    :try_start_39
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_25

    .line 1123
    :goto_32
    const/4 v4, 0x0

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_31

    .line 1120
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_25
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_26
    move-exception v8

    .line 1121
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1117
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v23

    :goto_33
    if-eqz v4, :cond_18

    .line 1119
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_27

    .line 1123
    :goto_34
    const/4 v4, 0x0

    :cond_18
    throw v23

    .line 1120
    :catch_27
    move-exception v8

    .line 1121
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_9
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_33

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_28
    move-exception v8

    goto/16 :goto_2f

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_a
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2c

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_29
    move-exception v8

    goto/16 :goto_29

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_b
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_26

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2a
    move-exception v8

    goto/16 :goto_23

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_c
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_20

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2b
    move-exception v8

    goto/16 :goto_1d

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_d
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1a

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2c
    move-exception v8

    goto/16 :goto_17

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_e
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_14

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2d
    move-exception v8

    goto/16 :goto_11

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_f
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2e
    move-exception v8

    goto/16 :goto_8

    .line 1117
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v21    # "type":I
    :catchall_10
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 1114
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2f
    move-exception v8

    goto/16 :goto_2

    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_19
    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 14
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1303
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1304
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerForBroadcastsLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v9

    .line 1307
    .local v9, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v9, :cond_2

    iget v2, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    if-lez v2, :cond_2

    .line 1308
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v6

    .line 1309
    .local v6, "broadcast":Landroid/app/PendingIntent;
    if-eqz v6, :cond_3

    move v7, v0

    .line 1310
    .local v7, "alreadyRegistered":Z
    :goto_0
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v10, "intent":Landroid/content/Intent;
    new-array v8, v0, [I

    .line 1312
    .local v8, "cocktailIds":[I
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    aput v0, v8, v1

    .line 1313
    const-string v0, "cocktailIds"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1314
    iget-object v0, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1317
    .local v12, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    new-instance v3, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v3, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1, v10, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1320
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    if-nez v7, :cond_2

    .line 1323
    invoke-virtual {p1, v6}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    .line 1324
    iget v0, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1325
    .local v4, "period":J
    sget v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 1326
    sget v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v4, v0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1332
    .end local v4    # "period":J
    .end local v6    # "broadcast":Landroid/app/PendingIntent;
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "cocktailIds":[I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "token":J
    :cond_2
    return-void

    .restart local v6    # "broadcast":Landroid/app/PendingIntent;
    :cond_3
    move v7, v1

    .line 1309
    goto :goto_0

    .line 1320
    .restart local v7    # "alreadyRegistered":Z
    .restart local v8    # "cocktailIds":[I
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeAllUpdatedCocktailsLocked()V
    .locals 6

    .prologue
    .line 517
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 518
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 520
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 518
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    return-void
.end method

.method private removeCocktailInHostLocked(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1688
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->removeCocktail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1689
    :catch_0
    move-exception v0

    .line 1690
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method private removeCocktailLocked(I)V
    .locals 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 1673
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1674
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1677
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1678
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 1679
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1680
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1681
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    .line 1683
    :cond_1
    return-void
.end method

.method private removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1662
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1663
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 1666
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1667
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1668
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    .line 1669
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1670
    return-void
.end method

.method private removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 905
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(I)V

    .line 906
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 910
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 917
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 877
    sget-boolean v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 878
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeProvidersForPackageLocked : pkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    const/4 v4, 0x0

    .line 881
    .local v4, "providersRemoved":Z
    const/4 v5, 0x0

    .line 882
    .local v5, "toolsUpdated":Z
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 883
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 884
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 885
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 886
    invoke-direct {p0, v2, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    .line 887
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 888
    const/4 v5, 0x1

    .line 883
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 892
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    if-eqz v4, :cond_4

    .line 893
    if-eqz v5, :cond_3

    .line 894
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 896
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 898
    const-string v6, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 901
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    return v4
.end method

.method private removeUpdatedCocktailsExceptContextual()V
    .locals 7

    .prologue
    .line 527
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 529
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 531
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 529
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    monitor-exit v4

    .line 537
    return-void

    .line 536
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    .line 376
    if-eqz p1, :cond_1

    .line 377
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 378
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_0

    .line 379
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v2, :sswitch_data_0

    .line 391
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 392
    const/4 v1, 0x1

    .line 394
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    :goto_0
    return v1

    .line 383
    .restart local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x1

    .line 356
    if-eqz p1, :cond_1

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 358
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_0

    .line 359
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v2, :sswitch_data_0

    .line 369
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 372
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :goto_1
    return v1

    .line 363
    .restart local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    goto :goto_0

    .line 372
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private resetLoadedDataLocked()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 554
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 555
    return-void
.end method

.method private saveStateAsync()V
    .locals 2

    .prologue
    .line 979
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 980
    return-void
.end method

.method private saveStateLocked()V
    .locals 6

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 996
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 997
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 998
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1006
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1000
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1001
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1003
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savedStateFile()Landroid/util/AtomicFile;
    .locals 4

    .prologue
    .line 1140
    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1141
    .local v0, "dir":Ljava/io/File;
    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1142
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    if-nez v3, :cond_1

    .line 1143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1144
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1146
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/cocktails.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1149
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_1
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "visibility"    # I

    .prologue
    .line 1269
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1270
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendCocktailChangedVisibilityIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    const-string v1, "cocktailVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1275
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1276
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1277
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1278
    return-void
.end method

.method private sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 7
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1244
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1245
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDisableIntentLocked : cocktailId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1248
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1250
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1251
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1252
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 1254
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1255
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1256
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 1257
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1258
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v4, v2}, Lcom/android/server/DeviceIdleController$LocalService;->removePowerSaveWhitelistExceptIdle(Ljava/util/ArrayList;)V

    .line 1266
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 1263
    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendDragEventLocked(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/view/DragEvent;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1281
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1282
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDragEventLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.extra.DRAG_EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1286
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1287
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1288
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1289
    return-void
.end method

.method private sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "forcely"    # Z

    .prologue
    .line 1184
    if-eqz p1, :cond_0

    .line 1185
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1186
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEnableAndUpdateBroadcastLocked : cocktail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1191
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 8
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v7, 0x1

    .line 1197
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1198
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnableIntentLocked : cocktailId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1201
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnableIntentLocked : cocktail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") has state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_0
    return-void

    .line 1204
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1205
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1207
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1208
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1209
    invoke-virtual {p1, v7}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 1211
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1213
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 1214
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v4, v2}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveWhitelistExceptIdle(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1219
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendInitialBroadcasts()V
    .locals 2

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1171
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcastsLocked()V

    .line 1172
    monitor-exit v1

    .line 1173
    return-void

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendInitialBroadcastsLocked()V
    .locals 5

    .prologue
    .line 1176
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 1177
    .local v1, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1178
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1179
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_0

    .line 1181
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_0
    return-void
.end method

.method private sendUpdateFeedsBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1292
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1293
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpdateFeedsBroadcastLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1298
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1299
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1300
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "intentName"    # Ljava/lang/String;
    .param p3, "forcely"    # Z

    .prologue
    .line 1224
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1225
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendUpdateIntentLocked : cocktail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    :cond_2
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1230
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendUpdateIntentLocked : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1234
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1235
    .local v0, "cocktailIds":[I
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    aput v3, v0, v2

    .line 1236
    const-string v2, "cocktailIds"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1238
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1239
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    goto :goto_0
.end method

.method private setModeLocked(ILjava/lang/String;I)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "cocktailType"    # I

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    packed-switch p1, :pswitch_data_0

    .line 426
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktailsLocked()V

    .line 436
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 438
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    .line 439
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_0

    .line 422
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 423
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcastsLocked()V

    .line 443
    :cond_1
    return-void

    .line 429
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 431
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_1

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private systemReady()V
    .locals 2

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1878
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    .line 1880
    .local v0, "cocktailId":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1882
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1883
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1884
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 1885
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1887
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1888
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1889
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1892
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1893
    return-void
.end method

.method private unlinkHost()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 204
    :cond_0
    return-void
.end method

.method private unsetModeLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 456
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 457
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 458
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 459
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_0

    .line 462
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateCocktailAttribute()V
    .locals 7

    .prologue
    .line 250
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 252
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 253
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 254
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 255
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 252
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_1

    .line 266
    .end local v0    # "N":I
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    return-void
.end method

.method private updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "lastEnabled"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 276
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "newEnabled":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    move-object p1, v0

    .line 279
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFromSettingsLocked()V

    .line 281
    :cond_0
    monitor-exit v2

    .line 282
    return-object p1

    .line 281
    .end local v0    # "newEnabled":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateFeedsLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/util/List;)V
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1542
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1543
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeedsLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1546
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->getInstance()Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->updateFeeds(ILjava/util/List;)V

    .line 1550
    :goto_0
    return-void

    .line 1548
    :cond_1
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFeedsLocked : reject"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFromSettingsLocked()V
    .locals 6

    .prologue
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v4, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v5, v0, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 289
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 290
    .local v3, "id":I
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 291
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_0

    .line 292
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_0

    .line 295
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 296
    .restart local v3    # "id":I
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 297
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_2

    .line 298
    const/4 v5, 0x1

    invoke-direct {p0, v1, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_1

    .line 301
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_3
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .locals 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 737
    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 738
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateProvidersForPackageLocked : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    const/4 v15, 0x0

    .line 741
    .local v15, "providersUpdated":Z
    const/16 v16, 0x0

    .line 742
    .local v16, "toolsUpdated":Z
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 743
    .local v14, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v13

    .line 744
    .local v13, "intentName":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 747
    .local v10, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v10, :cond_2

    const/4 v8, 0x0

    .line 748
    .local v8, "N":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v6

    .line 749
    .local v6, "categoryIds":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_9

    .line 750
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 751
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 752
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v2, v7

    if-eqz v2, :cond_3

    .line 749
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 747
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "categoryIds":I
    .end local v8    # "N":I
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "i":I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 755
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "categoryIds":I
    .restart local v8    # "N":I
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "i":I
    :cond_3
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .local v4, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    .line 758
    .local v3, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v3, :cond_6

    .line 759
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 760
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_4

    .line 762
    const/16 v16, 0x1

    .line 764
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 765
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 769
    :goto_3
    const/4 v15, 0x1

    goto :goto_2

    .line 767
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    goto :goto_3

    .line 771
    :cond_6
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    move-object/from16 v2, p0

    move/from16 v7, p2

    .line 772
    invoke-direct/range {v2 .. v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    .line 773
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_8

    .line 775
    const/16 v16, 0x1

    .line 779
    :cond_7
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    .line 780
    const/4 v15, 0x1

    goto :goto_2

    .line 776
    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v7, 0x200

    if-ne v2, v7, :cond_7

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v7, 0x6

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v3, v7, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    goto :goto_4

    .line 785
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 786
    add-int/lit8 v11, v8, -0x1

    :goto_5
    if-ltz v11, :cond_d

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 788
    .restart local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_c

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 790
    if-eqz p3, :cond_a

    .line 791
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_a
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_b

    .line 794
    const/16 v16, 0x1

    .line 796
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v15

    .line 786
    :cond_c
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 799
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_d
    if-eqz v15, :cond_f

    .line 800
    if-eqz v16, :cond_e

    .line 801
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 803
    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 810
    .end local v15    # "providersUpdated":Z
    :cond_f
    :goto_6
    return v15

    .line 805
    .restart local v15    # "providersUpdated":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 806
    const/4 v15, 0x0

    goto :goto_6
.end method

.method private updateProvidersInfoForPackageLocked(Ljava/lang/String;I)Z
    .locals 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 814
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 815
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateProvidersInfoForPackageLocked : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    const/4 v15, 0x0

    .line 818
    .local v15, "providersUpdated":Z
    const/16 v16, 0x0

    .line 819
    .local v16, "toolsUpdated":Z
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 820
    .local v14, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v13

    .line 821
    .local v13, "intentName":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 824
    .local v10, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v10, :cond_2

    const/4 v8, 0x0

    .line 825
    .local v8, "N":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v6

    .line 826
    .local v6, "categoryIds":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_9

    .line 827
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 828
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 829
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v2, v7

    if-eqz v2, :cond_3

    .line 826
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 824
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "categoryIds":I
    .end local v8    # "N":I
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "i":I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 832
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "categoryIds":I
    .restart local v8    # "N":I
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "i":I
    :cond_3
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .local v4, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    .line 835
    .local v3, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v3, :cond_6

    .line 836
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 837
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_4

    .line 839
    const/16 v16, 0x1

    .line 841
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 842
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 846
    :goto_3
    const/4 v15, 0x1

    goto :goto_2

    .line 844
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    goto :goto_3

    .line 848
    :cond_6
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    move-object/from16 v2, p0

    move/from16 v7, p2

    .line 849
    invoke-direct/range {v2 .. v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    .line 850
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_8

    .line 852
    const/16 v16, 0x1

    .line 856
    :cond_7
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    .line 857
    const/4 v15, 0x1

    goto :goto_2

    .line 853
    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v7, 0x200

    if-ne v2, v7, :cond_7

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v7, 0x6

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v3, v7, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    goto :goto_4

    .line 862
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_9
    if-eqz v15, :cond_b

    .line 863
    if-eqz v16, :cond_a

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 866
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 873
    .end local v15    # "providersUpdated":Z
    :cond_b
    :goto_5
    return v15

    .line 868
    .restart local v15    # "providersUpdated":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 869
    const/4 v15, 0x0

    goto :goto_5
.end method

.method private updateToolLauncher()V
    .locals 3

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateToolLauncher(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 10
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v6, 0x1

    .line 1012
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1013
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v4, p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1014
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1015
    const/4 v7, 0x0

    const-string/jumbo v8, "gs"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1016
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1017
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1018
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1019
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v5

    .line 1020
    .local v5, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v5, :cond_0

    .line 1021
    const/4 v7, 0x0

    const-string/jumbo v8, "p"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1022
    const/4 v7, 0x0

    const-string/jumbo v8, "pkg"

    iget-object v9, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    const/4 v7, 0x0

    const-string v8, "cl"

    iget-object v9, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1024
    const/4 v7, 0x0

    const-string/jumbo v8, "p"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1017
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1027
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v5    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    const/4 v7, 0x0

    const-string/jumbo v8, "gs"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1028
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v6

    .line 1030
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callbacks"    # Landroid/os/IBinder;

    .prologue
    .line 1791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1792
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1793
    invoke-direct/range {p0 .. p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    .line 1794
    .local v2, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v2, :cond_0

    .line 1795
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad cocktailId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1842
    .end local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 1797
    .restart local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1799
    .local v3, "componentName":Landroid/content/ComponentName;
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v3, v15, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 1801
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1802
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1805
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v6

    .line 1806
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1814
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    .line 1815
    .local v4, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1816
    .local v7, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1817
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1819
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1820
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v5, v4

    .line 1824
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .local v5, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1825
    .local v12, "userId":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    if-eq v12, v13, :cond_3

    .line 1826
    sget-object v13, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CocktailServiceImpl of user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binding to provider on user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 1834
    .local v10, "token":J
    :try_start_4
    new-instance v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v4, v8, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1835
    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v4, v15, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 1837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1839
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1841
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 1842
    monitor-exit v14

    .line 1843
    return-void

    .line 1839
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v13

    goto :goto_0
.end method

.method public changeVisibleEdgeService(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1652
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1654
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->changeVisibleEdgeService(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "category"    # I

    .prologue
    .line 1451
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1452
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeCocktail : cocktailId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1455
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p2, v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1456
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1457
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    .line 1458
    .local v2, "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v2, :cond_1

    .line 1459
    invoke-virtual {v2, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo;->setCategory(I)V

    .line 1460
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1461
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1463
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, p3, v5}, Lcom/samsung/android/cocktailbar/ICocktailHost;->closeContextualCocktail(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    .end local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 1474
    return-void

    .line 1464
    .restart local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v1

    .line 1465
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1473
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1469
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_2
    :try_start_3
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeCocktail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reject"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public deleteHostAndDisableAllCocktails()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unlinkHost()V

    .line 196
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 197
    return-void
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1553
    if-nez p1, :cond_0

    .line 1554
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "invalid provider"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1556
    :cond_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1557
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    .line 1558
    .local v2, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v2, :cond_4

    .line 1559
    const/4 v6, 0x0

    .line 1560
    .local v6, "include":Z
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v7}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 1561
    .local v3, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    .local v4, "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1563
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 1564
    iget-object v9, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1565
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_1

    .line 1566
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    if-ne v7, v9, :cond_2

    .line 1567
    const/4 v6, 0x1

    .line 1563
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1570
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1583
    .end local v0    # "N":I
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "include":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1573
    .restart local v0    # "N":I
    .restart local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v6    # "include":Z
    :cond_3
    if-eqz v6, :cond_4

    .line 1574
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1575
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;

    invoke-direct {v9, p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1583
    .end local v0    # "N":I
    .end local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "include":Z
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    return-void
.end method

.method public disableUser(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 473
    sparse-switch p1, :sswitch_data_0

    .line 483
    :goto_0
    return-void

    .line 475
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->resetMode(II)V

    goto :goto_0

    .line 478
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeUpdatedCocktailsExceptContextual()V

    goto :goto_0

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2251
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2270
    :goto_0
    return-void

    .line 2257
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2258
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2259
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 2260
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 2261
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-direct {p0, v1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V

    .line 2259
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2263
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    if-eqz v4, :cond_2

    .line 2265
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 2266
    .local v2, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnabledCocktails : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2267
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2269
    .end local v2    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2263
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 2
    .param p1, "userType"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 465
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    if-eqz p2, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_0
.end method

.method public getAllCocktailIds(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1733
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1734
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1735
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1736
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1738
    :cond_0
    monitor-exit v3

    .line 1739
    return-void

    .line 1738
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 1742
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1743
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1744
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1587
    if-nez p1, :cond_0

    .line 1588
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1590
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1591
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1592
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1593
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    monitor-exit v2

    .line 1595
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1596
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1600
    if-nez p1, :cond_0

    .line 1601
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1603
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1604
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1605
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1606
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I

    move-result-object v1

    monitor-exit v2

    .line 1608
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_0

    .line 1610
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledCocktailIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1153
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1154
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initialize"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1157
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1158
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    .line 1160
    .local v0, "currentMode":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result v1

    .line 1161
    .local v1, "mode":I
    if-eq v0, v1, :cond_2

    .line 1162
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 1166
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 1167
    return-void

    .line 1158
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1163
    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    :cond_2
    if-ne v1, v4, :cond_1

    .line 1164
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    goto :goto_0
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1618
    if-nez p2, :cond_0

    .line 1619
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1621
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1622
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1623
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1624
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v1

    monitor-exit v2

    .line 1627
    :goto_0
    return v1

    .line 1626
    :cond_1
    monitor-exit v2

    .line 1627
    const/4 v1, 0x0

    goto :goto_0

    .line 1626
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValidHost()Z
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCocktailBarWakeUp(ZII)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 2092
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2093
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2094
    .local v1, "currentUserId":I
    const/4 v4, 0x0

    .line 2095
    .local v4, "ownerId":I
    if-eq v4, v1, :cond_0

    .line 2096
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyCocktailBarWakeUp supported only owner user, currentUID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    .end local v1    # "currentUserId":I
    .end local v4    # "ownerId":I
    :goto_0
    return-void

    .line 2101
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2102
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2103
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyCocktailBarWakeUp was not supported with mobile keypad"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2107
    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 2108
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;

    invoke-direct {v6, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2120
    :cond_2
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v5, :cond_3

    .line 2122
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v5, v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v5, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyWakeUpState(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2123
    :catch_0
    move-exception v2

    .line 2124
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2128
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyCocktailBarWakeUp: startActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.app.cocktailbarservice"

    const-string v6, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    const-string/jumbo v5, "keycode"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2132
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "viewId"    # I

    .prologue
    .line 1477
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1478
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1479
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1480
    invoke-direct {p0, v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 1482
    :cond_0
    monitor-exit v2

    .line 1483
    return-void

    .line 1482
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1766
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1767
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyCocktailVisibiltyChanged : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1770
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1771
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1772
    invoke-direct {p0, v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 1774
    :cond_1
    monitor-exit v2

    .line 1775
    return-void

    .line 1774
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1756
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1758
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyKeyguardState(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1759
    :catch_0
    move-exception v0

    .line 1760
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1995
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1996
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1997
    .local v2, "added":Z
    const/4 v4, 0x0

    .line 1998
    .local v4, "changed":Z
    const/4 v9, 0x0

    .line 1999
    .local v9, "pkgList":[Ljava/lang/String;
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2000
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2001
    const/4 v2, 0x1

    .line 2020
    :goto_0
    if-eqz v9, :cond_0

    array-length v13, v9

    if-nez v13, :cond_3

    .line 2063
    :cond_0
    :goto_1
    return-void

    .line 2002
    :cond_1
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2003
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2004
    const/4 v2, 0x0

    goto :goto_0

    .line 2006
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 2007
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 2010
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 2011
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 2014
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    .end local v9    # "pkgList":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v10, v9, v13

    .line 2017
    .restart local v9    # "pkgList":[Ljava/lang/String;
    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2018
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 2023
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_a

    .line 2024
    :cond_4
    const/4 v11, 0x0

    .line 2025
    .local v11, "res":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 2026
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 2027
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2028
    .local v5, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_5

    if-eqz v5, :cond_7

    const-string v13, "android.intent.extra.REPLACING"

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2029
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v6

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v13

    if-gt v6, v13, :cond_9

    .line 2030
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v8, :cond_6

    aget-object v10, v3, v7

    .line 2031
    .restart local v10    # "pkgName":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v13}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 2030
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2029
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2035
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v6

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v13

    if-gt v6, v13, :cond_9

    .line 2036
    move-object v3, v9

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_5
    if-ge v7, v8, :cond_8

    aget-object v10, v3, v7

    .line 2037
    .restart local v10    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v13

    or-int/2addr v11, v13

    .line 2036
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2035
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2041
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 2042
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    if-eqz v11, :cond_0

    .line 2044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 2042
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "i":I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 2047
    .end local v11    # "res":Z
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2048
    .restart local v5    # "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_b

    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2050
    :cond_b
    const/4 v11, 0x0

    .line 2051
    .restart local v11    # "res":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 2052
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 2053
    move-object v3, v9

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v8, :cond_c

    aget-object v10, v3, v7

    .line 2054
    .restart local v10    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 2055
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 2053
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2057
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_c
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2058
    if-eqz v11, :cond_0

    .line 2059
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 2057
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13
.end method

.method public onConfigurationChanged()V
    .locals 9

    .prologue
    .line 558
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 559
    .local v5, "revised":Ljava/util/Locale;
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v3, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 560
    .local v3, "currentDisplayDensity":I
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mDefaultDisplayDensity:I

    if-eq v3, v6, :cond_2

    .line 561
    :cond_0
    iput-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 562
    iput v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mDefaultDisplayDensity:I

    .line 563
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v7

    .line 564
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 565
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 566
    .local v0, "N":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 567
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 568
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    .line 569
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersInfoForPackageLocked(Ljava/lang/String;I)Z

    .line 566
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 571
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 572
    monitor-exit v7

    .line 574
    .end local v0    # "N":I
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 572
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1382
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1383
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partiallyUpdateCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1386
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1387
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1388
    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailContentView(Landroid/widget/RemoteViews;Z)V

    .line 1389
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1390
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1392
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1401
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1402
    return-void

    .line 1393
    :catch_0
    move-exception v1

    .line 1394
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1401
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1398
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "partiallyUpdateCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "helpView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1405
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1406
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partiallyUpdateHelpView : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1409
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1410
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1411
    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailHelpView(Landroid/widget/RemoteViews;Z)V

    .line 1412
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1413
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1415
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1424
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1425
    return-void

    .line 1416
    :catch_0
    move-exception v1

    .line 1417
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1424
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1421
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "partiallyUpdateHelpView : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeAllUpdatedCocktails()V
    .locals 2

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 512
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktailsLocked()V

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCocktail(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 1646
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1647
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(I)V

    .line 1648
    monitor-exit v1

    .line 1649
    return-void

    .line 1648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestToDisableCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 313
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToDisableCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 7
    .param p1, "category"    # I

    .prologue
    .line 339
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 340
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestToDisableCocktailByCategory : category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    const/4 v3, 0x0

    .line 343
    .local v3, "res":Z
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 344
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 345
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 346
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 347
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v4, p1, :cond_1

    .line 348
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 345
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    monitor-exit v5

    .line 352
    return v3

    .line 351
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 304
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToUpdateCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 7
    .param p1, "category"    # I

    .prologue
    .line 322
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 323
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestToUpdateCocktailByCategory : category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const/4 v3, 0x0

    .line 326
    .local v3, "res":Z
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 327
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 328
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 329
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 330
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v4, p1, :cond_1

    .line 331
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 328
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    monitor-exit v5

    .line 335
    return v3

    .line 334
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public requestUpdateFeeds()V
    .locals 6

    .prologue
    .line 398
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 399
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestUpdateFeeds"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 402
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 403
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 404
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 405
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v3, v1, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateFeedsBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 403
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    monitor-exit v4

    .line 410
    return-void

    .line 409
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public resetMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 447
    return-void
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1778
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1779
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDragEvent : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1783
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1784
    invoke-direct {p0, v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDragEventLocked(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/view/DragEvent;)V

    .line 1786
    :cond_1
    monitor-exit v2

    .line 1787
    return-void

    .line 1786
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 1985
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->sendExtraData(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    :cond_0
    :goto_0
    return-void

    .line 1988
    :catch_0
    move-exception v0

    .line 1989
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .param p4, "restart"    # Z

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 211
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 216
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mTickerDisableflags:I

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setDisableTickerView(I)V

    .line 219
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    if-eqz v2, :cond_2

    if-nez p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 214
    :cond_3
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisableTickerView(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1974
    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mTickerDisableflags:I

    .line 1975
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1977
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->setDisableTickerView(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    :cond_0
    :goto_0
    return-void

    .line 1978
    :catch_0
    move-exception v0

    .line 1979
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method public setEnabledCocktailIds([I)V
    .locals 7
    .param p1, "cocktailIds"    # [I

    .prologue
    .line 1709
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1710
    :try_start_0
    array-length v0, p1

    .line 1711
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v2, "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1713
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    aget v6, p1, v3

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1714
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_0

    .line 1715
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1718
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;

    invoke-direct {v6, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1725
    monitor-exit v5

    .line 1726
    return-void

    .line 1725
    .end local v0    # "N":I
    .end local v2    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setMode(ILjava/lang/String;I)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "cocktailType"    # I

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 414
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setModeLocked(ILjava/lang/String;I)V

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I

    .prologue
    .line 1428
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1429
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1432
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1433
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1434
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1436
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1438
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->showCocktail(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1447
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1448
    return-void

    .line 1439
    :catch_0
    move-exception v1

    .line 1440
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1447
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1444
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 5
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .prologue
    const/4 v4, 0x1

    .line 224
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v2, :cond_4

    .line 225
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 226
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 227
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailAttribute()V

    .line 237
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    if-nez v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    .line 239
    .local v0, "currentMode":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result v1

    .line 240
    .local v1, "mode":I
    if-eq v0, v1, :cond_5

    .line 241
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 245
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 247
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :cond_2
    return-void

    .line 229
    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iput p3, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    goto :goto_0

    .line 232
    :cond_4
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 242
    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    :cond_5
    if-ne v1, v4, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    goto :goto_1
.end method

.method public switchDefaultCocktail()V
    .locals 3

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1966
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->switchDefaultCocktail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1967
    :catch_0
    move-exception v0

    .line 1968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public systemDestroy()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;->unregisterContentObserver()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .line 187
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 188
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unlinkHost()V

    .line 189
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1847
    if-nez p2, :cond_0

    .line 1848
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1850
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1851
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1856
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1862
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1863
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v0, :cond_1

    .line 1864
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad cocktailId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1873
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1867
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1869
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1870
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1871
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1874
    return-void
.end method

.method public unsetMode(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 451
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetModeLocked(ILjava/lang/String;)V

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 1637
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1639
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1640
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 1642
    :cond_0
    monitor-exit v2

    .line 1643
    return-void

    .line 1642
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    .line 1359
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1360
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1363
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1364
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1365
    invoke-virtual {v0, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1366
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1367
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1369
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, v0, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1379
    return-void

    .line 1370
    :catch_0
    move-exception v1

    .line 1371
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1378
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1375
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    .local p3, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1534
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1535
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1536
    invoke-direct {p0, v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFeedsLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/util/List;)V

    .line 1538
    :cond_0
    monitor-exit v2

    .line 1539
    return-void

    .line 1538
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .prologue
    .line 2073
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateLongpressGesture(Z)V

    .line 2074
    return-void
.end method

.method public updateSysfsBarLength(I)V
    .locals 0
    .param p1, "barLength"    # I

    .prologue
    .line 2081
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    .line 2082
    return-void
.end method

.method public updateSysfsDeadZone(I)V
    .locals 0
    .param p1, "deadzone"    # I

    .prologue
    .line 2077
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsDeadZone(I)V

    .line 2078
    return-void
.end method

.method public updateSysfsGripDisable(Z)V
    .locals 0
    .param p1, "bDisable"    # Z

    .prologue
    .line 2085
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    .line 2086
    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .locals 1
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 2070
    return-void
.end method
