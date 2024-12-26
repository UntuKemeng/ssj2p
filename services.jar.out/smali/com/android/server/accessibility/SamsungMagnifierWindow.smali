.class public final Lcom/android/server/accessibility/SamsungMagnifierWindow;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MY_PID:I


# instance fields
.field private final ADD_BORDER_BOUNDAY_MOVE_SIZE:I

.field private final ADD_BORDER_BOUNDAY_SIZE:I

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mIsShowSamsungMagnifierWindow:Z

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->ADD_BORDER_BOUNDAY_SIZE:I

    .line 58
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->ADD_BORDER_BOUNDAY_MOVE_SIZE:I

    .line 747
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 758
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    .line 69
    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 70
    iput-object p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 71
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    .line 81
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_magnifier_size"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_value"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void

    .line 75
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged()V

    return-void
.end method

.method private configChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 342
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    .line 345
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    .line 351
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideMagnifier()V
    .locals 4

    .prologue
    .line 273
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideMagnifier() - mPolicy.getMagnificationSpec().offsetX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mPolicy.getMagnificationSpec().offsetY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "magnifier_offset_X"

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 275
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "magnifier_offset_Y"

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 278
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private moveWindow(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x0

    .line 239
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_0

    .line 240
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v9, v9}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 243
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v7

    sub-float v1, v6, v7

    .line 244
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedY()F

    move-result v7

    sub-float v2, v6, v7

    .line 246
    .local v2, "dy":F
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 247
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 248
    .local v5, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 249
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 250
    .local v3, "heigh":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 253
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    add-int/lit8 v7, v3, -0x1e

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    cmpl-float v6, v2, v8

    if-ltz v6, :cond_1

    .line 254
    const/high16 v2, 0x41200000    # 10.0f

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_2

    cmpg-float v6, v2, v8

    if-gtz v6, :cond_2

    .line 257
    const/high16 v2, -0x3ee00000    # -10.0f

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    add-int/lit8 v7, v4, -0x1e

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    cmpl-float v6, v1, v8

    if-ltz v6, :cond_3

    .line 260
    const/high16 v1, 0x41200000    # 10.0f

    .line 262
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_4

    cmpg-float v6, v1, v8

    if-gtz v6, :cond_4

    .line 263
    const/high16 v1, -0x3ee00000    # -10.0f

    .line 265
    :cond_4
    sget-object v6, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveWindow - dx2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / dy2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 268
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v7

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v8

    iget v8, v8, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    .line 269
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 271
    return-void
.end method

.method private sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 27
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v21, v0

    .line 194
    .local v21, "original_refer_x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v2

    move/from16 v22, v0

    .line 196
    .local v22, "original_refer_y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v25, v0

    .line 197
    .local v25, "window_refer_x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v2

    move/from16 v26, v0

    .line 199
    .local v26, "window_refer_y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getBorderSize()I

    move-result v2

    mul-int/lit8 v24, v2, 0x5

    .line 200
    .local v24, "touchArea_out_of_border":I
    move/from16 v0, v24

    int-to-float v2, v0

    add-float v25, v25, v2

    .line 201
    move/from16 v0, v24

    int-to-float v2, v0

    add-float v26, v26, v2

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()I

    move-result v2

    int-to-float v0, v2

    move/from16 v23, v0

    .line 204
    .local v23, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 205
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 206
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_0

    .line 207
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v19

    .line 208
    aget-object v2, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 209
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v19

    .line 210
    aget-object v2, v9, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 212
    aget-object v2, v9, v19

    aget-object v3, v9, v19

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v3, v3, v25

    div-float v3, v3, v23

    add-float v3, v3, v21

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 213
    aget-object v2, v9, v19

    aget-object v3, v9, v19

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v3, v3, v26

    div-float v3, v3, v23

    add-float v3, v3, v22

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 206
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sec_touchscreen2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v12, 0x1

    .line 217
    .local v12, "mDisplayId":I
    :goto_1
    sget-object v2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId of Injecting event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 224
    .local v20, "mEvent":Landroid/view/MotionEvent;
    const/high16 v2, 0x40000000    # 2.0f

    or-int p3, p3, v2

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-interface {v2, v0, v3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 230
    :cond_1
    sget-object v2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendComputedMotionEvent - mEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 216
    .end local v12    # "mDisplayId":I
    .end local v20    # "mEvent":Landroid/view/MotionEvent;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private setMagnificationSettings(Z)V
    .locals 18
    .param p1, "force"    # Z

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "hover_zoom_magnifier_size"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 293
    .local v10, "size":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "hover_zoom_value"

    const/4 v15, 0x1

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    add-int/lit8 v8, v13, 0x1

    .line 295
    .local v8, "scale":I
    sget-object v13, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMagnificationSettings: size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " scale="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setScale(I)Z

    move-result v9

    .line 298
    .local v9, "scaleChanged":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13, v10}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setWindowSize(I)Z

    move-result v11

    .line 299
    .local v11, "sizeChanged":Z
    if-nez v9, :cond_0

    if-nez v11, :cond_0

    if-eqz p1, :cond_3

    .line 300
    :cond_0
    const/high16 v6, -0x40800000    # -1.0f

    .line 301
    .local v6, "offSetX":F
    const/high16 v7, -0x40800000    # -1.0f

    .line 302
    .local v7, "offSetY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "magnifier_offset_X"

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "magnifier_offset_Y"

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v7

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "mobile_keyboard"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v4, 0x1

    .line 307
    .local v4, "isMobileKeyboardOn":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 308
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 309
    .local v5, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 310
    .local v12, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 311
    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 312
    .local v3, "heightPixels_without_MobileKeyboard":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float/2addr v13, v7

    int-to-float v14, v3

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v3, v13

    int-to-float v7, v13

    .line 316
    .end local v3    # "heightPixels_without_MobileKeyboard":I
    .end local v5    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v12    # "windowmanager":Landroid/view/WindowManager;
    :cond_1
    sget-object v13, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "offSetX = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / offSetY = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from DB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    float-to-double v14, v6

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v13, v14, v16

    if-eqz v13, :cond_2

    float-to-double v14, v7

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v13, v14, v16

    if-eqz v13, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v13

    iput v6, v13, Landroid/view/MagnificationSpec;->offsetX:F

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v13

    iput v7, v13, Landroid/view/MagnificationSpec;->offsetY:F

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    .line 323
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v14}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v15}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V

    .line 324
    sget-object v13, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMagnificationSettings: mPolicy.getMagnificationSpec().offsetX = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v15}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v15

    iget v15, v15, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mPolicy.getMagnificationSpec().offsetY ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v15}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v15

    iget v15, v15, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v14}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 326
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v4    # "isMobileKeyboardOn":Z
    .end local v6    # "offSetX":F
    .end local v7    # "offSetY":F
    :cond_3
    :goto_1
    return-void

    .line 306
    .restart local v6    # "offSetX":F
    .restart local v7    # "offSetY":F
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 327
    .restart local v4    # "isMobileKeyboardOn":Z
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopMagnifier()V
    .locals 5

    .prologue
    .line 285
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopMagnifier()"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, "uspLevel":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_button_onoff"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "finger_magnifier"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 290
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 171
    :cond_0
    return-void
.end method

.method public isShowWindow()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z

    return v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    .line 176
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 95
    .local v0, "action":I
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMotionEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    packed-switch v0, :pswitch_data_0

    .line 148
    :cond_0
    :pswitch_0
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: It is outside of Magnifier window"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 98
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v5, v4, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 99
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: isOnCloseBtn"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setCloseMode(Z)V

    .line 112
    :cond_2
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isCloseMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHandle(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnUpperSide(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLowerSide(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    :cond_4
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: For moving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    goto :goto_0

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindow(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    :cond_6
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 117
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 123
    :cond_8
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isCloseMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 124
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->stopMagnifier()V

    goto/16 :goto_0

    .line 128
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 129
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v5, v4, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    goto/16 :goto_0

    .line 131
    :cond_a
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 133
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 139
    :cond_b
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 164
    return-void
.end method
