.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"

# interfaces
.implements Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$CoverShapeThread;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    }
.end annotation


# static fields
.field static final COVER_ABSENT:I = -0x1

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_CLOSED:I = 0x0

.field static final COVER_DETACH:I = 0x0

.field static final COVER_OPEN:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DEFAULT_COVER_ATTACH_DELAY:I = 0x2710

.field private static final DEFAULT_COVER_SWITCH_ATTACH_DELAY:I = 0x1f4

.field private static final MESSAGE_ATTACH_DEFAULT_COVER:I = 0x12d

.field private static final MESSAGE_SCREEN_SIZE_UPDATE:I = 0x12c

.field static final MOBILE_KEYBOARD_KOR:I = 0x9

.field static final MOBILE_KEYBOARD_US:I = 0xa

.field private static final SAFE_DEBUG:Z = true

.field private static final SCREEN_UPDATE_DELAY:I = 0x1388

.field private static final SERVICE_VERSION:I = 0x1070000

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static final TRANSMIT_POWER_DEFAULT:I = 0x0

.field private static final TRANSMIT_POWER_HALLIC_LED:I = 0x4000

.field private static final TRANSMIT_POWER_HALLIC_REST:I = 0x1000

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f


# instance fields
.field private mAnimationStartCallback:Ljava/lang/Runnable;

.field private mCalledByTestModule:Z

.field private mContext:Landroid/content/Context;

.field private final mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

.field private final mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

.field private final mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverStateLock:Ljava/lang/Object;

.field private final mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

.field private final mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private mLedCoverController:Lcom/android/server/cover/LedCoverController;

.field private mNeedBackOffRequest:Z

.field private mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

.field private mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProximityListenerRegistered:Z

.field private mProximityPositive:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

.field private final mStateNotifier:Lcom/android/server/cover/StateNotifier;

.field private mSystemReady:Z

.field private final mThread:Landroid/os/HandlerThread;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    .line 105
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mProximityPositive:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mProximityListenerRegistered:Z

    .line 133
    new-instance v0, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mAnimationStartCallback:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Lcom/android/server/cover/CoverManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$2;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 158
    new-instance v0, Lcom/android/server/cover/CoverManagerService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$3;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 170
    new-instance v0, Lcom/android/server/cover/CoverManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$4;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 186
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 189
    iput-object p3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 190
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 195
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    .line 196
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    .line 198
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$5;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 207
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 208
    new-instance v0, Lcom/android/server/cover/CoverVerifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    .line 209
    new-instance v0, Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    .line 210
    new-instance v0, Lcom/android/server/cover/CoverDisabler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    .line 211
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    .line 212
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    .line 213
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    .line 214
    invoke-static {}, Lcom/android/server/cover/CoverManagerWhiteLists;->getInstance()Lcom/android/server/cover/CoverManagerWhiteLists;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    .line 215
    new-instance v0, Lcom/android/server/cover/CoverHideAnimator;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverHideAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    .line 216
    new-instance v0, Lcom/android/server/cover/CoverTestModeUtils;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    .line 218
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 219
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 220
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximityThreshold:F

    .line 224
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverHideAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/StateNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/cover/CoverManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cover/CoverManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/cover/CoverManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/cover/CoverManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->updateCoverWindowSize()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->attachDefaultCover()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/CoverManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mAnimationStartCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private attachDefaultCover()V
    .locals 4

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->getDefaultAttachedCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 705
    .local v0, "defaultState":Lcom/samsung/android/cover/CoverState;
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach default cover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/server/cover/CoverManagerService;->notifySmartCoverAttachStateChangedInternal(JZLcom/samsung/android/cover/CoverState;)V

    .line 707
    return-void
.end method

.method private checkNeedThread([BII)Z
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1056
    const-string v1, "CoverManager"

    const-string v2, "checkNeedThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 1059
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1062
    :goto_1
    return v1

    .line 1058
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCoverState(Z)Lcom/samsung/android/cover/CoverState;
    .locals 4
    .param p1, "needCheckUid"    # Z

    .prologue
    .line 851
    if-eqz p1, :cond_0

    .line 852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    const-string v0, "CoverManager"

    const-string/jumbo v1, "getCoverState : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v0, 0x0

    .line 860
    :goto_0
    return-object v0

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit v1

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isThemeCover(Ljava/lang/String;)Z
    .locals 3
    .param p1, "coverUri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 729
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_0

    .line 731
    const-string v0, "CoverManager"

    const-string/jumbo v1, "isThemeCover : it is theme cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x1

    .line 735
    :cond_0
    return v0
.end method

.method private needToBoost()Z
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v1, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 413
    .local v0, "needToBoost":Z
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 418
    :pswitch_1
    const/4 v0, 0x1

    .line 419
    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifySmartCoverAttachStateChangedInternal(JZLcom/samsung/android/cover/CoverState;)V
    .locals 14
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 649
    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 651
    const-string v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : Returning!! not system ready yet!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    if-nez v3, :cond_2

    .line 658
    const-string v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : Returning!! Now is the test mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 665
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 669
    :cond_3
    const-string v3, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySmartCoverAttachStateChanged : attach = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v2, 0x0

    .line 673
    .local v2, "smartCoverState":Lcom/samsung/android/cover/CoverState;
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_6

    if-eqz p4, :cond_4

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_6

    .line 678
    :cond_4
    const-string v12, "1com.samsung.android.sdk.cover.hellocover"

    .line 679
    .local v12, "appUri":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v9, v3, [B

    fill-array-data v9, :array_0

    .line 680
    .local v9, "appData":[B
    const-string v13, "##########"

    .line 681
    .local v13, "serialNumber":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/cover/CoverState;

    .end local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "1com.samsung.android.sdk.cover.hellocover"

    const-string v10, "##########"

    const/4 v11, 0x0

    move/from16 v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V

    .line 684
    .restart local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    const-string v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : make smartCovrerState for test"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v3, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 691
    .end local v9    # "appData":[B
    .end local v12    # "appUri":Ljava/lang/String;
    .end local v13    # "serialNumber":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v3, v3, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverManagerService;->isThemeCover(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 694
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v3, :cond_7

    .line 695
    new-instance v3, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    goto/16 :goto_0

    .line 681
    .end local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    .restart local v9    # "appData":[B
    .restart local v12    # "appUri":Ljava/lang/String;
    .restart local v13    # "serialNumber":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 688
    .end local v9    # "appData":[B
    .end local v12    # "appUri":Ljava/lang/String;
    .end local v13    # "serialNumber":Ljava/lang/String;
    .restart local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    :cond_6
    const/4 v3, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    goto :goto_2

    .line 697
    :cond_7
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v4, v4, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Lcom/android/server/cover/SmartCoverAppController;->smartCoverAttachStateChanged(ZLjava/lang/String;)V

    .line 698
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v4, v4, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    goto/16 :goto_0

    .line 679
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method private readTouchChannelCount()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "point":Landroid/graphics/Point;
    const-string/jumbo v3, "get_x_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v1

    .line 1021
    .local v1, "x":I
    const-string/jumbo v3, "get_y_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v2

    .line 1026
    .local v2, "y":I
    if-le v1, v2, :cond_0

    .line 1027
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1031
    .restart local v0    # "point":Landroid/graphics/Point;
    :goto_0
    return-object v0

    .line 1029
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .restart local v0    # "point":Landroid/graphics/Point;
    goto :goto_0
.end method

.method private registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "needCheckUid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p4, :cond_0

    .line 316
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "CoverManager"

    const-string/jumbo v1, "registerListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    goto :goto_0
.end method

.method private sendBackoffRequest(IZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 493
    const-string v3, "CoverManager"

    const-string/jumbo v4, "sendBackoffRequest"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 495
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 496
    const-string v3, "CoverManager"

    const-string v4, "Can\'t get telephony service, skip backoff()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 500
    :cond_0
    const-string/jumbo v3, "ril.backoffstate"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 502
    .local v0, "backoffState":I
    if-eqz p2, :cond_1

    .line 503
    or-int/2addr v0, p1

    .line 509
    :goto_1
    :try_start_0
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CoverManager"

    const-string v4, "Remove exception is occurred during setTransmitPower"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v0, v3

    goto :goto_1
.end method

.method private sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 7
    .param p1, "isBoot"    # Z
    .param p2, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 783
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    .line 784
    .local v0, "coverAttached":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 788
    .local v1, "coverSwitchState":Z
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    const/4 v1, 0x1

    .line 794
    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 796
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v4, :cond_3

    .line 798
    const-string v2, "CoverManager"

    const-string/jumbo v3, "sendCoverAttachStateLocked : CoverState is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_1
    return-void

    .end local v1    # "coverSwitchState":Z
    :cond_1
    move v1, v3

    .line 784
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 804
    .restart local v1    # "coverSwitchState":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isMobileKeyboardFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 806
    :cond_4
    const/4 v1, 0x1

    .line 807
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 810
    :cond_5
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    .line 811
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 812
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isSupportGraceNfcLedConcept()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 813
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v4, :cond_6

    .line 814
    new-instance v4, Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    .line 823
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 832
    :cond_7
    :goto_3
    if-eqz v0, :cond_c

    .line 833
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    .line 835
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 836
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 838
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    .line 845
    :goto_4
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coverSwitchState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 818
    :cond_9
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v4, :cond_6

    .line 819
    new-instance v4, Lcom/android/server/cover/NfcLedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_2

    .line 825
    :cond_a
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-nez v4, :cond_b

    .line 826
    new-instance v4, Lcom/android/server/cover/LedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/cover/LedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    .line 828
    :cond_b
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/cover/LedCoverController;->updateLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_3

    .line 840
    :cond_c
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 841
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    goto :goto_4
.end method

.method private sendCoverSwitchStateLocked(ZZ)Z
    .locals 2
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v0

    return v0
.end method

.method private sendCoverSwitchStateLocked(ZZZZ)Z
    .locals 5
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "force"    # Z
    .param p4, "playHideAnimation"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 521
    if-nez p3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-ne p1, v3, :cond_0

    .line 523
    const-string v2, "CoverManager"

    const-string/jumbo v3, "updateCoverSwitchState : Returning switch state - it is same"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_0
    return v1

    .line 528
    :cond_0
    if-nez p3, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/StateNotifier;->checkSystemFeatureForCoverType(Lcom/samsung/android/cover/CoverState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 530
    const-string v2, "CoverManager"

    const-string/jumbo v3, "updateCoverSwitchState : Returning switch state - device does not support this type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    .line 537
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverHideAnimator;->cancelHideAnimation()V

    .line 539
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-ne v1, v2, :cond_3

    .line 541
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 543
    .local v0, "isScreenOn":Z
    if-ne v0, v2, :cond_2

    .line 546
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v3, Lcom/android/server/cover/CoverManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerService$7;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 575
    .end local v0    # "isScreenOn":Z
    :goto_1
    const-string v1, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v4, v4, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", widthPixel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", heightPixel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 581
    goto/16 :goto_0

    .line 554
    .restart local v0    # "isScreenOn":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/StateNotifier;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 555
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 556
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    goto :goto_1

    .line 558
    .end local v0    # "isScreenOn":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    if-nez v1, :cond_4

    .line 559
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 560
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 561
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/StateNotifier;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 564
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 566
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v3, Lcom/android/server/cover/CoverManagerService$8;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerService$8;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method private sendTouchRegion([BII)V
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1035
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    if-nez p1, :cond_0

    .line 1038
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : coverShape is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_0
    return-void

    .line 1042
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1043
    :cond_1
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : width is 0 or height is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1047
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->checkNeedThread([BII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1048
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;-><init>(Lcom/android/server/cover/CoverManagerService;[BII)V

    .line 1049
    .local v0, "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->start()V

    goto :goto_0

    .line 1051
    .end local v0    # "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    :cond_3
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : we don\'t need to start thread because there is no valid value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterCallback(Landroid/os/IBinder;Z)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "needCheckUid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p2, :cond_0

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const-string v0, "CoverManager"

    const-string/jumbo v1, "unregisterCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateCoverAttachState(ZZ)V
    .locals 1
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 759
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 760
    return-void
.end method

.method private updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverAttachState : attach="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isBoot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-nez p2, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverAttachedLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    invoke-direct {p0, p2, p3}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 779
    :goto_0
    monitor-exit v1

    .line 780
    return-void

    .line 776
    :cond_1
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerfiedState : Returning attach state - it is same"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateCoverSwitchState(ZZ)V
    .locals 8
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 427
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 429
    :try_start_0
    const-string v5, "CoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverSwitchState : switchState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isBoot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-nez p2, :cond_1

    if-eq p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->needToBoost()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 434
    :cond_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 437
    :cond_1
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 439
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v5}, Lcom/android/server/cover/CoverVerifier;->isCoverVerified()Z

    move-result v0

    .line 440
    .local v0, "isDetected":Z
    const-string v5, "CoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SmartCover]updateCoverSwitchState : switchState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isBoot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDetected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v0    # "isDetected":Z
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v5}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v5

    if-nez v5, :cond_6

    .line 454
    const-string v5, "CoverManager"

    const-string/jumbo v6, "updateCoverSwitchState : Returning switch state - cover is not attached"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v5, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 457
    monitor-exit v4

    .line 490
    :goto_2
    return-void

    .line 443
    :cond_3
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportDetectCover()Z

    move-result v5

    if-nez v5, :cond_2

    .line 444
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v5}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverVerifiedLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 445
    const/4 v5, 0x0

    invoke-direct {p0, p2, v5}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 447
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 456
    goto :goto_1

    .line 460
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)Z

    move-result v1

    .line 462
    .local v1, "isSwitchStateUpdated":Z
    if-ne p1, v2, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 463
    const-string v3, "CoverManager"

    const-string v5, "cover opened wake up"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x6

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 467
    :cond_7
    if-nez p1, :cond_8

    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    if-ne v3, v2, :cond_8

    .line 468
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_9

    .line 469
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 489
    :cond_8
    :goto_3
    :pswitch_0
    monitor-exit v4

    goto :goto_2

    .line 475
    :pswitch_1
    const/16 v2, 0x1000

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendBackoffRequest(IZ)V

    .line 476
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    goto :goto_3

    .line 479
    :pswitch_2
    const/16 v2, 0x4000

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendBackoffRequest(IZ)V

    .line 480
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    goto :goto_3

    .line 486
    :cond_9
    const-string v2, "CoverManager"

    const-string v3, "CoverState is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .locals 1
    .param p1, "switchState"    # Z

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 934
    return-void
.end method

.method private updateCoverWindowSize()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverVerifier;->initializeDefaultCoverState()V

    .line 383
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 396
    :pswitch_0
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: no need to update cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    monitor-exit v1

    .line 405
    return-void

    .line 390
    :pswitch_1
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: updating cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v2}, Lcom/android/server/cover/CoverVerifier;->updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 401
    :cond_0
    :try_start_1
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverWindowSize: mCoverState is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1301
    const-string v0, "CoverManager"

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    const-string v0, "CoverManager"

    const-string v1, "addLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 948
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 949
    const-string v2, "CoverManager"

    const-string/jumbo v3, "getCoverState : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 955
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    .line 956
    .local v1, "disabled":Z
    if-eqz v1, :cond_3

    .line 959
    .local v0, "coverSwitchState":Z
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 960
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)Z

    .line 961
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 956
    .end local v0    # "coverSwitchState":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1338
    const-string v1, "CoverManager"

    const-string v2, "disableLcdOffByCover : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v0, 0x0

    .line 1348
    :cond_0
    :goto_0
    return v0

    .line 1342
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cover/StateNotifier;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    .line 1344
    .local v0, "lcdOffByCoverDisabled":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 1346
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    :goto_0
    return-void

    .line 1399
    :cond_0
    const-string v0, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    const-string v0, " Current Cover state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1403
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1406
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    .line 1414
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1416
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverTestModeUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 1406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    const-string v0, "CoverManager"

    const-string v1, "enableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v0, 0x0

    .line 1363
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method getCoverAttachStateFromInputManager()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 891
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x1a

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 893
    .local v1, "sw":I
    if-lez v1, :cond_1

    .line 894
    const/4 v2, 0x1

    .line 902
    .end local v1    # "sw":I
    :cond_0
    :goto_0
    return v2

    .line 895
    .restart local v1    # "sw":I
    :cond_1
    if-nez v1, :cond_0

    .line 896
    const/4 v2, 0x0

    goto :goto_0

    .line 900
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CoverManager"

    const-string/jumbo v4, "getSwitchStateOfCoveAttach(). Can\'t get cover attach state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .prologue
    .line 1231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->getCoverState(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 4

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerService;->getCoverState(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 1193
    :goto_0
    return-object v1

    .line 1191
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "getCoverStateForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCoverStateForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCoverSwitchStateFromInputManager()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 870
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x15

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 872
    .local v1, "sw":I
    if-lez v1, :cond_1

    .line 873
    const/4 v2, 0x1

    .line 881
    .end local v1    # "sw":I
    :cond_0
    :goto_0
    return v2

    .line 874
    .restart local v1    # "sw":I
    :cond_1
    if-nez v1, :cond_0

    .line 875
    const/4 v2, 0x0

    goto :goto_0

    .line 879
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CoverManager"

    const-string/jumbo v4, "getSwitchStateOfCover(). Can\'t get cover state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getNfcCoverAttachStateFromInputManager()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 912
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x1b

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 914
    .local v1, "sw":I
    if-lez v1, :cond_1

    .line 915
    const/4 v2, 0x1

    .line 923
    .end local v1    # "sw":I
    :cond_0
    :goto_0
    return v2

    .line 916
    .restart local v1    # "sw":I
    :cond_1
    if-nez v1, :cond_0

    .line 917
    const/4 v2, 0x0

    goto :goto_0

    .line 921
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CoverManager"

    const-string/jumbo v4, "getNfcCoverAttachStateFromInputManager(). Can\'t get cover attach state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 929
    const/high16 v0, 0x1070000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 2

    .prologue
    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 939
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z

    .prologue
    const/4 v2, 0x0

    .line 586
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 588
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverAttachStateChanged : Returning!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    if-nez v0, :cond_1

    .line 595
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverAttachStateChanged : Returning!! Now is the test mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 602
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 610
    :cond_3
    invoke-direct {p0, p3, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    goto :goto_0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "switchState"    # Z

    .prologue
    const/16 v4, 0x12d

    .line 340
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 342
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : Returning!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 348
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : Returning! Cover manager disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    const-string v0, "CoverManager"

    const-string v1, "Block cover event because it is Factory app running."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportDefaultDetachedCover()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->removeMessages(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->unRegisterProximityListener()V

    .line 367
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getNfcCoverAttachStateFromInputManager()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 368
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->registerProximityListener()V

    .line 369
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    goto :goto_0
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/16 v3, 0x12d

    const/4 v5, 0x0

    .line 616
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportDefaultDetachedCover()Z

    move-result v1

    .line 617
    .local v1, "supportDefaultDetachedCover":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->removeMessages(I)V

    .line 619
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->unRegisterProximityListener()V

    .line 621
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    if-eqz v2, :cond_1

    .line 622
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->getDefaultAttachedCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 623
    .local v0, "defaultState":Lcom/samsung/android/cover/CoverState;
    iput-boolean v5, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 624
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detach default cover: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz p3, :cond_2

    .line 627
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-direct {p0, v2, v3, v5, v0}, Lcom/android/server/cover/CoverManagerService;->notifySmartCoverAttachStateChangedInternal(JZLcom/samsung/android/cover/CoverState;)V

    .line 633
    .end local v0    # "defaultState":Lcom/samsung/android/cover/CoverState;
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cover/CoverManagerService;->notifySmartCoverAttachStateChangedInternal(JZLcom/samsung/android/cover/CoverState;)V

    .line 634
    return-void

    .line 630
    .restart local v0    # "defaultState":Lcom/samsung/android/cover/CoverState;
    :cond_2
    move-object p4, v0

    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 1008
    const-string v0, "CoverManager"

    const-string/jumbo v1, "onCoverAppCovered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1012
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->onCoverAppCovered(Z)I

    move-result v0

    return v0
.end method

.method public onLcdOffByCoverEnabled()V
    .locals 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 1370
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1372
    :cond_0
    return-void
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1198
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->readTouchChannelCount()Landroid/graphics/Point;

    move-result-object v1

    .line 1204
    :goto_0
    return-object v1

    .line 1202
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "readTouchChannelCountForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readTouchChannelCountForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 311
    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 1222
    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 1172
    :goto_0
    return-void

    .line 1169
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "registerListenerCallbackForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallbackForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    const-string v0, "CoverManager"

    const-string/jumbo v1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public registerProximityListener()V
    .locals 4

    .prologue
    .line 710
    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProximityListener mProximityListenerRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mProximityListenerRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximityListenerRegistered:Z

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximityListenerRegistered:Z

    .line 717
    :cond_0
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1317
    const-string v0, "CoverManager"

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1320
    const-string v0, "CoverManager"

    const-string/jumbo v1, "removeLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendDataToCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 968
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    const-string v0, "CoverManager"

    const-string/jumbo v1, "sendDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    goto :goto_0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1272
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1273
    const-string v0, "CoverManager"

    const-string/jumbo v1, "sendStateDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    .line 1279
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_0

    .line 1282
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportGraceNfcLedConcept()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1284
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_3

    .line 1285
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    .line 1294
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_0

    .line 1289
    :cond_4
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_3

    .line 1290
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_1
.end method

.method public sendPowerKeyToCover()V
    .locals 3

    .prologue
    .line 981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 982
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/LedCoverController;->sendPowerKeyToCover()V

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_3

    .line 990
    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPowerKeyToCover mCoverState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCoverUIBinderAlive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v2}, Lcom/android/server/cover/BaseNfcLedCoverController;->isCoverUIBinderAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/BaseNfcLedCoverController;->isCoverUIBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_2

    .line 997
    const-string v0, "CoverManager"

    const-string/jumbo v1, "sendPowerKeyToCover no CoverUI systemEvent listeners, probably CoverUI not created yet send dummy switchstate to wake it up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/StateNotifier;->updateSViewCoverServiceLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 1001
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    .line 1003
    :cond_3
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1380
    const-string v0, "CoverManager"

    const-string/jumbo v1, "sendSystemEvent : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 4
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->sendTouchRegion([BII)V

    .line 1216
    :goto_0
    return-void

    .line 1213
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "sendTouchRegionForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTouchRegionForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCoverPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 740
    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverPackage : package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 743
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v0, :cond_2

    .line 750
    new-instance v0, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    .line 756
    :cond_1
    :goto_0
    return-void

    .line 752
    :cond_2
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/server/cover/SmartCoverAppController;->startCoverService(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 228
    const-string v5, "CoverManager"

    const-string/jumbo v6, "systemReady!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    .line 232
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 233
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v5, Lcom/android/server/cover/CoverManagerService$6;

    invoke-direct {v5, p0}, Lcom/android/server/cover/CoverManagerService$6;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.cover.sview"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_size_forced"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 273
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_density_forced"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 277
    :cond_1
    return-void

    .line 240
    :cond_2
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 242
    const-string v5, "CoverManager"

    const-string v6, "Nfc authentication supported, skipping creating first coverState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportDefaultDetachedCover()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    const-string v5, "CoverManager"

    const-string v6, "Create default detached cover state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 246
    .local v0, "coverClosed":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getNfcCoverAttachStateFromInputManager()I

    move-result v5

    if-ne v5, v3, :cond_4

    move v2, v3

    .line 247
    .local v2, "otherCoverAttached":Z
    :goto_2
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 248
    const-string v4, "CoverManager"

    const-string v5, "Swithce state is CLosed, Schedule create default detached cover state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->registerProximityListener()V

    .line 250
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    const/16 v5, 0x12d

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v0    # "coverClosed":Z
    .end local v2    # "otherCoverAttached":Z
    :cond_3
    move v0, v4

    .line 245
    goto :goto_1

    .restart local v0    # "coverClosed":Z
    :cond_4
    move v2, v4

    .line 246
    goto :goto_2

    .line 254
    .end local v0    # "coverClosed":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverAttachStateFromInputManager()I

    move-result v5

    if-ne v5, v3, :cond_8

    move v5, v3

    :goto_3
    invoke-direct {p0, v5, v3}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v5

    if-nez v5, :cond_9

    move v1, v4

    .line 258
    .local v1, "coverSwitchState":Z
    :goto_4
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 260
    :cond_6
    const/4 v1, 0x1

    .line 263
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    goto/16 :goto_0

    .end local v1    # "coverSwitchState":Z
    :cond_8
    move v5, v4

    .line 254
    goto :goto_3

    :cond_9
    move v1, v3

    .line 257
    goto :goto_4
.end method

.method public unRegisterProximityListener()V
    .locals 3

    .prologue
    .line 720
    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterProximityListener mProximityListenerRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mProximityListenerRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximityListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mProximityListenerRegistered:Z

    .line 724
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 726
    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1226
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/cover/CoverManagerService;->unregisterCallback(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1176
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1178
    invoke-direct {p0, p1, v1}, Lcom/android/server/cover/CoverManagerService;->unregisterCallback(Landroid/os/IBinder;Z)Z

    move-result v1

    .line 1182
    :goto_0
    return v1

    .line 1180
    :cond_0
    const-string v2, "CoverManager"

    const-string/jumbo v3, "unregisterCallbackForExternal : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterCallbackForExternal : callerPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1258
    const-string v1, "CoverManager"

    const-string/jumbo v2, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    :goto_0
    return v0

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_0
.end method
