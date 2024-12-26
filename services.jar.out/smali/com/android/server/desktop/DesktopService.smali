.class public Lcom/android/server/desktop/DesktopService;
.super Lcom/samsung/android/desktop/IDesktop$Stub;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktop/DesktopService$LoadingScreen;,
        Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;,
        Lcom/android/server/desktop/DesktopService$PackageStateReceiver;
    }
.end annotation


# static fields
.field private static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field private static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_DIMISS_LOADING_SCREEN_MS:I = 0x1388

.field private static mDarkScreen:Lcom/android/server/desktop/DarkScreen;

.field private static mTurnOnBlackScreen:Z

.field private static mTurnOnLCD:Z


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/desktop/IDesktopStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDesktopDockObserver:Landroid/os/FileObserver;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mHasExternalDisplay:Z

.field private mIsBTKeyboardConnected:Z

.field private mIsBTMouseConnected:Z

.field private mIsDesktopDockConnected:Z

.field private mIsInstalledLauncher:Z

.field private mIsKnoxDesktopMode:Z

.field private mIsUSBKeyboardConnected:Z

.field private mIsUSBMouseConnected:Z

.field private mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

.field private final mLock:Ljava/lang/Object;

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSupportMultiDensityAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/server/desktop/DesktopService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/desktop/IDesktop$Stub;-><init>()V

    .line 50
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    .line 52
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    .line 53
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mSystemResources:Landroid/content/res/Resources;

    .line 54
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mDesktopDockObserver:Landroid/os/FileObserver;

    .line 55
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mPowerManager:Landroid/os/PowerManager;

    .line 56
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 58
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    .line 59
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    .line 60
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z

    .line 62
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    .line 63
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z

    .line 64
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    .line 65
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z

    .line 66
    iput-boolean v7, p0, Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z

    .line 68
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 69
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    .line 71
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 515
    new-instance v4, Lcom/android/server/desktop/DesktopService$2;

    invoke-direct {v4, p0}, Lcom/android/server/desktop/DesktopService$2;-><init>(Lcom/android/server/desktop/DesktopService;)V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 564
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 565
    iput-object v6, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    .line 82
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mSystemResources:Landroid/content/res/Resources;

    .line 85
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->initDesktopDockObserver()V

    .line 87
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->checkDesktopLauncher()V

    .line 90
    new-instance v3, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;-><init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V

    .line 91
    .local v3, "packageStateReceiver":Lcom/android/server/desktop/DesktopService$PackageStateReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v2, "filterPackage":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v0, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;

    invoke-direct {v0, p0, v6}, Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;-><init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V

    .line 100
    .local v0, "desktopModeStateReceiver":Lcom/android/server/desktop/DesktopService$DesktopModeStateReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v1, "filterDevice":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v4, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v4, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v4, "com.samsung.android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 108
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/server/desktop/DesktopService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 109
    const-class v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 110
    sput-boolean v7, Lcom/android/server/desktop/DesktopService;->mTurnOnLCD:Z

    .line 111
    sput-boolean v7, Lcom/android/server/desktop/DesktopService;->mTurnOnBlackScreen:Z

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/desktop/DesktopService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->updateExternalMonitorStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/desktop/DesktopService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/desktop/DesktopService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->setDesktopDockState(Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/desktop/DesktopService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/desktop/DesktopService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->stopLoadingScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z

    return p1
.end method

.method private applyMultiDensityAppList(Z)V
    .locals 9
    .param p1, "add"    # Z

    .prologue
    .line 489
    const/16 v0, 0xf0

    .line 491
    .local v0, "CUSTOM_DENSITY":I
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 492
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    .line 493
    const/4 v6, 0x0

    .line 499
    .local v6, "strings":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 500
    move-object v1, v6

    .local v1, "arr$":Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 501
    .local v5, "string":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "arr$":Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "string":Ljava/lang/String;
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 507
    .local v4, "processName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 508
    invoke-static {}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->getInstance()Lcom/samsung/android/multidensity/MultiDensityGlobal;

    move-result-object v7

    const/16 v8, 0xf0

    invoke-virtual {v7, v4, v8}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->setApplication(Ljava/lang/String;I)Z

    goto :goto_1

    .line 510
    :cond_1
    invoke-static {}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->getInstance()Lcom/samsung/android/multidensity/MultiDensityGlobal;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->removeApplication(Ljava/lang/String;)Z

    goto :goto_1

    .line 513
    .end local v4    # "processName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkDesktopLauncher()V
    .locals 4

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 236
    .local v1, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 237
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :try_start_1
    const-string v2, "com.sec.android.app.desktoplauncher"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 246
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private disableKnoxDesktopMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "android.intent.extra.KNOXDESKTOP_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 323
    invoke-virtual {p0, v3}, Lcom/android/server/desktop/DesktopService;->setKnoxDesktopMode(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method private enableKnoxDesktopMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 302
    invoke-virtual {p0}, Lcom/android/server/desktop/DesktopService;->isKnoxDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v1, "android.intent.extra.KNOXDESKTOP_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 312
    invoke-virtual {p0, v3}, Lcom/android/server/desktop/DesktopService;->setKnoxDesktopMode(Z)V

    goto :goto_0
.end method

.method private initDesktopDockObserver()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/android/server/desktop/DesktopService$1;

    const-string v1, "/dev/"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktop/DesktopService$1;-><init>(Lcom/android/server/desktop/DesktopService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktop/DesktopService;->mDesktopDockObserver:Landroid/os/FileObserver;

    .line 214
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mDesktopDockObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 215
    return-void
.end method

.method private isEmergencyMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 350
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 354
    :cond_1
    return v0
.end method

.method private isFactoryBinary()Z
    .locals 3

    .prologue
    .line 346
    const-string v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyDesktopDockState(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 253
    iget-object v5, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 254
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 255
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 257
    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/IDesktopStateCallback;

    .line 258
    .local v0, "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/IDesktopStateCallback;->onDesktopDockState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v0    # "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v1    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 263
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 264
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    return-void
.end method

.method private notifyKnoxDesktopModeState(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 268
    iget-object v5, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 269
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 270
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 272
    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/IDesktopStateCallback;

    .line 273
    .local v0, "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/IDesktopStateCallback;->onDesktopModeState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v0    # "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v1    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 278
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 279
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    return-void
.end method

.method private removeAllTasksToRelaunch()V
    .locals 3

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 483
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 484
    const/4 v1, -0x1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 486
    :cond_0
    return-void
.end method

.method private setDesktopDockState(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 218
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopState(), connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->notifyDesktopDockState(Z)V

    .line 222
    if-eqz p1, :cond_0

    .line 231
    :goto_0
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V

    .line 232
    return-void

    .line 225
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    .line 226
    iput-boolean v3, p0, Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z

    .line 227
    iput-boolean v3, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    .line 228
    iput-boolean v3, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z

    goto :goto_0
.end method

.method private showHeadsUpNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 549
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 552
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "err"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 560
    .local v0, "notificationBuilder":Landroid/app/Notification$Builder;
    const-class v2, Lcom/samsung/android/desktop/DesktopManager;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 561
    return-void

    .line 552
    :array_0
    .array-data 8
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private stopLoadingScreen()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    invoke-virtual {v0}, Lcom/android/server/desktop/DesktopService$LoadingScreen;->dismiss()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    .line 621
    :cond_0
    return-void
.end method

.method private updateExternalMonitorStatus()V
    .locals 8

    .prologue
    .line 532
    iget-object v6, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    .line 533
    .local v5, "mDisplays":[Landroid/view/Display;
    const/4 v2, 0x0

    .line 535
    .local v2, "isExternalDisplayConnected":Z
    move-object v0, v5

    .local v0, "arr$":[Landroid/view/Display;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 536
    .local v4, "mDisplay":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 538
    :cond_0
    const/4 v2, 0x1

    .line 535
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v4    # "mDisplay":Landroid/view/Display;
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z

    .line 543
    return-void
.end method

.method private updateKnoxDesktopModeState()V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/server/desktop/DesktopService;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    if-eqz v0, :cond_2

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->enableKnoxDesktopMode()V

    .line 299
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v0, "DesktopLauncher is not installed"

    const-string v1, "Please install DesktopLauncher"

    invoke-direct {p0, v0, v1}, Lcom/android/server/desktop/DesktopService;->showHeadsUpNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->disableKnoxDesktopMode()V

    goto :goto_0

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->disableKnoxDesktopMode()V

    goto :goto_0
.end method


# virtual methods
.method public isDesktopDockConnected()Z
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/android/server/desktop/DesktopNative;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    .line 122
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDesktopDockConnected(), really connected is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isInstalledDesktopLauncher()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    return v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z

    return v0
.end method

.method public readDataFromDock()B
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/android/server/desktop/DesktopNative;->readDevice()B

    move-result v0

    return v0
.end method

.method public registerStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/desktop/IDesktopStateCallback;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 148
    monitor-exit v2

    .line 149
    return v0

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setKnoxDesktopMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKnoxDesktopMode(), enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz p1, :cond_0

    .line 331
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/desktop/DesktopService;->turnOnMainLCD(Z)V

    .line 334
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z

    .line 336
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "knox_desktop_mode"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->removeAllTasksToRelaunch()V

    .line 340
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->applyMultiDensityAppList(Z)V

    .line 342
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->notifyKnoxDesktopModeState(Z)V

    .line 343
    return-void

    :cond_1
    move v0, v2

    .line 331
    goto :goto_0

    :cond_2
    move v1, v2

    .line 336
    goto :goto_1
.end method

.method public startLoadingScreen()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 585
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mMediaRouter:Landroid/media/MediaRouter;

    if-nez v3, :cond_0

    .line 586
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "media_router"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter;

    iput-object v3, p0, Lcom/android/server/desktop/DesktopService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 589
    :cond_0
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v3}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 590
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 593
    .local v1, "presentationDisplay":Landroid/view/Display;
    :goto_0
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    invoke-virtual {v3}, Lcom/android/server/desktop/DesktopService$LoadingScreen;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-eq v3, v1, :cond_1

    .line 594
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    invoke-virtual {v3}, Lcom/android/server/desktop/DesktopService$LoadingScreen;->dismiss()V

    .line 595
    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 601
    :try_start_0
    new-instance v3, Lcom/android/server/desktop/DesktopService$LoadingScreen;

    iget-object v5, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5, v1}, Lcom/android/server/desktop/DesktopService$LoadingScreen;-><init>(Lcom/android/server/desktop/DesktopService;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v3, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    .line 602
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    invoke-virtual {v3}, Lcom/android/server/desktop/DesktopService$LoadingScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 603
    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    invoke-virtual {v3}, Lcom/android/server/desktop/DesktopService$LoadingScreen;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :cond_2
    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/server/desktop/DesktopService$3;

    invoke-direct {v4, p0}, Lcom/android/server/desktop/DesktopService$3;-><init>(Lcom/android/server/desktop/DesktopService;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    return-void

    .end local v1    # "presentationDisplay":Landroid/view/Display;
    :cond_3
    move-object v1, v4

    .line 590
    goto :goto_0

    .line 604
    .restart local v1    # "presentationDisplay":Landroid/view/Display;
    :catch_0
    move-exception v0

    .line 605
    .local v0, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mLoadingScreen:Lcom/android/server/desktop/DesktopService$LoadingScreen;

    .line 606
    invoke-virtual {v0}, Landroid/view/WindowManager$InvalidDisplayException;->printStackTrace()V

    goto :goto_1
.end method

.method public turnOnMainLCD(Z)V
    .locals 5
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v4, 0x1

    .line 163
    sget-object v1, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOnMainLCD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v1, "persist.kdm.setLcd"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, "lcdTestMode":I
    if-ne v0, v4, :cond_3

    .line 171
    sget-object v1, Lcom/android/server/desktop/DesktopService;->mDarkScreen:Lcom/android/server/desktop/DarkScreen;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/android/server/desktop/DarkScreen;

    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/desktop/DarkScreen;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/desktop/DesktopService;->mDarkScreen:Lcom/android/server/desktop/DarkScreen;

    .line 173
    sget-object v1, Lcom/android/server/desktop/DesktopService;->mDarkScreen:Lcom/android/server/desktop/DarkScreen;

    invoke-virtual {v1, v4}, Lcom/android/server/desktop/DarkScreen;->setEnable(Z)V

    .line 176
    :cond_0
    if-eqz p1, :cond_2

    .line 177
    sget-object v1, Lcom/android/server/desktop/DesktopService;->mDarkScreen:Lcom/android/server/desktop/DarkScreen;

    invoke-virtual {v1}, Lcom/android/server/desktop/DarkScreen;->hideDarkScreen()V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    sget-object v1, Lcom/android/server/desktop/DesktopService;->mDarkScreen:Lcom/android/server/desktop/DarkScreen;

    invoke-virtual {v1}, Lcom/android/server/desktop/DarkScreen;->showDarkScreen()V

    goto :goto_0

    .line 181
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->setForceLCD(Z)V

    goto :goto_0
.end method

.method public unregisterStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/desktop/IDesktopStateCallback;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 157
    monitor-exit v2

    .line 158
    return v0

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeDataToDock(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    invoke-static {p1}, Lcom/android/server/desktop/DesktopNative;->writeDevice(I)Z

    move-result v0

    return v0
.end method
