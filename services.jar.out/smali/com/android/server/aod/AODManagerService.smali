.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$4;,
        Lcom/android/server/aod/AODManagerService$AODConnection;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$SettingsObserver;,
        Lcom/android/server/aod/AODManagerService$AODConnectionCause;
    }
.end annotation


# static fields
.field private static final AOD_CONNECTION_TIMEOUT:I = 0x1388

.field private static final AOD_DEBUG:Z = false

.field private static AOD_SHOW_STATE:Ljava/lang/String; = null

.field private static final CONFIG_DISABLE_TOUCH:Ljava/lang/String; = "-touch"

.field private static final SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

.field private final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field private mAODSettings:Lcom/android/server/aod/settings/AODSettings;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mEffectiveUserId:I

.field private mIsAODModeEnabled:Z

.field private mIsAODTouchDisabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mNewUserId:I

.field private mNotiCount:I

.field private mNotificationKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

.field private final mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

.field private mSupportAODFeatureVersion:I

.field private mUserSwitched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "aod_show_state"

    sput-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mSupportAODFeatureVersion:I

    .line 60
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    .line 62
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    .line 68
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 70
    iput-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 72
    iput-object v4, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    .line 74
    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    .line 76
    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    .line 80
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    .line 82
    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    .line 84
    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    .line 101
    new-instance v1, Lcom/android/server/aod/AODManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v1, Lcom/android/server/aod/AODManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$2;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    .line 127
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 128
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 129
    new-instance v1, Lcom/android/server/aod/settings/AODSettings;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/aod/settings/AODSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    .line 131
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    .line 133
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-touch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    .line 135
    new-instance v1, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    .line 136
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$SettingsObserver;->observe()V

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/aod/AODManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/aod/AODManagerService;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/aod/AODManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestNotificationKeysInternal()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/aod/AODManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/aod/AODManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/aod/AODManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/aod/AODManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V

    return-void
.end method

.method private checkCallerIsSystem()V
    .locals 3

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSystemUI()V
    .locals 3

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystemUI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    :cond_0
    return-void

    .line 715
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V
    .locals 7
    .param p1, "connectionCause"    # Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    .prologue
    const/4 v6, 0x0

    .line 441
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 445
    new-instance v2, Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/server/aod/AODManagerService$AODConnection;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 446
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.aod.AlwaysOnDisplayService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.aodservice"

    const-string v4, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const v4, 0x4000001

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "createAODConnection : bindServiceAsUser fail"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 466
    :goto_0
    return-void

    .line 457
    :cond_0
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "createAODConnection : bindServiceAsUser success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    .line 459
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind AODService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    iput-object v6, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    goto :goto_0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 739
    const-string v0, "AODMANAGER (dumpsys AODManagerService)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager.getCurrentUser()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAODTouchDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    if-eqz v0, :cond_0

    .line 745
    const-string v0, "   . . . Last UserSwitched : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "              mNewUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "              mEffectiveUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-eqz v0, :cond_1

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mConnecteded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mConnectedUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAODConnection mConnectionCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    :cond_1
    return-void
.end method

.method private isCallerSystem()Z
    .locals 1

    .prologue
    .line 684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isCallerSystemUI()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 688
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 690
    .local v2, "callingUid":I
    const/4 v5, -0x1

    .line 691
    .local v5, "sysUiUid":I
    const/4 v1, 0x0

    .line 692
    .local v1, "callingPkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 693
    .local v4, "isSystemUi":Z
    const/4 v0, -0x1

    .line 695
    .local v0, "callingAppId":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 701
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 702
    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    if-eqz v1, :cond_0

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 705
    const-string v7, "android.uid.systemui"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v0, v5, :cond_0

    const/4 v6, 0x1

    .line 707
    :cond_0
    :goto_0
    return v6

    .line 696
    :catch_0
    move-exception v3

    .line 697
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to resolve SystemUI\'s UID."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isUidSystem(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 679
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 680
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requestNotificationKeysInternal()V
    .locals 2

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 402
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    .line 403
    return-void
.end method

.method private updateAODTspRectInternal(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 222
    const/4 v2, 0x0

    .line 224
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 238
    :cond_0
    if-eqz v2, :cond_1

    .line 239
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 244
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 228
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_aod_rect,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "tspCommand":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    if-eqz v3, :cond_3

    .line 239
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v2, v3

    .line 242
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 241
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 243
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 232
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "tspCommand":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    if-eqz v2, :cond_1

    .line 239
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 241
    :catch_2
    move-exception v5

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 238
    if-eqz v2, :cond_1

    .line 239
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 241
    :catch_4
    move-exception v5

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 238
    :goto_3
    if-eqz v2, :cond_4

    .line 239
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 242
    :cond_4
    :goto_4
    throw v5

    .line 241
    .restart local v1    # "file":Ljava/io/File;
    :catch_5
    move-exception v5

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_6
    move-exception v6

    goto :goto_4

    .line 237
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 234
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_2

    .line 232
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private updateAODTspState(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 248
    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    if-eqz v5, :cond_1

    .line 249
    sget-object v5, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "skip -- AOD TSP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v2, 0x0

    .line 254
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 268
    :cond_2
    if-eqz v2, :cond_0

    .line 269
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v5

    goto :goto_0

    .line 258
    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aod_enable,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_5

    const-string v5, "1"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "tspCommand":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 261
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    if-eqz v3, :cond_4

    .line 269
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v2, v3

    .line 272
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 259
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local v4    # "tspCommand":Ljava/lang/String;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_5
    :try_start_5
    const-string v5, "0"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 271
    .restart local v4    # "tspCommand":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v2, v3

    .line 273
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 262
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "tspCommand":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 268
    if-eqz v2, :cond_0

    .line 269
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 271
    :catch_3
    move-exception v5

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 268
    if-eqz v2, :cond_0

    .line 269
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    .line 271
    :catch_5
    move-exception v5

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 268
    :goto_4
    if-eqz v2, :cond_6

    .line 269
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 272
    :cond_6
    :goto_5
    throw v5

    .line 271
    :catch_6
    move-exception v6

    goto :goto_5

    .line 267
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 264
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 262
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private updateNotificationKeysInternal(ILjava/util/List;)V
    .locals 6
    .param p1, "notiCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 408
    if-eqz p2, :cond_0

    .line 409
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    .line 411
    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 412
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 417
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_3

    .line 419
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 438
    .end local v0    # "aodServiceEnable":Z
    :cond_2
    :goto_0
    return-void

    .line 422
    .restart local v0    # "aodServiceEnable":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_4

    .line 424
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->updateNotificationKeys(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mAODConnection.mService.updateNotificationKeys"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 432
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 212
    :cond_0
    if-eqz v2, :cond_1

    .line 213
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 218
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 203
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_3
    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 205
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    if-eqz v3, :cond_3

    .line 213
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v2, v3

    .line 216
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 215
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 217
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 206
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    if-eqz v2, :cond_1

    .line 213
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 215
    :catch_2
    move-exception v4

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 212
    if-eqz v2, :cond_1

    .line 213
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 215
    :catch_4
    move-exception v4

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 212
    :goto_3
    if-eqz v2, :cond_4

    .line 213
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 216
    :cond_4
    :goto_4
    throw v4

    .line 215
    .restart local v1    # "file":Ljava/io/File;
    :catch_5
    move-exception v4

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_6
    move-exception v5

    goto :goto_4

    .line 211
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 208
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_2

    .line 206
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method getEffectiveUserId(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 726
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 727
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 729
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    .end local v0    # "callingIdentity":J
    :goto_0
    return p1

    .line 732
    :cond_0
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAODStateInternal()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 192
    .local v0, "aodState":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 176
    const/16 v3, 0x258

    if-ne p1, v3, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "aodIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "aodIntent":Landroid/content/Intent;
    .local v1, "aodIntent":Landroid/content/Intent;
    :try_start_1
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAodService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.aodservice"

    const-string v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .end local v1    # "aodIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "aodIntent":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "aodIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "aodIntent":Landroid/content/Intent;
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string v0, "AODManagerService"

    new-instance v1, Lcom/android/server/aod/AODManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 170
    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v1, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public startAODInternal()Z
    .locals 6

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 315
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 316
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_3

    .line 317
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_1

    .line 318
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 335
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 337
    :goto_1
    return v2

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_2

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->startAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAODInternal - mAODConnection.mService.startAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 329
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 337
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public stopAODInternal()Z
    .locals 6

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 344
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 345
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_3

    .line 346
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_1

    .line 347
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 364
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 366
    :goto_1
    return v2

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_2

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->stopAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopAODInternal - mAODConnection.mService.stopAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 358
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 366
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public stopConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 651
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_1

    .line 652
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "already stopped connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 656
    .local v1, "oldConnection":Lcom/android/server/aod/AODManagerService$AODConnection;
    iput-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 658
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    if-eqz v2, :cond_2

    .line 659
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 661
    :cond_2
    iget-object v2, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_3

    .line 663
    :try_start_0
    iget-object v2, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    :goto_1
    iput-object v4, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    .line 669
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    if-eqz v2, :cond_0

    .line 671
    :try_start_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public updateSettings()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 301
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 303
    :try_start_0
    const-string v2, "aod_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 304
    .local v0, "isAODModeEnabled":Z
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eq v2, v0, :cond_1

    .line 305
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 306
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsAODModeEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Z)V

    .line 309
    :cond_1
    monitor-exit v3

    .line 310
    return-void

    .line 309
    .end local v0    # "isAODModeEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public wakeUpInternal()Z
    .locals 6

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    .line 373
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 374
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_3

    .line 375
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_1

    .line 376
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 393
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 395
    :goto_1
    return v2

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_2

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->requestHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 395
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
