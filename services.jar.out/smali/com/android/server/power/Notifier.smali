.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChanging:Z

.field private mInteractiveForNet:Z

.field private final mLock:Ljava/lang/Object;

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private mPersona:Landroid/os/PersonaManager;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

.field private final mScreenBrightnessBoostIntent:Landroid/content/Intent;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

.field private final mSubScreenOffIntent:Landroid/content/Intent;

.field private final mSubScreenOnIntent:Landroid/content/Intent;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x50000000

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 127
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mInteractiveForNet:Z

    .line 137
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    .line 704
    new-instance v0, Lcom/android/server/power/Notifier$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    .line 726
    new-instance v0, Lcom/android/server/power/Notifier$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 749
    new-instance v0, Lcom/android/server/power/Notifier$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 167
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 168
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 169
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 170
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 171
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 172
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 173
    const-class v0, Lcom/android/internal/os/SelfHealingServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SelfHealingServiceInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    .line 175
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 177
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SUBSCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mSubScreenOnIntent:Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSubScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SUBSCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mSubScreenOffIntent:Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSubScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    .line 217
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveForNet:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/power/Notifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mInteractiveForNet:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Landroid/net/INetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSubScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/Notifier;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/Notifier;)Landroid/hardware/input/InputManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSubScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 639
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 640
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 350
    const v2, 0xffff

    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 374
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 356
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 359
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 360
    goto :goto_0

    .line 365
    :sswitch_3
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_4
    move v0, v1

    .line 371
    goto :goto_0

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleEarlyInteractiveChange()V
    .locals 4

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$2;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 471
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 473
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 485
    :goto_0
    monitor-exit v2

    .line 486
    return-void

    .line 477
    :cond_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v0

    .line 478
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 485
    .end local v0    # "why":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .locals 4

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$4;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :goto_0
    monitor-exit v2

    .line 535
    return-void

    .line 511
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v1, :cond_1

    .line 512
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 513
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 517
    :cond_1
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v0

    .line 518
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$5;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 530
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 531
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 532
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_0

    .line 534
    .end local v0    # "why":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V
    .locals 7
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_1

    .line 813
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Wrong! Notifier.onWakeLockForKnox() mPersona == null."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    if-nez p6, :cond_2

    .line 825
    :goto_1
    :try_start_0
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPersona:Landroid/os/PersonaManager;

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v6

    .line 829
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong! Notifier.onWakeLockForKnox() Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p6, v0}, Landroid/os/WorkSource;->get(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result p4

    goto :goto_1
.end method

.method private playWirelessChargingStartedSound()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 759
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "charging_sounds_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 761
    .local v0, "enabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wireless_charging_started_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 765
    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 766
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 767
    .local v1, "sfx":Landroid/media/Ringtone;
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 769
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 774
    .end local v1    # "sfx":Landroid/media/Ringtone;
    .end local v3    # "soundUri":Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 775
    return-void

    .line 759
    .end local v0    # "enabled":Z
    .end local v2    # "soundPath":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 700
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v6, 0x0

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 702
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 740
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 747
    :goto_0
    return-void

    .line 744
    :cond_0
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 745
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_0
.end method

.method private sendNextBroadcast()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 655
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 656
    :try_start_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-nez v1, :cond_0

    .line 658
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 659
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 682
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 683
    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 684
    .local v0, "powerState":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    const/16 v1, 0xaa5

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 688
    if-ne v0, v3, :cond_6

    .line 689
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 693
    .end local v0    # "powerState":I
    :goto_1
    return-void

    .line 660
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_3

    .line 662
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_2

    .line 664
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 665
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 667
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 668
    monitor-exit v2

    goto :goto_1

    .line 672
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_5

    .line 674
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 675
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_0

    .line 677
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 678
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 691
    .restart local v0    # "powerState":I
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    goto :goto_1
.end method

.method private sendUserActivity()V
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_0

    .line 645
    monitor-exit v1

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 648
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 716
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const-string/jumbo v1, "why"

    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    const/16 v0, 0xaa7

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 722
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_0
.end method

.method private static translateOffReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 538
    sparse-switch p0, :sswitch_data_0

    .line 548
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 540
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 545
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 538
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method private updatePendingBroadcastLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 625
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v1, v2, :cond_1

    .line 629
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 630
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 631
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 632
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 633
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public onMultipleScreenStateChanging(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$10;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 862
    return-void
.end method

.method public onScreenBrightnessBoostChanged()V
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 561
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 562
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 563
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method

.method public onSubScreenStateChanged(III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "reason"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$9;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/power/Notifier$9;-><init>(Lcom/android/server/power/Notifier;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 852
    return-void
.end method

.method public onTspLpmNeed(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 865
    const-string v0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTspLpmNeed : id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerInternal;->setTspLpmMode(IZ)V

    .line 867
    return-void
.end method

.method public onUserActivity(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 581
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_0

    .line 582
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 583
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 584
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 585
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 587
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 576
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 17
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 231
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    .line 232
    .local v7, "monitorType":I
    if-ltz v7, :cond_0

    .line 234
    const/16 v2, 0x3e8

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, v2, p2

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    .line 236
    .local v8, "unimportantForLogging":Z
    :goto_0
    if-eqz p7, :cond_3

    .line 237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v8    # "unimportantForLogging":Z
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    if-eqz v2, :cond_1

    .line 253
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/Notifier;->mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/os/SelfHealingServiceInternal;->wakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V

    .line 259
    :cond_1
    const/4 v10, 0x1

    move-object/from16 v9, p0

    move/from16 v11, p2

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    invoke-direct/range {v9 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 261
    return-void

    .line 234
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 240
    .restart local v8    # "unimportantForLogging":Z
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x28

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 246
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onWakeLockChanging(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 24
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;
    .param p9, "newFlags"    # I
    .param p10, "newTag"    # Ljava/lang/String;
    .param p11, "newPackageName"    # Ljava/lang/String;
    .param p12, "newOwnerUid"    # I
    .param p13, "newOwnerPid"    # I
    .param p14, "newWorkSource"    # Landroid/os/WorkSource;
    .param p15, "newHistoryTag"    # Ljava/lang/String;

    .prologue
    .line 271
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v8

    .line 272
    .local v8, "monitorType":I
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v13

    .line 273
    .local v13, "newMonitorType":I
    if-eqz p7, :cond_2

    if-eqz p14, :cond_2

    if-ltz v8, :cond_2

    if-ltz v13, :cond_2

    .line 282
    const/16 v3, 0x3e8

    move/from16 v0, p12

    if-ne v0, v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    and-int v3, v3, p9

    if-eqz v3, :cond_1

    const/4 v14, 0x1

    .line 285
    .local v14, "unimportantForLogging":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v4, p7

    move/from16 v5, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p8

    move-object/from16 v9, p14

    move/from16 v10, p13

    move-object/from16 v11, p10

    move-object/from16 v12, p15

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    const/16 v16, 0x0

    move-object/from16 v15, p0

    move/from16 v17, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    move-object/from16 v21, p7

    invoke-direct/range {v15 .. v21}, Lcom/android/server/power/Notifier;->onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 293
    const/16 v16, 0x1

    move-object/from16 v15, p0

    move/from16 v17, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    move-object/from16 v21, p14

    invoke-direct/range {v15 .. v21}, Lcom/android/server/power/Notifier;->onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/Notifier;->mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    if-eqz v3, :cond_0

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/Notifier;->mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    move-object/from16 v0, p1

    move/from16 v1, p9

    move-object/from16 v2, p14

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/os/SelfHealingServiceInternal;->wakeLockChanged(Landroid/os/IBinder;ILandroid/os/WorkSource;)V

    .line 306
    .end local v14    # "unimportantForLogging":Z
    :cond_0
    :goto_2
    return-void

    .line 282
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    .line 303
    invoke-virtual/range {v15 .. v23}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    .restart local v14    # "unimportantForLogging":Z
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onWakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 16
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 320
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    .line 321
    .local v7, "monitorType":I
    if-ltz v7, :cond_0

    .line 323
    if-eqz p7, :cond_2

    .line 324
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v8 .. v14}, Lcom/android/server/power/Notifier;->onWakeLockForKnox(ZILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    if-eqz v2, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/Notifier;->mSelfHealingServiceInternal:Lcom/android/internal/os/SelfHealingServiceInternal;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/SelfHealingServiceInternal;->wakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V

    .line 347
    :cond_1
    return-void

    .line 327
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x28

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "opUid"    # I

    .prologue
    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 601
    if-eqz p3, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x3d

    invoke-interface {v0, v1, p4, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWakefulnessChangeFinished()V
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 449
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 451
    :cond_0
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .locals 4
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 385
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 392
    .local v0, "interactive":Z
    invoke-static {p2}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v1

    .line 397
    .local v1, "why":I
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;ZII)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 416
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq v2, v0, :cond_1

    .line 418
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v2, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 424
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 428
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 433
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    .line 434
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 435
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    .line 437
    :cond_1
    return-void

    .line 429
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onWirelessChargingStarted()V
    .locals 3

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 619
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 620
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 621
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    return-void
.end method