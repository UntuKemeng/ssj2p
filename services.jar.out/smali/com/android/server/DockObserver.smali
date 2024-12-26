.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/ccic_dock/state"

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/ccic_dock"

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_DEVICE_TYPE_CCIC:I = 0x1

.field private static final DOCK_DEVICE_TYPE_MUIC:I = 0x0

.field private static final DOCK_DEVICE_TYPE_NONE:I = -0x1

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final SILENT_REBOOT_PATH:Ljava/lang/String; = "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

.field private static final TAG:Ljava/lang/String; = "DockObserver"

.field private static mTone:Landroid/media/Ringtone;


# instance fields
.field private final VIBRATION_DURATION:I

.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mCcicObserver:Landroid/os/UEventObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLastReportTime:J

.field private mLastUEventDevice:I

.field private mLastUEventTime:J

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private mVRManagerService:Lcom/android/internal/app/IVRManagerService;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 99
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 101
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 102
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 105
    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 115
    iput-wide v4, p0, Lcom/android/server/DockObserver;->mLastUEventTime:J

    .line 116
    iput-wide v4, p0, Lcom/android/server/DockObserver;->mLastReportTime:J

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    .line 126
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    .line 477
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 496
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 522
    new-instance v0, Lcom/android/server/DockObserver$3;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$3;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    .line 146
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 147
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 151
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 153
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/ccic_dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/DockObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/DockObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/DockObserver;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/server/DockObserver;->mLastReportTime:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->isOtherState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleOtherStateChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/server/DockObserver;->mLastUEventTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/DockObserver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/server/DockObserver;->mLastUEventTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/DockObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized getVRManagerService()Lcom/android/internal/app/IVRManagerService;
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    .line 135
    iget-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "DockObserver"

    const-string/jumbo v1, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleDockStateChange()V
    .locals 8

    .prologue
    const/16 v7, 0x67

    .line 272
    iget-object v4, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 273
    :try_start_0
    const-string v3, "DockObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dock state changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 276
    .local v2, "previousDockState":I
    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 279
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 283
    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v3, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 284
    const-string v3, "DockObserver"

    const-string v5, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v4

    .line 393
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/DockObserver;->mLastReportTime:J

    .line 297
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    const-string v3, "android.intent.extra.DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v3, "com.sec.intent.extra.SMART_DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v3, "android.intent.extra.SMART_DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 392
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "previousDockState":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleOtherStateChange()V
    .locals 8

    .prologue
    const/16 v7, 0x6c

    const/16 v6, 0x6b

    .line 397
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 398
    :try_start_0
    const-string v2, "DockObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Other state changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 401
    .local v1, "previousDockState":I
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/DockObserver;->mLastReportTime:J

    .line 410
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v2, v6, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 412
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "Gamepad_earjack=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 413
    monitor-exit v3

    .line 470
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 414
    :cond_0
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v2, v7, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 416
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    const-string v2, "Gamepad_earjack=1"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 417
    monitor-exit v3

    goto :goto_0

    .line 469
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "previousDockState":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 418
    .restart local v1    # "previousDockState":I
    :cond_1
    if-eq v1, v6, :cond_2

    if-ne v1, v7, :cond_3

    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v2, :cond_3

    .line 420
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 421
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    const-string v2, "Gamepad_earjack=-1"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 422
    monitor-exit v3

    goto :goto_0

    .line 469
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 179
    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 181
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    .line 182
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 185
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 186
    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_0

    .line 199
    const/16 v4, 0x400

    :try_start_4
    new-array v0, v4, [C

    .line 200
    .restart local v0    # "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/ccic_dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    .restart local v2    # "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_5
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 203
    .restart local v3    # "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 204
    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 206
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :cond_0
    :goto_1
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 216
    return-void

    .line 188
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 190
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v4, "DockObserver"

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v4

    .line 192
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v4, "DockObserver"

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_2
    move-exception v4

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 208
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 209
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    const-string v4, "DockObserver"

    const-string v6, "This kernel does not have ccic dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DockObserver"

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1
.end method

.method private isOtherState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 473
    const/16 v0, 0x69

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActualDockStateLocked(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 219
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 222
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    .line 223
    const-string v0, "DockObserver"

    const-string v1, "Adjusting dock state value for compatibility"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    add-int/lit8 v0, v0, 0x5e

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 228
    :cond_0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 229
    iput v2, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 230
    iput v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 237
    :goto_0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez v0, :cond_4

    .line 238
    :cond_1
    const-string/jumbo v0, "sys.dockstate"

    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-ne v0, v3, :cond_4

    .line 248
    :cond_2
    :goto_1
    return-void

    .line 232
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    goto :goto_0

    .line 245
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_2

    .line 246
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    goto :goto_1
.end method

.method private setDockStateLocked(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 251
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2

    .line 252
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 253
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2

    .line 255
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v1, "android.server:DOCK"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 264
    :cond_2
    return-void
.end method

.method private updateLocked()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 268
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 166
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 171
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 174
    :cond_0
    monitor-exit v1

    .line 176
    :cond_1
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 161
    const-string v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 162
    return-void
.end method
