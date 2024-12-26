.class public Lcom/android/server/SecExternalDisplayService;
.super Landroid/os/ISecExternalDisplayService$Stub;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayService$5;,
        Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;,
        Lcom/android/server/SecExternalDisplayService$EDSToast;,
        Lcom/android/server/SecExternalDisplayService$EDSBlank;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_ALIGNMENT:I = 0x50

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayService_Java"

.field private static bIsLogEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;


# instance fields
.field public CALL_CONNECT:Z

.field private bDreamsEnabledByDefaultConfig:Z

.field private bIsAlarmRecieved:Z

.field private bIsDayDreamEnabled:Z

.field private bIsHomeTheatreConnected:Z

.field private bPresentation:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogCheckBox:Landroid/widget/CheckBox;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDockSurfaceParameter:I

.field private final mMHLHandler:Landroid/os/Handler;

.field private mMHLObserver:Landroid/os/UEventObserver;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 87
    iput v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I

    .line 88
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    .line 90
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 99
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 101
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 194
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    .line 209
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 225
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 87
    iput v4, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I

    .line 88
    iput-boolean v4, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 89
    iput-boolean v4, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    .line 90
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    iput-boolean v4, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 99
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 101
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 194
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    .line 209
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    .line 227
    const-string/jumbo v0, "persist.sys.SecEDS.Logs"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    .line 228
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "SecExternalDisplayService +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sput-object p1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    .line 230
    new-instance v0, Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-direct {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;-><init>()V

    sput-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    .line 233
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 234
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->wm:Landroid/view/WindowManager;

    .line 236
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/mhl_event_switch"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V

    .line 240
    invoke-static {p0}, Lcom/android/server/SecExternalDisplayIntents;->StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 243
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_0
.end method

.method private SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nMode"    # I

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "wakelockHeld":Z
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 281
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_0

    .line 282
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "mWakeLock is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const/4 v1, 0x1

    .line 286
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 288
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 291
    :cond_2
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_3

    .line 292
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "SecExternalDisplayInitWakeMode is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_3
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 295
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-string v3, "SecExternalDisplayService_Java"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 297
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_4

    .line 298
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecExternalDisplayInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_4
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 302
    if-eqz v1, :cond_5

    .line 304
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 306
    :cond_5
    return-void
.end method

.method private SecExternalDisplaySetWakeLock(Z)V
    .locals 2
    .param p1, "bStatus"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 318
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_3

    .line 327
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 333
    :cond_4
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    .line 334
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/SecExternalDisplayService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/SecExternalDisplayService;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private checkSettingPermission()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 927
    sget-object v9, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 928
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 930
    .local v7, "uid":I
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, "packages":[Ljava/lang/String;
    if-nez v4, :cond_0

    .line 932
    const-string v9, "SecExternalDisplayService_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packages is null. uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_0
    return v8

    .line 935
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 936
    .local v5, "pkg":Ljava/lang/String;
    const-string v9, "com.enhance.gameservice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 937
    const-string v9, "android"

    invoke-virtual {v6, v9, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 938
    .local v3, "match":I
    if-nez v3, :cond_1

    .line 939
    const/4 v8, 0x1

    goto :goto_0

    .line 935
    .end local v3    # "match":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 943
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    const-string v9, "SecExternalDisplayService_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no permission. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public SecExternalDisplayAlertMsg(I)V
    .locals 11
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x1

    .line 873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 874
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "SecExternalDisplayService available only from system UID."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 876
    :cond_0
    const-string/jumbo v1, "persist.sys.SecEDS.Dialog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    :goto_0
    return-void

    .line 879
    :cond_1
    const/4 v10, 0x0

    .line 880
    .local v10, "strPopUp":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 889
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " Received Wrong value from kernel "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 883
    :pswitch_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040827

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 893
    :goto_1
    const/4 v6, 0x0

    .line 894
    .local v6, "isLightTheme":Z
    const-string/jumbo v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 895
    .local v9, "mThemeType":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string/jumbo v1, "white"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    const/4 v6, 0x1

    .line 898
    :cond_2
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightTheme => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    if-ne v6, v4, :cond_3

    const v7, 0x10302d2

    .line 901
    .local v7, "mAlertTheme":I
    :goto_2
    if-ne v6, v4, :cond_4

    const/high16 v8, -0x1000000

    .line 903
    .local v8, "mCheckBoxColor":I
    :goto_3
    new-instance v1, Landroid/widget/CheckBox;

    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    .line 904
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104091e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 905
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 906
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 907
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040826

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 908
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 909
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLeft()I

    move-result v2

    add-int/lit8 v2, v2, 0x50

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getBottom()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 910
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/SecExternalDisplayService$4;

    invoke-direct {v2, p0}, Lcom/android/server/SecExternalDisplayService$4;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 920
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 921
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 922
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 886
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "isLightTheme":Z
    .end local v7    # "mAlertTheme":I
    .end local v8    # "mCheckBoxColor":I
    .end local v9    # "mThemeType":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040829

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 887
    goto/16 :goto_1

    .line 900
    .restart local v6    # "isLightTheme":Z
    .restart local v9    # "mThemeType":Ljava/lang/String;
    :cond_3
    const v7, 0x10302d1

    goto/16 :goto_2

    .line 901
    .restart local v7    # "mAlertTheme":I
    :cond_4
    const/4 v8, -0x1

    goto/16 :goto_3

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public SecExternalDisplayBlankDisplay(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 688
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayBlankDisplay(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/SecExternalDisplayService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayCreateSurface available only from Game Service."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 670
    :cond_1
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/android/server/SecExternalDisplayService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayCreateSurface available only from Game Service."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 681
    :cond_1
    const/4 v0, 0x1

    .line 682
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplayGet3DMode()I
    .locals 2

    .prologue
    .line 647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 648
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGet3DMode()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetResolution()I
    .locals 2

    .prologue
    .line 628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 629
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetResolution()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 723
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayIsTablet()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 845
    iget-object v8, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v8, :cond_3

    .line 847
    iget-object v8, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 848
    .local v2, "mDisplay":[Landroid/view/Display;
    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/android/server/SecExternalDisplayService;->wm:Landroid/view/WindowManager;

    if-eqz v8, :cond_3

    .line 850
    iget-object v8, p0, Lcom/android/server/SecExternalDisplayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 851
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 852
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 853
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 854
    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 855
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 856
    .local v3, "orientation":I
    if-le v5, v1, :cond_0

    if-eqz v3, :cond_1

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1

    :cond_0
    if-ge v5, v1, :cond_2

    if-eq v3, v6, :cond_1

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    .line 862
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "mDisplay":[Landroid/view/Display;
    .end local v3    # "orientation":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return v6

    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "height":I
    .restart local v2    # "mDisplay":[Landroid/view/Display;
    .restart local v3    # "orientation":I
    .restart local v4    # "size":Landroid/graphics/Point;
    .restart local v5    # "width":I
    :cond_2
    move v6, v7

    .line 859
    goto :goto_0

    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "mDisplay":[Landroid/view/Display;
    .end local v3    # "orientation":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    :cond_3
    move v6, v7

    .line 862
    goto :goto_0
.end method

.method public SecExternalDisplayLEDDestroy()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDInit()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDOff()Z
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDRefresh()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDSetLoop(IIIII)Z
    .locals 1
    .param p1, "enable"    # I
    .param p2, "time"    # I
    .param p3, "count"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDSetScroll(IIIII)Z
    .locals 1
    .param p1, "enable"    # I
    .param p2, "time"    # I
    .param p3, "count"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDSetframe([BII)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "numOfFrames"    # I
    .param p3, "repeatCount"    # I

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .locals 2
    .param p1, "bStatus"    # Z

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .locals 2
    .param p1, "nS3DMode"    # I

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 657
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .locals 2
    .param p1, "transform"    # I

    .prologue
    .line 814
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 815
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .locals 2
    .param p1, "bEnable"    # Z

    .prologue
    .line 804
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 805
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 833
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 834
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 838
    :cond_1
    const/4 v0, 0x1

    .line 839
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .locals 2
    .param p1, "nOutputMode"    # I

    .prologue
    .line 637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 638
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .locals 2
    .param p1, "bStatus"    # Z

    .prologue
    .line 704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .locals 2
    .param p1, "nResolution"    # I

    .prologue
    .line 617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 618
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    if-nez p1, :cond_1

    .line 622
    const/4 v0, 0x1

    .line 623
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetResolution(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .locals 2
    .param p1, "param"    # I
    .param p2, "status"    # Z

    .prologue
    .line 713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 714
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayToast(I)V
    .locals 5
    .param p1, "nIndex"    # I

    .prologue
    .line 347
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_0

    .line 348
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SecExternalDisplayToast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 352
    .local v0, "strDefault":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v2

    if-nez v2, :cond_2

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    sget-object v2, Lcom/android/server/SecExternalDisplayService$5;->$SwitchMap$com$android$server$SecExternalDisplayService$EDSToast:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 372
    :goto_1
    if-eqz v0, :cond_1

    .line 374
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 375
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 376
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 358
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_0
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040825

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    goto :goto_1

    .line 363
    :pswitch_1
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040828

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    goto :goto_1

    .line 368
    :pswitch_2
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104082a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public SecExternalDisplayType(Z)Z
    .locals 2
    .param p1, "bIsTablet"    # Z

    .prologue
    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 824
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayType(Z)Z

    move-result v0

    return v0
.end method

.method public getCameraAppVersionNumber()F
    .locals 8

    .prologue
    .line 252
    const/4 v2, 0x0

    .line 253
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 255
    .local v4, "versionNumber":F
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 256
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 257
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 258
    .local v3, "versionName":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 260
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCameraAppVersionNumber. Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , versionNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "versionName":Ljava/lang/String;
    :goto_0
    return v4

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string v6, "com.sec.android.app.camera Package name not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getEDSContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleAlarm(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    .line 481
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Alarm : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    if-eqz p1, :cond_3

    .line 485
    iput-boolean v3, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 486
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    if-nez v0, :cond_2

    .line 488
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    .line 489
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 505
    :cond_2
    :goto_0
    return v3

    .line 496
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    if-nez v0, :cond_2

    .line 499
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_4

    .line 500
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_4
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    goto :goto_0
.end method

.method public handleHDMIConnection(Z)Z
    .locals 6
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 414
    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_0

    .line 415
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleHDMIConnection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    .line 417
    .local v0, "cable_status":Z
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    .line 419
    if-ne p1, v4, :cond_5

    .line 421
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 424
    :cond_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 427
    :cond_2
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    .line 435
    :goto_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 453
    :cond_3
    :goto_1
    return v4

    .line 431
    :cond_4
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " HDMI Connected : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_0

    .line 441
    :cond_5
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " HDMI DisConnected : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 444
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 447
    :cond_6
    if-ne v0, v4, :cond_3

    .line 449
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_1
.end method

.method public handlePresentation(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    .line 390
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handlePresentation Condition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    if-eqz p1, :cond_2

    .line 393
    iput-boolean v3, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    .line 397
    :goto_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 400
    if-eqz p1, :cond_3

    .line 401
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 405
    :cond_1
    :goto_1
    return-void

    .line 395
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    goto :goto_0

    .line 403
    :cond_3
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_1
.end method

.method public handleSmartDockConnection(I)Z
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 548
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleSmartDockConnection status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Intent.EXTRA_USB_HID_STATE_ATTACHED value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-ne v4, p1, :cond_5

    .line 551
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 553
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v4

    .line 556
    :cond_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    if-nez v1, :cond_2

    .line 559
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 571
    :cond_2
    :goto_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 572
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    .line 573
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_4

    .line 577
    new-instance v1, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v1, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 595
    :cond_4
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5
    if-nez p1, :cond_2

    .line 563
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 567
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_1

    .line 602
    :cond_6
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0
.end method

.method public handleVideo(Z)Z
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 514
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 515
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Video : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 517
    if-eqz p1, :cond_4

    .line 520
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 523
    :cond_1
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_2

    .line 526
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface during videoplay  !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 538
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 532
    :cond_4
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_5

    .line 534
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface after video is stopped!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_5
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_0
.end method

.method public handleWFDConnection(I)Z
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    .line 463
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllShare Cast Connected Status : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-ne p1, v3, :cond_0

    .line 466
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    .line 468
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    goto :goto_0
.end method
