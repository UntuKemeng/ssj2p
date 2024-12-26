.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final DATA_PATH:Ljava/io/File;

.field static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final LOW_MEMORY_SMARTGLOW_NOTIFICATION_ID:I = 0x2

.field private static final MONITOR_INTERVAL:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field static final TAGWARN:Ljava/lang/String; = "!@DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field static final localLOGV:Z = true


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private final mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

.field mClearSucceeded:Z

.field mClearingCache:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataFileStats:Landroid/os/StatFs;

.field private mFileNodeFullFlag:Z

.field private mFreeFileNode:J

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private final mHandler:Landroid/os/Handler;

.field private final mIsBootImageOnDisk:Z

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private final mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field mMemLowThreshold:J

.field private final mRemoteService:Landroid/os/IBinder;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSmartGlow:Lcom/android/server/lights/Light;

.field private final mSmartGlowAnimationTimeout:I

.field private mSmartGlowLowStorageAlertStateOn:Z

.field private mSmartGlowLowStorageLevel:I

.field mSmartGlowMemLowThreshold:J

.field private mSmartGlowMemoryLow:Z

.field private mSmartGlowSettingsObserver:Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;

.field private mSmartGlowStatus:Z

.field private mSmartGlowStorageStatusEnable:Z

.field private mSmartGlowcancel:Z

.field private final mStorageFileNodeFullIntent:Landroid/content/Intent;

.field private final mStorageFileNodeNotFullIntent:Landroid/content/Intent;

.field private final mStorageFullIntent:Landroid/content/Intent;

.field private final mStorageLowIntent:Landroid/content/Intent;

.field private final mStorageNotFullIntent:Landroid/content/Intent;

.field private final mStorageOkIntent:Landroid/content/Intent;

.field private final mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private final mThresholdBufferZone:J

.field private mThresholdRatioOfFileNode:J

.field private mTotalFileNode:J

.field private final mTotalMemory:J

.field private final mUPSMReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    .line 130
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    .line 131
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x4000000

    const/4 v2, 0x0

    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 125
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThresholdRatioOfFileNode:J

    .line 126
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThresholdBufferZone:J

    .line 127
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFileNodeFullFlag:Z

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 134
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStorageStatusEnable:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStatus:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowcancel:Z

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLock:Ljava/lang/Object;

    .line 180
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowAnimationTimeout:I

    .line 213
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 468
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    .line 563
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$4;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$4;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 581
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$5;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$5;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    .line 433
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    .line 437
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    .line 439
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 440
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 441
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 443
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 446
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 448
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 450
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 452
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_FILENODE_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFileNodeFullIntent:Landroid/content/Intent;

    .line 456
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFileNodeFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_FILENODE_NOT_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFileNodeNotFullIntent:Landroid/content/Intent;

    .line 458
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFileNodeNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowSettingsObserver:Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;

    .line 462
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 464
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStorageStatusEnable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStorageStatusEnable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStatus:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStatus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowLowStorageLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/storage/DeviceStorageMonitorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowLowStorageLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    return v0
.end method

.method private cancelFileNodeFullNotification()V
    .locals 5

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 790
    .local v0, "context":Landroid/content/Context;
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Canceling file node full notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 797
    .local v1, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFileNodeFullIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 801
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFileNodeNotFullIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 802
    return-void
.end method

.method private cancelFullNotification()V
    .locals 3

    .prologue
    .line 741
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Canceling memory full notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 744
    return-void
.end method

.method private cancelNotification()V
    .locals 5

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 714
    .local v0, "context":Landroid/content/Context;
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Canceling low memory notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 722
    .local v1, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 724
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 725
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 727
    return-void
.end method

.method private clearCache()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 298
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 302
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 304
    :try_start_0
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "Clearing cache"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-boolean v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 310
    iput-boolean v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private static isBootImageOnDisk()Z
    .locals 5

    .prologue
    .line 512
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 513
    .local v2, "instructionSet":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    const/4 v4, 0x0

    .line 517
    .end local v2    # "instructionSet":Ljava/lang/String;
    :goto_1
    return v4

    .line 512
    .restart local v2    # "instructionSet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "instructionSet":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private restatDataDir()V
    .locals 22

    .prologue
    .line 237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 244
    :goto_0
    const-string v7, "debug.freemem"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "debugFreeMem":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 246
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v18, "sys_free_storage_log_interval"

    const-wide/16 v20, 0x2d0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v10, v18, v20

    .line 253
    .local v10, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 254
    .local v4, "currTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    cmp-long v7, v18, v10

    if-ltz v7, :cond_2

    .line 256
    :cond_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 257
    const-wide/16 v14, -0x1

    .local v14, "mFreeSystem":J
    const-wide/16 v12, -0x1

    .line 259
    .local v12, "mFreeCache":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 266
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v12, v18, v20

    .line 272
    :goto_2
    const/16 v7, 0xaba

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 276
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v18, "disk_free_change_reporting_threshold"

    const-wide/32 v20, 0x200000

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 280
    .local v16, "threshold":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 281
    .local v8, "delta":J
    cmp-long v7, v8, v16

    if-gtz v7, :cond_3

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v7, v8, v18

    if-gez v7, :cond_4

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 283
    const/16 v7, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 287
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getTotalFileNode()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    .line 288
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeFileNode:J

    .line 290
    const-string v7, "DeviceStorageMonitorService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "restatDataDir : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeFileNode:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 295
    :goto_3
    return-void

    .line 291
    :catch_0
    move-exception v7

    goto :goto_3

    .line 269
    .end local v8    # "delta":J
    .end local v16    # "threshold":J
    .restart local v12    # "mFreeCache":J
    .restart local v14    # "mFreeSystem":J
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .line 262
    :catch_2
    move-exception v7

    goto/16 :goto_1

    .line 240
    .end local v4    # "currTime":J
    .end local v6    # "debugFreeMem":Ljava/lang/String;
    .end local v10    # "freeMemLogInterval":J
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :catch_3
    move-exception v7

    goto/16 :goto_0
.end method

.method private sendFileNodeFullNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 751
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 752
    .local v0, "context":Landroid/content/Context;
    const-string v5, "DeviceStorageMonitorService"

    const-string v6, "Sending file node full notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string/jumbo v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 760
    .local v2, "mNotificationMgr":Landroid/app/NotificationManager;
    const v5, 0x1040358

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 762
    .local v4, "title":Ljava/lang/CharSequence;
    const v5, 0x1040359

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 765
    .local v1, "details":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x108078e

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string/jumbo v6, "sys"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 777
    .local v3, "notification":Landroid/app/Notification;
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 778
    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v7, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 782
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFileNodeFullIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 783
    return-void
.end method

.method private sendFullNotification()V
    .locals 3

    .prologue
    .line 733
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Sending memory full notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 735
    return-void
.end method

.method private sendNotification()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 671
    .local v0, "context":Landroid/content/Context;
    const-string v3, "DeviceStorageMonitorService"

    const-string v5, "Sending low memory notification"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v3, 0xab9

    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v3, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 675
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string/jumbo v3, "memory"

    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 679
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 680
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 683
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    const v3, 0x1040358

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 685
    .local v10, "title":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    if-eqz v3, :cond_1

    const v3, 0x1040359

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 688
    .local v6, "details":Ljava/lang/CharSequence;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 690
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108078e

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x1060059

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v3, "sys"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 703
    .local v9, "notification":Landroid/app/Notification;
    iget v1, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v9, Landroid/app/Notification;->flags:I

    .line 704
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v11, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 706
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 707
    return-void

    .line 675
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_0
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto/16 :goto_0

    .line 685
    .restart local v2    # "lowMemIntent":Landroid/content/Intent;
    .restart local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    const v3, 0x104035a

    goto :goto_1
.end method

.method private sendNotificationForSmartGlow()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 636
    .local v0, "context":Landroid/content/Context;
    const-string v3, "DeviceStorageMonitorService"

    const-string v5, "Sending low memory notification for SmartGlow"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 643
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    const v3, 0x10405b1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 645
    .local v10, "title":Ljava/lang/CharSequence;
    const v3, 0x10405b2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 646
    .local v6, "details":Ljava/lang/CharSequence;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 648
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10806fe

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/high16 v3, -0x10000

    const/16 v5, 0x3e8

    const/16 v11, 0x1f4

    invoke-virtual {v1, v3, v5, v11}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 659
    .local v9, "notification":Landroid/app/Notification;
    const/16 v1, 0x10

    iput v1, v9, Landroid/app/Notification;->secFlags:I

    .line 660
    const/4 v1, 0x2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v1, v9, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 662
    return-void

    .line 637
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_0
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto :goto_0
.end method


# virtual methods
.method checkMemory(Z)V
    .locals 14
    .param p1, "checkCache"    # Z

    .prologue
    const-wide/16 v12, 0x64

    const-wide/16 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 319
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_1

    .line 320
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread already running just skip"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    .line 323
    .local v0, "diffTime":J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 324
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v0    # "diffTime":J
    :cond_0
    :goto_0
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Posting Message again"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 421
    return-void

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->restatDataDir()V

    .line 328
    const-string v2, "DeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "freeMemory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 345
    if-eqz p1, :cond_5

    .line 351
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 354
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 360
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 361
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->clearCache()V

    .line 387
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    if-nez v2, :cond_3

    .line 388
    const-string v2, "!@DeviceStorageMonitorService"

    const-string v3, "No boot image on disk due to lack of space. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    .line 391
    :cond_3
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 392
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_4

    .line 393
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendFullNotification()V

    .line 394
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 403
    :cond_4
    :goto_2
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeFileNode:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    mul-long/2addr v4, v10

    div-long/2addr v4, v12

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 404
    const-string v2, "DeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[warning] File node is almost full : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeFileNode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFileNodeFullFlag:Z

    if-nez v2, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendFileNodeFullNotification()V

    .line 407
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFileNodeFullFlag:Z

    goto/16 :goto_0

    .line 367
    :cond_5
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 368
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_6

    .line 371
    const-string v2, "!@DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    .line 373
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 375
    :cond_6
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory notification already sent. do nothing"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 380
    :cond_7
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 381
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_2

    .line 382
    const-string v2, "!@DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    .line 384
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_1

    .line 397
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_4

    .line 398
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 399
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_2

    .line 410
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFileNodeFullFlag:Z

    if-ne v2, v8, :cond_0

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeFileNode:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    mul-long/2addr v4, v10

    div-long/2addr v4, v12

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 411
    const-string v2, "DeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File node warning is solved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeFileNode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelFileNodeFullNotification()V

    .line 413
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFileNodeFullFlag:Z

    goto/16 :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 600
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Current DeviceStorageMonitor state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    const-string v1, "  mFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    const-string v1, " mTotalMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v1, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const-string v1, "  mLastReportedFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    const-string v1, " mLastReportedFreeMemTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 613
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 615
    const-string v1, "  mLowMemFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 616
    const-string v1, " mMemFullFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 617
    const-string v1, " mIsBootImageOnDisk="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 619
    const-string v1, "  mClearSucceeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 620
    const-string v1, " mClearingCache="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 622
    const-string v1, "  mMemLowThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    const-string v1, " mMemFullThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    const-string v1, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    const-string v1, " mMemCacheTrimToThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 545
    .local v0, "sm":Landroid/os/storage/StorageManager;
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 546
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    .line 548
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    .line 549
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    .line 551
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 552
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 553
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlow:Lcom/android/server/lights/Light;

    .line 554
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 556
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 557
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 559
    const-string v1, "devicestoragemonitor"

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 560
    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method postCheckMemoryMsg(ZJ)V
    .locals 6
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 425
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 429
    return-void

    :cond_0
    move v0, v2

    .line 426
    goto :goto_0
.end method
