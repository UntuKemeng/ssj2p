.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$SvcLEDHandler;,
        Lcom/android/server/lights/LightsService$AlarmReceiver;,
        Lcom/android/server/lights/LightsService$SvcLEDReceiver;,
        Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;,
        Lcom/android/server/lights/LightsService$SmartGlowImpl;,
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SMARTGLOW:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field static final DEBUG:Z = false

.field public static final LIGHT_SEC_FLASH:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field public static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field public static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field public static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field private static final MSG_NO_REPEAT:I = 0xe

.field private static final MSG_REPEAT_ASSISTIVE_ALERT_BATTERY:I = 0xb

.field private static final MSG_REPEAT_ASSISTIVE_ALERT_DATA:I = 0xd

.field private static final MSG_REPEAT_ASSISTIVE_ALERT_STORAGE:I = 0xc

.field private static final MSG_REPEAT_CHARGING:I = 0x8

.field private static final MSG_REPEAT_NOTIFICATION:I = 0xa

.field private static final SMARTGLOW_ASSISTIVE_ALERT_BATTERY:I = 0x10

.field private static final SMARTGLOW_ASSISTIVE_ALERT_DATA:I = 0x40

.field private static final SMARTGLOW_ASSISTIVE_ALERT_STORAGE:I = 0x20

.field private static final SMARTGLOW_CALL:I = 0x4

.field private static final SMARTGLOW_CAMERA:I = 0x1

.field private static final SMARTGLOW_CHARGING:I = 0x2

.field private static final SMARTGLOW_MODE_ASSISTIVE_ALERT_BATTERY:I = 0x4

.field private static final SMARTGLOW_MODE_ASSISTIVE_ALERT_DATA:I = 0x6

.field private static final SMARTGLOW_MODE_ASSISTIVE_ALERT_STORAGE:I = 0x5

.field private static final SMARTGLOW_MODE_CALL:I = 0x2

.field private static final SMARTGLOW_MODE_CAMERA:I = 0x0

.field private static final SMARTGLOW_MODE_CHARGING:I = 0x1

.field private static final SMARTGLOW_MODE_COUNT:I = 0x7

.field private static final SMARTGLOW_MODE_NOTIFICATION:I = 0x3

.field private static final SMARTGLOW_NOTIFICATION:I = 0x8

.field private static final SMARTGLOW_NOTIFICATION_ALERT_MASK:I = 0x78

.field private static final SMARTGLOW_OFF:I = 0x0

.field public static final SUPPORT_LED_INDICATOR:Z

.field private static final SVCLED_BATTERY_MASK:I = 0x71

.field private static final SVCLED_CHARGING:I = 0x10

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x40

.field private static final SVCLED_LED_SERVICE:I = 0x8

.field private static final SVCLED_LED_SERVICE_MASK:I = 0x8

.field private static final SVCLED_LOW_BATTERY:I = 0x20

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x4

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x7

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x6

.field private static final SVCLED_MODE_LED_SERVICE:I = 0x3

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x5

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field public static final TAG_SMARTGLOW:Ljava/lang/String; = "[SMARTGLOW] "

.field private static mPrevSmartGlowState:I

.field private static mPrevSvcLedState:I

.field private static mSmartGlowState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I


# instance fields
.field private final LED_LOW_POWER_PATH:Ljava/lang/String;

.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private mBlinkTime:I

.field private mCameraOpen:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverBatteryLight:Lcom/android/server/lights/Light;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverNotiLight:Lcom/android/server/lights/Light;

.field private mCoverOpened:Z

.field private mCoverServLight:Lcom/android/server/lights/Light;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverType:I

.field private mCurrSmartGlowMode:I

.field private mDelayForcedSvcLEDTask:I

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private final mIntensityLock:Ljava/lang/Object;

.field private mIsLEDChanged:Z

.field private mIsPendingSmartGlowRequest:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mService:Lcom/android/server/lights/LightsManager;

.field final mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

.field private mSmartGlowChargingStatusEnable:Z

.field private mSmartGlowEnabled:Z

.field private mSmartGlowIntensitySetting:I

.field private mSmartGlowRepeatSetting:I

.field private mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

.field private mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field private final mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    .line 177
    sput v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 178
    sput v1, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    .line 179
    sput v1, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    .line 180
    sput v1, Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I

    .line 181
    sput v1, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 182
    sput v1, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 183
    sput v1, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 184
    sput v1, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    return-void

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 590
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 80
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 83
    const/16 v1, 0x2bc

    iput v1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 90
    const/16 v1, 0xfa0

    iput v1, p0, Lcom/android/server/lights/LightsService;->mBlinkTime:I

    .line 102
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 103
    iput-boolean v3, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 104
    const v1, 0x927c0

    iput v1, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    .line 107
    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 108
    iput-boolean v3, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 109
    iput v2, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 161
    iput v6, p0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    .line 185
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 188
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "/sys/power/wake_lock"

    aput-object v2, v1, v4

    const-string v2, "/sys/power/wake_unlock"

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 191
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    .line 200
    const/16 v1, 0xe

    new-array v1, v1, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 553
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/server/lights/LightsService$SmartGlowImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .line 554
    new-instance v1, Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-direct {v1, p0, v5}, Lcom/android/server/lights/LightsService$SmartGlowImpl;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    .line 556
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mIntensityLock:Ljava/lang/Object;

    .line 674
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 711
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 807
    new-instance v1, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 834
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 853
    new-instance v1, Lcom/android/server/lights/LightsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$5;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 995
    const-string v1, "/sys/class/sec/led/led_lowpower"

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->LED_LOW_POWER_PATH:Ljava/lang/String;

    .line 996
    iput v6, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    .line 997
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1123
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 592
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    .line 593
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 596
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 597
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    const-string/jumbo v2, "mSvcLEDThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    .line 611
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 612
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 613
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 615
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    goto :goto_0

    .line 620
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v2, p0, v0, v5}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 620
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 626
    .restart local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 627
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-direct {v2, p0, v5}, Lcom/android/server/lights/LightsService$SmartGlowImpl;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 629
    :cond_2
    new-instance v1, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    .line 630
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->setSmartGlowLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/lights/LightsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/lights/LightsService;IIIIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/lights/LightsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/lights/LightsService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/lights/LightsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mIntensityLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/lights/LightsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/Light;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/Light;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverServLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/Light;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverServLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/lights/LightsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowEnabled:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$4302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 73
    sput p0, Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCameraOpen:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/lights/LightsService;I[I[I[IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [I
    .param p3, "x3"    # [I
    .param p4, "x4"    # [I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSmartGlowStateLocked(I[I[I[IIZ)V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 73
    sput p0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    return p0
.end method

.method static synthetic access$776(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 73
    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/lights/LightsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    return p1
.end method

.method private acquireWakeLockForLED()V
    .locals 2

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_1

    .line 1127
    const-string v0, "LightsService"

    const-string v1, "acquireWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    goto :goto_0
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1274
    const-string v1, ""

    .line 1275
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1276
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1278
    .local v0, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1280
    return-object v1
.end method

.method private clearSvcLedStateLocked(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1168
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 1169
    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    if-eqz p1, :cond_2

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz v0, :cond_2

    .line 840
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    goto :goto_0

    .line 845
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    goto :goto_0
.end method

.method private static native finalize_native(J)V
.end method

.method private handleForcedSvcLEDTask()V
    .locals 2

    .prologue
    .line 1074
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] handleForcedSvcLEDTask()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 1076
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    .line 1077
    return-void
.end method

.method private initCoverState()V
    .locals 4

    .prologue
    .line 789
    const-string v1, "LightsService"

    const-string/jumbo v2, "initCoverState()start"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 792
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 794
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 795
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() coverstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_0
    return-void

    .line 798
    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_0
    const-string v1, "LightsService"

    const-string/jumbo v2, "initCoverState() : state is null"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_1
    const-string v1, "LightsService"

    const-string/jumbo v2, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native init_native()J
.end method

.method private initializeWakeLockPath()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1100
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 1119
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_lock path does not exists"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1115
    :cond_2
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_unlock path does not exists "

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 638
    const-string/jumbo v0, "ml_status"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    .line 639
    const-string/jumbo v0, "ml_repeat_value"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    .line 640
    const-string/jumbo v0, "ml_battery_charging"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    .line 642
    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 643
    iput v2, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    .line 645
    :cond_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartGlow Intensity Settings = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartGlow Repeat Settings Changed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartGlow Charging Status Settings Changed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    if-eqz v0, :cond_1

    .line 649
    const-string v0, "/sys/class/leds/led_1/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 650
    const-string v0, "/sys/class/leds/led_2/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 651
    const-string v0, "/sys/class/leds/led_3/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 652
    const-string v0, "/sys/class/leds/led_4/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 654
    :cond_1
    const-string/jumbo v0, "ml_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 655
    const-string/jumbo v0, "ml_repeat_value"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 656
    const-string/jumbo v0, "ml_battery_charging"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 657
    return-void

    :cond_2
    move v0, v2

    .line 640
    goto/16 :goto_0
.end method

.method private releaseWakeLockForLED()V
    .locals 2

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_1

    .line 1145
    const-string v0, "LightsService"

    const-string/jumbo v1, "releaseWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    goto :goto_0
.end method

.method static native setLight_native(JIIIIII)V
.end method

.method private setSmartGlowLocked()V
    .locals 19

    .prologue
    .line 927
    const/4 v11, 0x0

    .line 928
    .local v11, "priority":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mCameraOpen:Z

    if-eqz v2, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlowEnabled:Z

    if-nez v2, :cond_5

    .line 931
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 932
    const/4 v11, 0x1

    .line 974
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    if-eq v2, v11, :cond_0

    .line 975
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4400(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v5

    .line 977
    .local v5, "ledno":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4500(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v6

    .line 978
    .local v6, "color":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4600(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v7

    .line 979
    .local v7, "onMs":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I
    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4700(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v8

    .line 980
    .local v8, "offMs":[I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    const/16 v4, 0xd

    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSmartGlow_native(JII[I[I[I)V

    .line 981
    const/4 v2, 0x2

    if-eq v11, v2, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/lights/LightsService;->mBlinkTime:I

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    const/high16 v17, 0x10000000

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v13, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v14, v15, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 984
    const/4 v2, 0x1

    if-eq v11, v2, :cond_0

    .line 986
    add-int/lit8 v12, v11, 0x7

    .line 987
    .local v12, "repeatmsg":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v3, v4, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$1200(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v2

    if-lez v2, :cond_0

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0x1d4c0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    const/high16 v17, 0x10000000

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v13, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v14, v15, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 933
    .end local v5    # "ledno":I
    .end local v6    # "color":[I
    .end local v7    # "onMs":[I
    .end local v8    # "offMs":[I
    .end local v12    # "repeatmsg":I
    :cond_3
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 934
    const/4 v11, 0x4

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$1202(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    goto/16 :goto_1

    .line 937
    :cond_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    .line 938
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    const/16 v4, 0xd

    const/4 v5, -0x1

    const/4 v13, 0x4

    new-array v6, v13, [I

    fill-array-data v6, :array_0

    const/4 v13, 0x4

    new-array v7, v13, [I

    fill-array-data v7, :array_1

    const/4 v13, 0x4

    new-array v8, v13, [I

    fill-array-data v8, :array_2

    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSmartGlow_native(JII[I[I[I)V

    goto/16 :goto_0

    .line 942
    :cond_5
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    if-nez v2, :cond_6

    .line 943
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    .line 944
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    const/16 v4, 0xd

    const/4 v5, -0x1

    const/4 v13, 0x4

    new-array v6, v13, [I

    fill-array-data v6, :array_3

    const/4 v13, 0x4

    new-array v7, v13, [I

    fill-array-data v7, :array_4

    const/4 v13, 0x4

    new-array v8, v13, [I

    fill-array-data v8, :array_5

    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSmartGlow_native(JII[I[I[I)V

    goto/16 :goto_0

    .line 947
    :cond_6
    const/4 v10, 0x1

    .line 948
    .local v10, "operator":I
    const/4 v9, -0x1

    .line 949
    .local v9, "mode":I
    const/4 v11, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v11, v2, :cond_7

    .line 950
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    shr-int/2addr v2, v11

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    .line 954
    :cond_7
    const/4 v2, 0x4

    if-ne v11, v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    shl-int/2addr v2, v3

    sget v3, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    and-int/2addr v2, v3

    if-nez v2, :cond_b

    .line 955
    :cond_8
    const/4 v11, 0x3

    .line 956
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    .line 957
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    or-int/lit8 v2, v2, 0x8

    sput v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4400(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v3

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4402(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I
    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4500(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v3

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4502(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I
    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4600(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v3

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4602(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I
    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4700(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v3

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4702(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # getter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$1200(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v3

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$1202(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    .line 963
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    .line 971
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 949
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 964
    :cond_b
    const/4 v2, 0x2

    if-eq v11, v2, :cond_c

    const/4 v2, 0x1

    if-ne v11, v2, :cond_9

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    if-eq v2, v11, :cond_9

    .line 965
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    .line 966
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    sput v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v3, v4, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 969
    :cond_d
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    goto :goto_3

    .line 938
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 944
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setSmartGlowStateLocked(I[I[I[IIZ)V
    .locals 6
    .param p1, "ledno"    # I
    .param p2, "color"    # [I
    .param p3, "onMs"    # [I
    .param p4, "offMs"    # [I
    .param p5, "mode"    # I
    .param p6, "set"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1172
    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I

    .line 1173
    if-eqz p6, :cond_1

    .line 1174
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCameraOpen:Z

    if-eqz v0, :cond_0

    if-ne p5, v4, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1176
    :cond_0
    packed-switch p5, :pswitch_data_0

    goto :goto_0

    .line 1181
    :goto_1
    :pswitch_0
    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    shl-int v1, v4, p5

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    .line 1182
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I
    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4402(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    .line 1183
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I
    invoke-static {v0, p2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4502(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 1184
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I
    invoke-static {v0, p3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4602(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 1185
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I
    invoke-static {v0, p4}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4702(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 1209
    :goto_2
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->setSmartGlowLocked()V

    goto :goto_0

    .line 1178
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$1202(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    goto :goto_1

    .line 1190
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "10"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1191
    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    .line 1192
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I
    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4402(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    .line 1193
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I
    invoke-static {v0, p2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4502(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 1194
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I
    invoke-static {v0, p3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4602(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 1195
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I
    invoke-static {v0, p4}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$4702(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    .line 1196
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    # setter for: Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->access$1202(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    goto :goto_2

    .line 1202
    :cond_1
    const/4 v0, 0x3

    if-ne p5, v0, :cond_2

    .line 1203
    iput-boolean v5, p0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    .line 1205
    :cond_2
    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    shl-int v1, v4, p5

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    .line 1206
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1207
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p5, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 1176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static native setSmartGlow_native(JII[I[I[I)V
.end method

.method private setSvcLedLightLocked(I)V
    .locals 11
    .param p1, "sensorValue"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1000
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    move v6, v0

    .line 1001
    .local v6, "ledLowPower":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    if-eq v6, v1, :cond_0

    .line 1002
    iput v6, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    .line 1003
    const-string v1, "/sys/class/sec/led/led_lowpower"

    iget v3, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1004
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 1007
    :cond_0
    const/4 v9, 0x0

    .line 1008
    .local v9, "priority":I
    const/4 v8, 0x1

    .line 1009
    .local v8, "operator":I
    const/4 v7, -0x1

    .line 1010
    .local v7, "mode":I
    const/4 v9, 0x0

    :goto_1
    const/4 v0, 0x7

    if-ge v9, v0, :cond_1

    .line 1011
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1016
    :cond_1
    const/4 v2, 0x0

    .line 1018
    .local v2, "ledMode":I
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-nez v0, :cond_4

    .line 1019
    iget v10, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1020
    .local v10, "svcLedId":I
    const/4 v2, 0x0

    .line 1058
    :goto_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, v10

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sget v3, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->access$4800(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    .line 1060
    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    if-eq v0, v10, :cond_5

    .line 1061
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: priority changed! SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") OUT; SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") IN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :goto_3
    iput v10, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1068
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->releaseWakeLockForLED()V

    .line 1070
    return-void

    .end local v2    # "ledMode":I
    .end local v6    # "ledLowPower":I
    .end local v7    # "mode":I
    .end local v8    # "operator":I
    .end local v9    # "priority":I
    .end local v10    # "svcLedId":I
    :cond_2
    move v6, v5

    .line 1000
    goto :goto_0

    .line 1010
    .restart local v6    # "ledLowPower":I
    .restart local v7    # "mode":I
    .restart local v8    # "operator":I
    .restart local v9    # "priority":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1022
    .restart local v2    # "ledMode":I
    :cond_4
    packed-switch v9, :pswitch_data_0

    .line 1052
    const/4 v10, 0x7

    .line 1053
    .restart local v10    # "svcLedId":I
    const/4 v2, 0x0

    goto :goto_2

    .line 1024
    .end local v10    # "svcLedId":I
    :pswitch_0
    const/4 v10, 0x5

    .line 1025
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xb

    .line 1026
    goto :goto_2

    .line 1028
    .end local v10    # "svcLedId":I
    :pswitch_1
    const/4 v10, 0x6

    .line 1029
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xc

    .line 1030
    goto :goto_2

    .line 1032
    .end local v10    # "svcLedId":I
    :pswitch_2
    const/4 v10, 0x6

    .line 1033
    .restart local v10    # "svcLedId":I
    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1034
    goto :goto_2

    .line 1036
    .end local v10    # "svcLedId":I
    :pswitch_3
    const/16 v10, 0xc

    .line 1037
    .restart local v10    # "svcLedId":I
    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1038
    goto :goto_2

    .line 1040
    .end local v10    # "svcLedId":I
    :pswitch_4
    const/4 v10, 0x5

    .line 1041
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xa

    .line 1042
    goto :goto_2

    .line 1044
    .end local v10    # "svcLedId":I
    :pswitch_5
    const/4 v10, 0x5

    .line 1045
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xd

    .line 1046
    goto :goto_2

    .line 1048
    .end local v10    # "svcLedId":I
    :pswitch_6
    const/4 v10, 0x5

    .line 1049
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xe

    .line 1050
    goto :goto_2

    .line 1064
    :cond_5
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: Current SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") maintains its priority right"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "set"    # Z

    .prologue
    const/16 v1, 0xc

    .line 1214
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    .line 1216
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 1218
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x72

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1219
    if-eqz p6, :cond_0

    .line 1220
    const/16 v0, 0xa

    if-ne p3, v0, :cond_2

    .line 1221
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1261
    :cond_0
    :goto_0
    sget v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_1

    .line 1262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 1264
    :cond_1
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: SvcLEDState : 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | SvcLED(id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_c

    const-string v0, "On"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-void

    .line 1222
    :cond_2
    const/16 v0, 0xe

    if-ne p3, v0, :cond_3

    .line 1223
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    .line 1224
    :cond_3
    const/16 v0, 0xd

    if-ne p3, v0, :cond_4

    .line 1225
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    .line 1226
    :cond_4
    const/16 v0, 0xb

    if-ne p3, v0, :cond_5

    .line 1227
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    .line 1229
    :cond_5
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1232
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 1233
    if-eqz p6, :cond_8

    .line 1234
    if-ne p3, v1, :cond_7

    .line 1235
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    .line 1238
    :cond_7
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1239
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 1240
    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1241
    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 1242
    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_0

    .line 1245
    :cond_8
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    .line 1247
    :cond_9
    if-ne p1, v1, :cond_b

    .line 1248
    if-eqz p6, :cond_a

    .line 1249
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1250
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 1251
    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1252
    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 1253
    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_0

    .line 1255
    :cond_a
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    .line 1258
    :cond_b
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1264
    :cond_c
    const-string v0, "Off"

    goto/16 :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 707
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    .line 708
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 709
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 662
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->systemReady()V

    .line 666
    :cond_0
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 671
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 634
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 635
    return-void
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 722
    const-string v3, "LightsService"

    const-string v6, "[SvcLED] systemReady"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 724
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    .line 725
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-direct {v2, v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 726
    .local v2, "updateSvcLEDIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 729
    new-instance v3, Landroid/hardware/SystemSensorManager;

    iget-object v6, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 730
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 732
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.sec.feature.folder_type"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.sec.feature.dual_lcd"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v5

    .line 735
    .local v1, "isSingleScreenFolder":Z
    :goto_0
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_0

    const-string v3, "/sys/class/sec/led/led_lowpower"

    invoke-static {v3}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 738
    iput-boolean v5, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 742
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x2bc

    :goto_1
    iput v3, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 744
    const-string v4, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SvcLED] SUPPORT_LED_INDICATOR : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  mLightSensor : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_3

    const-string v3, "exist"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  isSingleScreenFolder : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  mUseLEDAutoBrightness : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  mDelayForcedSvcLEDTask : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  mUsePatternLED "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v3, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 754
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initCoverState()V

    .line 755
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v3, :cond_4

    .line 756
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 763
    :goto_3
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initializeWakeLockPath()V

    .line 767
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 768
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "isSingleScreenFolder":Z
    :cond_1
    move v1, v4

    .line 732
    goto/16 :goto_0

    .restart local v1    # "isSingleScreenFolder":Z
    :cond_2
    move v3, v4

    .line 742
    goto/16 :goto_1

    .line 744
    :cond_3
    const-string/jumbo v3, "null"

    goto :goto_2

    .line 758
    :cond_4
    const-string v3, "LightsService"

    const-string/jumbo v4, "initLightsService() : mCoverManager is null!!!!"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method