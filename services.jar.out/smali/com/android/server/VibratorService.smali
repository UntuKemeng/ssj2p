.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$5;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static HAS_DUAL_MOTORS:I = 0x0

.field private static LEVEL_TO_MAGNITUDE:[I = null

.field private static LEVEL_TO_TOUCH_MAGNITUDE:[I = null

.field private static final SAFE_DEBUG:Z

.field private static final SET_FREQUNCY_PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static USE_SET_MAX_MAGNITUE:Z = false

.field private static final VIB_DEBUG:Z = true

.field private static mIsEnableIntensity:Z

.field private static mIsHapticSupported:Z

.field private static final mTypeURIs:[Ljava/lang/String;

.field private static mVibePatternHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mHasVibrator:Z

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFrequencySupported:Z

.field private mLastEndWakeLock:Ljava/lang/String;

.field private mLastStartWakeLock:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mMaxMagnitudeValue:I

.field private mMinMagnitudeValue:I

.field private mMotorType:I

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field private mTempToken:Landroid/os/IBinder;

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private final mVibeConstantsPatternA:Ljava/lang/String;

.field private final mVibeConstantsPatternB:Ljava/lang/String;

.field private final mVibeConstantsPatternC:Ljava/lang/String;

.field private final mVibeConstantsPatternD:Ljava/lang/String;

.field private final mVibeConstantsPatternE:Ljava/lang/String;

.field private final mVibeConstantsPatternF:Ljava/lang/String;

.field private final mVibeConstantsPatternG:Ljava/lang/String;

.field private final mVibeConstantsPatternH:Ljava/lang/String;

.field private final mVibeConstantsPatternI:Ljava/lang/String;

.field private final mVibeConstantsPatternJ:Ljava/lang/String;

.field private final mVibeConstantsPatternK:Ljava/lang/String;

.field private final mVibeConstantsPatternL:Ljava/lang/String;

.field private final mVibeConstantsPatternM:Ljava/lang/String;

.field private mVibeFrequencyAlert:I

.field private mVibeFrequencyF0:I

.field private mVibeFrequencyHigh:I

.field private mVibeFrequencyLow:I

.field private mVibeFrequencyMid:I

.field private mVibePatternA:[J

.field private mVibePatternB:[J

.field private mVibePatternC:[J

.field private mVibePatternD:[J

.field private mVibePatternE:[J

.field private mVibePatternF:[J

.field private mVibePatternG:[J

.field private mVibePatternH:[J

.field private mVibePatternI:[J

.field private mVibePatternJ:[J

.field private mVibePatternK:[J

.field private mVibePatternL:[J

.field private mVibePatternM:[J

.field private mVibePatternMaxLength:I

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v3, v0, v1

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 106
    sput v1, Lcom/android/server/VibratorService;->HAS_DUAL_MOTORS:I

    .line 107
    sput-boolean v1, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 108
    sput-boolean v1, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 109
    const-string v0, "Max"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ConfigVibService"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    .line 125
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v11, 0x2

    const/16 v7, 0x270f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 382
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 110
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    .line 126
    const-string v6, "A"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternA:Ljava/lang/String;

    .line 127
    const-string v6, "B"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternB:Ljava/lang/String;

    .line 128
    const-string v6, "C"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternC:Ljava/lang/String;

    .line 129
    const-string v6, "D"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternD:Ljava/lang/String;

    .line 130
    const-string v6, "E"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternE:Ljava/lang/String;

    .line 131
    const-string v6, "F"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternF:Ljava/lang/String;

    .line 132
    const-string v6, "G"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternG:Ljava/lang/String;

    .line 133
    const-string v6, "H"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternH:Ljava/lang/String;

    .line 134
    const-string v6, "I"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternI:Ljava/lang/String;

    .line 135
    const-string v6, "J"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternJ:Ljava/lang/String;

    .line 136
    const-string v6, "K"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternK:Ljava/lang/String;

    .line 137
    const-string v6, "L"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternL:Ljava/lang/String;

    .line 138
    const-string v6, "M"

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternM:Ljava/lang/String;

    .line 140
    iput v9, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 141
    iput v10, p0, Lcom/android/server/VibratorService;->mVibeFrequencyLow:I

    .line 142
    iput v11, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    .line 143
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/VibratorService;->mVibeFrequencyHigh:I

    .line 144
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    .line 145
    iput v8, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    .line 147
    iput v7, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 148
    iput v7, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 149
    iput v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 150
    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 151
    iput v7, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 152
    iput v7, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 153
    iput v8, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 154
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    .line 161
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    .line 171
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 172
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 185
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 189
    iput v8, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 804
    new-instance v6, Lcom/android/server/VibratorService$3;

    invoke-direct {v6, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 1167
    new-instance v6, Lcom/android/server/VibratorService$4;

    invoke-direct {v6, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1602
    iput v8, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 385
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 387
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 388
    const-string/jumbo v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 390
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v6, "VibratorService"

    invoke-virtual {v3, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 391
    iget-object v6, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 393
    const-string v6, "appops"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 394
    const-string v6, "batterystats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 397
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 400
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 401
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 403
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 404
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v6, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 421
    .local v4, "r":Landroid/content/res/Resources;
    const v6, 0x1070071

    const-string v7, "A"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    .line 422
    const v6, 0x1070072

    const-string v7, "B"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    .line 423
    const v6, 0x1070073

    const-string v7, "C"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    .line 424
    const v6, 0x1070074

    const-string v7, "D"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    .line 425
    const v6, 0x1070075

    const-string v7, "E"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    .line 426
    const v6, 0x1070076

    const-string v7, "F"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    .line 427
    const v6, 0x1070077

    const-string v7, "G"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    .line 428
    const v6, 0x1070078

    const-string v7, "H"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternH:[J

    .line 429
    const v6, 0x1070079

    const-string v7, "I"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternI:[J

    .line 430
    const v6, 0x107007a

    const-string v7, "J"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternJ:[J

    .line 431
    const v6, 0x107007b

    const-string v7, "K"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternK:[J

    .line 432
    const v6, 0x107007c

    const-string v7, "L"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternL:[J

    .line 433
    const v6, 0x107007d

    const-string v7, "M"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternM:[J

    .line 435
    invoke-static {}, Lcom/android/server/VibratorService;->getVibratorMotorType()I

    move-result v6

    iput v6, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 436
    sget-boolean v6, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mMType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorFrequencyExist()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    .line 439
    sget-boolean v6, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    iget v6, p0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v6, :pswitch_data_0

    .line 461
    sput-boolean v9, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 462
    sput-boolean v9, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 466
    :goto_0
    sget-boolean v6, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v6, :cond_3

    .line 467
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .line 468
    .local v2, "magnitudeMaxLevel":I
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v6, v6

    add-int/lit8 v5, v6, -0x1

    .line 469
    .local v5, "touchMagnitudeMaxLevel":I
    if-lt v2, v11, :cond_2

    if-ge v5, v11, :cond_5

    .line 470
    :cond_2
    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "magnitudeMaxLevel : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchMagnitudeMaxLevel : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v2    # "magnitudeMaxLevel":I
    .end local v5    # "touchMagnitudeMaxLevel":I
    :cond_3
    :goto_1
    return-void

    .line 444
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v6, :cond_4

    .line 445
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    sput-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 446
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070081

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    sput-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 451
    :goto_2
    sput-boolean v10, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 452
    sput-boolean v10, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto :goto_0

    .line 448
    :cond_4
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107007e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    sput-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 449
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    sput-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto :goto_2

    .line 455
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    sput-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 456
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    sput-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 457
    sput-boolean v10, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 458
    sput-boolean v9, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto/16 :goto_0

    .line 474
    .restart local v2    # "magnitudeMaxLevel":I
    .restart local v5    # "touchMagnitudeMaxLevel":I
    :cond_5
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v6, v6, v5

    iput v6, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 475
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 476
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 477
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 478
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 479
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v10

    iput v6, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 482
    new-instance v6, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v6, p0, v9}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 483
    new-instance v6, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v6, p0, v10}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 484
    new-instance v6, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v6, p0, v11}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 486
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v7, v7, v9

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 487
    .local v1, "magnitudeLevel":I
    if-le v1, v5, :cond_7

    .end local v1    # "magnitudeLevel":I
    :goto_3
    iput v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 489
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v7, v7, v10

    const/4 v8, -0x2

    invoke-static {v6, v7, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 490
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v2, :cond_8

    .end local v1    # "magnitudeLevel":I
    :goto_4
    iput v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 492
    iget-object v6, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v7, v7, v11

    const/4 v8, -0x2

    invoke-static {v6, v7, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 493
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v2, :cond_9

    .end local v1    # "magnitudeLevel":I
    :goto_5
    iput v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 495
    sget-boolean v6, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v6, :cond_6

    .line 496
    iget v6, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 499
    :cond_6
    iget v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-direct {p0, v6}, Lcom/android/server/VibratorService;->setIntensity(I)V

    goto/16 :goto_1

    .line 487
    .restart local v1    # "magnitudeLevel":I
    :cond_7
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v1, v6, v1

    goto :goto_3

    .line 490
    :cond_8
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v6, v1

    goto :goto_4

    .line 493
    :cond_9
    sget-object v6, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v6, v1

    goto :goto_5

    .line 442
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;JIIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 85
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/VibratorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    return p1
.end method

.method static synthetic access$2600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic access$2900()[I
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$3000()[I
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return p1
.end method

.method static synthetic access$3400()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 12
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/VibratorService$VibrationInfo;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mStartTime:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v6

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v11, :cond_1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    :goto_0
    invoke-direct/range {v1 .. v11}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 777
    return-void

    .line 775
    :cond_1
    const/4 v11, -0x1

    goto :goto_0
.end method

.method private doCancelVibrateLocked()V
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 819
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 820
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 824
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 825
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 826
    return-void

    .line 820
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    .prologue
    .line 992
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 5

    .prologue
    .line 1047
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1051
    :try_start_0
    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    .line 1053
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v4, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    :goto_0
    const/4 v2, -0x1

    :try_start_2
    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1058
    :cond_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1059
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_1

    .line 1060
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1061
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1064
    .end local v0    # "i":I
    :cond_1
    const-string v2, "VibratorService"

    const-string v4, "Turning vibrator off"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1067
    :cond_2
    monitor-exit v3

    .line 1068
    return-void

    .line 1067
    .end local v1    # "vibratorCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1054
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private doVibratorOn(JII)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .prologue
    .line 996
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1001
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1002
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1006
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_0

    .line 1007
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1009
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1010
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1013
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_0
    const-string v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1016
    :cond_1
    monitor-exit v4

    .line 1017
    return-void

    .line 1016
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1003
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private doVibratorOn(JIIII)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "magnitude"    # I
    .param p6, "frequency"    # I

    .prologue
    .line 1021
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1026
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1027
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1031
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_0

    .line 1032
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1034
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1035
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1038
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_0
    const-string v5, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", magnitude :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", f : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v3, :cond_2

    move v3, p6

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setFrequency(I)V

    .line 1040
    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->setIntensity(I)V

    .line 1041
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1043
    :cond_1
    monitor-exit v4

    .line 1044
    return-void

    .line 1038
    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    .line 1043
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1028
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getCommonPattern(I)[J
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1385
    packed-switch p1, :pswitch_data_0

    .line 1446
    :pswitch_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    .line 1447
    .local v0, "pattern":[J
    move-object v1, v0

    .line 1450
    .end local v0    # "pattern":[J
    .local v1, "vibePattern":[J
    :goto_0
    return-object v1

    .line 1397
    .end local v1    # "vibePattern":[J
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    .line 1398
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1401
    .end local v1    # "vibePattern":[J
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    .line 1402
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1406
    .end local v1    # "vibePattern":[J
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    .line 1407
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1409
    .end local v1    # "vibePattern":[J
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    .line 1410
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1412
    .end local v1    # "vibePattern":[J
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    .line 1413
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1417
    .end local v1    # "vibePattern":[J
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    .line 1418
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1420
    .end local v1    # "vibePattern":[J
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    .line 1421
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1424
    .end local v1    # "vibePattern":[J
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternH:[J

    .line 1425
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1428
    .end local v1    # "vibePattern":[J
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternI:[J

    .line 1429
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1432
    .end local v1    # "vibePattern":[J
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternJ:[J

    .line 1433
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1437
    .end local v1    # "vibePattern":[J
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternK:[J

    .line 1438
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1440
    .end local v1    # "vibePattern":[J
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternL:[J

    .line 1441
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1443
    .end local v1    # "vibePattern":[J
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternM:[J

    .line 1444
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1385
    :pswitch_data_0
    .packed-switch 0xc359
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1446
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getCommonPatternFrequency([J)I
    .locals 13
    .param p1, "pattern"    # [J

    .prologue
    const/4 v11, 0x2

    .line 1454
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1455
    .local v1, "frequency":I
    array-length v7, p1

    .line 1456
    .local v7, "length":I
    iget-boolean v10, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-nez v10, :cond_0

    move v2, v1

    .line 1564
    .end local v1    # "frequency":I
    .local v2, "frequency":I
    :goto_0
    return v2

    .line 1460
    .end local v2    # "frequency":I
    .restart local v1    # "frequency":I
    :cond_0
    if-lt v7, v11, :cond_1

    iget v10, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    if-le v7, v10, :cond_2

    :cond_1
    move v2, v1

    .line 1465
    .end local v1    # "frequency":I
    .restart local v2    # "frequency":I
    goto :goto_0

    .line 1468
    .end local v2    # "frequency":I
    .restart local v1    # "frequency":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getHashValue([J)J

    move-result-wide v4

    .line 1470
    .local v4, "hashValue":J
    sget-object v10, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1471
    sget-object v10, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 1472
    .local v6, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1473
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1474
    .local v3, "key":Ljava/lang/String;
    sget-object v10, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-virtual {v10, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1479
    .local v8, "value":J
    cmp-long v10, v8, v4

    if-nez v10, :cond_3

    .line 1486
    const/4 v0, 0x0

    .line 1487
    .local v0, "commonPattern":Z
    const/4 v10, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_4
    :goto_1
    packed-switch v10, :pswitch_data_1

    .line 1547
    :goto_2
    sget-boolean v10, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v10, :cond_5

    .line 1548
    if-eqz v0, :cond_d

    .line 1549
    const-string v10, "VibratorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCommonPatternFrequency() - common pattern : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frequency : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "commonPattern":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8    # "value":J
    :cond_5
    :goto_3
    move v2, v1

    .line 1564
    .end local v1    # "frequency":I
    .restart local v2    # "frequency":I
    goto :goto_0

    .line 1487
    .end local v2    # "frequency":I
    .restart local v0    # "commonPattern":Z
    .restart local v1    # "frequency":I
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v6    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v8    # "value":J
    :pswitch_0
    const-string v11, "A"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x0

    goto :goto_1

    :pswitch_1
    const-string v11, "B"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :pswitch_2
    const-string v12, "C"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v10, v11

    goto :goto_1

    :pswitch_3
    const-string v11, "D"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x3

    goto :goto_1

    :pswitch_4
    const-string v11, "E"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x4

    goto :goto_1

    :pswitch_5
    const-string v11, "F"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x5

    goto :goto_1

    :pswitch_6
    const-string v11, "G"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x6

    goto :goto_1

    .line 1489
    :pswitch_7
    iget-object v10, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    invoke-direct {p0, v10, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1490
    if-eqz v0, :cond_6

    .line 1491
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    goto :goto_2

    .line 1493
    :cond_6
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1495
    goto :goto_2

    .line 1497
    :pswitch_8
    iget-object v10, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    invoke-direct {p0, v10, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1498
    if-eqz v0, :cond_7

    .line 1499
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    goto/16 :goto_2

    .line 1501
    :cond_7
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1503
    goto/16 :goto_2

    .line 1505
    :pswitch_9
    iget-object v10, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    invoke-direct {p0, v10, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1506
    if-eqz v0, :cond_8

    .line 1507
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    goto/16 :goto_2

    .line 1509
    :cond_8
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1511
    goto/16 :goto_2

    .line 1513
    :pswitch_a
    iget-object v10, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    invoke-direct {p0, v10, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1514
    if-eqz v0, :cond_9

    .line 1515
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyHigh:I

    goto/16 :goto_2

    .line 1517
    :cond_9
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1519
    goto/16 :goto_2

    .line 1521
    :pswitch_b
    iget-object v10, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    invoke-direct {p0, v10, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1522
    if-eqz v0, :cond_a

    .line 1523
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyLow:I

    goto/16 :goto_2

    .line 1525
    :cond_a
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1527
    goto/16 :goto_2

    .line 1529
    :pswitch_c
    iget-object v10, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    invoke-direct {p0, v10, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1530
    if-eqz v0, :cond_b

    .line 1531
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    goto/16 :goto_2

    .line 1533
    :cond_b
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1535
    goto/16 :goto_2

    .line 1537
    :pswitch_d
    iget-object v10, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    invoke-direct {p0, v10, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1538
    if-eqz v0, :cond_c

    .line 1539
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    goto/16 :goto_2

    .line 1541
    :cond_c
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1543
    goto/16 :goto_2

    .line 1554
    :cond_d
    const-string v10, "VibratorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCommonPatternFrequency() - common or custom pattern(confirmed) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frequency : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1487
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getHashValue([J)J
    .locals 8
    .param p1, "pattern"    # [J

    .prologue
    .line 1375
    array-length v1, p1

    .line 1376
    .local v1, "length":I
    const-wide/16 v2, 0x0

    .line 1377
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1378
    aget-wide v4, p1, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1380
    :cond_0
    return-wide v2
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 1346
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1347
    .local v0, "ar":[I
    if-nez v0, :cond_1

    .line 1348
    const/4 v2, 0x0

    .line 1354
    :cond_0
    return-object v2

    .line 1350
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 1351
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1352
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 1351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getMinMagnitude()I
    .locals 5

    .prologue
    .line 1658
    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 1660
    .local v1, "magnitude":I
    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    const/4 v3, 0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    :goto_0
    return v1

    .line 1661
    :catch_0
    move-exception v0

    .line 1662
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Min magnitude should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native getVibratorMotorType()I
.end method

.method private initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1358
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    .line 1359
    .local v1, "pattern":[J
    if-nez v1, :cond_0

    .line 1360
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initPattern() is failed by illegal resid("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v2, 0x2

    new-array v1, v2, [J

    .end local v1    # "pattern":[J
    fill-array-data v1, :array_0

    .line 1371
    :goto_0
    return-object v1

    .line 1364
    .restart local v1    # "pattern":[J
    :cond_0
    array-length v0, v1

    .line 1365
    .local v0, "length":I
    iget v2, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    if-ge v2, v0, :cond_1

    .line 1366
    iput v0, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    .line 1369
    :cond_1
    sget-object v2, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->getHashValue([J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1361
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private isAll0([J)Z
    .locals 6
    .param p1, "pattern"    # [J

    .prologue
    .line 701
    array-length v0, p1

    .line 702
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 703
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 704
    const/4 v2, 0x0

    .line 707
    :goto_1
    return v2

    .line 702
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isCommonPattern([J[J)Z
    .locals 8
    .param p1, "common"    # [J
    .param p2, "pattern"    # [J

    .prologue
    const/4 v2, 0x0

    .line 1568
    array-length v1, p1

    .line 1569
    .local v1, "length":I
    array-length v3, p2

    if-eq v1, v3, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return v2

    .line 1572
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1573
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1577
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 894
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 895
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 896
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 897
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 898
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 899
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 909
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_0
    return-object v1

    .line 905
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 906
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 907
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_0

    .line 909
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportFinishVibrationLocked()V
    .locals 5

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_0

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 890
    :cond_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 1636
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v0, :cond_0

    .line 1637
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorFrequency(J)V

    .line 1639
    :cond_0
    return-void
.end method

.method private setIntensity(I)V
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 1642
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v0, :cond_0

    .line 1643
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorIntensity(J)V

    .line 1645
    :cond_0
    return-void
.end method

.method private startNextVibrationLocked()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 836
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 8
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/4 v2, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 853
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 857
    :cond_0
    if-eqz v0, :cond_3

    .line 858
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 859
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_1
    sget-boolean v1, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Infinite: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    .end local v0    # "mode":I
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v1

    .line 867
    :cond_3
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 868
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    :goto_1
    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    .line 871
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 868
    :cond_4
    iget v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto :goto_1

    .line 875
    :cond_5
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 876
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 913
    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    :try_start_0
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateInputDeviceVibrators()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 925
    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 926
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 928
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 929
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    :try_start_2
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 937
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 939
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_3

    .line 940
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_0

    .line 941
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 942
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 951
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 952
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_4

    .line 953
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 954
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 955
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 956
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 957
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 958
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    move v4, v5

    .line 931
    goto :goto_0

    .line 945
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_0

    .line 946
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 947
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_2

    .line 962
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 965
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 962
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 964
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 965
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 966
    return-void

    .line 934
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private vibrate(ILjava/lang/String;JILandroid/os/IBinder;I)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 651
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v2, :cond_1

    .line 658
    const-string v2, "VibratorService"

    const-string/jumbo v4, "vibrate() : HMTMount is TRUE. "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 666
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 671
    :cond_2
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 681
    :cond_3
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", magnitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;I)V

    .line 686
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 688
    .local v12, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 689
    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 690
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 691
    iput-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 692
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 693
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 694
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 694
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 696
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorFrequency(J)V
.end method

.method static native vibratorFrequencyExist()Z
.end method

.method static native vibratorIntensity(J)V
.end method

.method static native vibratorIntensityExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 781
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 788
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 789
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 790
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 795
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 797
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    return-void

    .line 797
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 800
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1882
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump vibrator service from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    :goto_0
    return-void

    .line 1890
    :cond_0
    const-string v2, "Previous vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1892
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1893
    .local v1, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1896
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1897
    const-string v2, "Current Info:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLowPowerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTouchMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCallMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mNotiMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDefaultMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mHMTMount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mHasVibrator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsEnableInt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsSupportedH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsSupportedF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  USE_SET_MAX_MAGNITUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1668
    invoke-static {p1}, Landroid/os/Vibrator$MagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$MagnitudeTypes;

    move-result-object v0

    .line 1669
    .local v0, "magnitudeType":Landroid/os/Vibrator$MagnitudeTypes;
    sget-object v1, Lcom/android/server/VibratorService$5;->$SwitchMap$android$os$Vibrator$MagnitudeTypes:[I

    invoke-virtual {v0}, Landroid/os/Vibrator$MagnitudeTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1681
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1671
    :pswitch_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    goto :goto_0

    .line 1673
    :pswitch_1
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    goto :goto_0

    .line 1675
    :pswitch_2
    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    goto :goto_0

    .line 1677
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->getMaxMagnitude()I

    move-result v1

    goto :goto_0

    .line 1679
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/VibratorService;->getMinMagnitude()I

    move-result v1

    goto :goto_0

    .line 1669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMaxMagnitude()I
    .locals 5

    .prologue
    .line 1648
    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 1650
    .local v1, "magnitude":I
    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    :goto_0
    return v1

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default magnitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotorType()I
    .locals 3

    .prologue
    .line 1631
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMotorType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    return v0
.end method

.method public hasVibrator()Z
    .locals 4

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    .line 558
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasVibrator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEnableIntensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsHSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1

    .line 566
    const-string v0, "VibratorService"

    const-string v2, "***** Current vibration info *****"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->printInfo()V

    .line 569
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVibrations.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last package that started the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last package that ended the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    return v0

    .line 575
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isEnableIntensity()Z
    .locals 3

    .prologue
    .line 581
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableIntensity() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 971
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 976
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 981
    return-void
.end method

.method public readFromFile(J)I
    .locals 11
    .param p1, "offset"    # J

    .prologue
    const/4 v7, -0x1

    .line 1836
    const/4 v4, 0x0

    .line 1837
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v8, "/dev/block/param"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1840
    const-string v8, "VibratorService"

    const-string v9, "It\'s not Factory Binary"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1877
    :goto_0
    return v6

    .line 1844
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1845
    const-string v8, "VibratorService"

    const-string v9, "/dev/block/param is not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1846
    goto :goto_0

    .line 1848
    :cond_1
    const/4 v6, -0x1

    .line 1852
    .local v6, "value":I
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1858
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1860
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1861
    .local v0, "byteData":[B
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1863
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 1865
    const-string v8, "VibratorService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get frequency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 1877
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1853
    .end local v0    # "byteData":[B
    :catch_0
    move-exception v1

    .line 1854
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v7

    .line 1855
    goto :goto_0

    .line 1867
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1868
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1870
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v6, v7

    .line 1874
    goto :goto_0

    .line 1871
    :catch_2
    move-exception v2

    .line 1872
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1867
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method reloadContentObserver()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, -0x2

    .line 1685
    sget-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v3, :cond_1

    .line 1686
    iget-object v3, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1687
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1688
    iget-object v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1691
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 1692
    .local v1, "magnitudeMaxLevel":I
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 1693
    .local v2, "touchMagnitudeMaxLevel":I
    if-lt v1, v7, :cond_0

    if-ge v2, v7, :cond_2

    .line 1694
    :cond_0
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "magnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", touchMagnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    .end local v1    # "magnitudeMaxLevel":I
    .end local v2    # "touchMagnitudeMaxLevel":I
    :cond_1
    :goto_0
    return-void

    .line 1699
    .restart local v1    # "magnitudeMaxLevel":I
    .restart local v2    # "touchMagnitudeMaxLevel":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1700
    .local v0, "magnitudeLevel":I
    if-le v0, v2, :cond_3

    .end local v0    # "magnitudeLevel":I
    :goto_1
    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 1702
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1703
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v1, :cond_4

    .end local v0    # "magnitudeLevel":I
    :goto_2
    iput v0, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 1705
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1706
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v1, :cond_5

    .end local v0    # "magnitudeLevel":I
    :goto_3
    iput v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 1708
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v1

    iput v3, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 1709
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v8

    iput v3, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 1711
    sget-boolean v3, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v3, :cond_1

    .line 1712
    iget v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto :goto_0

    .line 1700
    .restart local v0    # "magnitudeLevel":I
    :cond_3
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v3, v0

    goto :goto_1

    .line 1703
    :cond_4
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    goto :goto_2

    .line 1706
    :cond_5
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    goto :goto_3
.end method

.method public resetMagnitude()V
    .locals 2

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1623
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_1

    .line 1628
    :goto_0
    return-void

    .line 1626
    :cond_1
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 1627
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    goto :goto_0
.end method

.method public setMagnitude(I)V
    .locals 2
    .param p1, "magnitude"    # I

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1608
    :cond_0
    if-gez p1, :cond_2

    .line 1609
    const/4 p1, 0x0

    .line 1613
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 1614
    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 1615
    return-void

    .line 1610
    :cond_2
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    if-le p1, v0, :cond_1

    .line 1611
    iget p1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 505
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 507
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 508
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 520
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 528
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 542
    return-void
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 599
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v2, :cond_1

    .line 606
    const-string v2, "VibratorService"

    const-string/jumbo v4, "vibrate() : HMTMount is TRUE. "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 614
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 619
    :cond_2
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_3
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 634
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 636
    .local v12, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 637
    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 638
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 639
    iput-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 640
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 641
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 642
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 642
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 644
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;II)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I
    .param p7, "usageHint"    # I

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v0, :cond_1

    .line 1588
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibrateCommonPatternMagnitude() : HMTMount is TRUE. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_0
    return-void

    .line 1592
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v3

    .line 1593
    .local v3, "vibePattern":[J
    array-length v0, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1594
    const/4 v0, 0x0

    aget-wide v0, v3, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 1595
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p7

    move-object v6, p5

    move v7, p6

    .line 1599
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;I)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v0, :cond_1

    .line 1236
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibrateMagnitude() : HMTMount is TRUE. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :goto_0
    return-void

    .line 1241
    :cond_1
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateMagnitude - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", def: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v0, -0x1

    if-ne p7, v0, :cond_3

    .line 1245
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v0, :cond_2

    .line 1246
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1247
    :try_start_0
    invoke-virtual {p0, p6}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 1248
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1251
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_0

    .line 1253
    :cond_3
    if-nez p7, :cond_4

    .line 1254
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1255
    :try_start_1
    invoke-virtual {p0, p6}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 1256
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1259
    :cond_4
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 713
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v3, :cond_1

    .line 720
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePattern() : HMTMount is TRUE. "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 738
    .local v12, "identity":J
    if-eqz p3, :cond_2

    :try_start_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p3

    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    if-nez p6, :cond_3

    .line 767
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 744
    :cond_3
    :try_start_1
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 746
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 751
    :try_start_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 752
    :try_start_4
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 753
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 754
    if-ltz p4, :cond_4

    .line 755
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 756
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 763
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 764
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 767
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 747
    :catch_0
    move-exception v10

    .line 767
    .local v10, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 760
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_5
    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 761
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_1

    .line 764
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 767
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1267
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1271
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v3, :cond_1

    .line 1272
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePatternMagnitude() : HMTMount is TRUE. "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :goto_0
    return-void

    .line 1276
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 1278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1290
    .local v14, "identity":J
    if-eqz p3, :cond_2

    :try_start_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    if-nez p6, :cond_3

    .line 1293
    :cond_2
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1341
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1299
    :cond_3
    :try_start_1
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratePatternMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", def: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v3, -0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_5

    .line 1303
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v3, :cond_4

    .line 1304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1305
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 1306
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1341
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1306
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1341
    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1309
    :cond_4
    :try_start_5
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPatternFrequency([J)I

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1320
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_1
    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1325
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1326
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1327
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1328
    if-ltz p4, :cond_7

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1330
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 1337
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1338
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1341
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1311
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_5
    if-nez p7, :cond_6

    .line 1312
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1313
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 1314
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1341
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1314
    :catchall_2
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v3

    .line 1317
    :cond_6
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPatternFrequency([J)I

    move-result v11

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .restart local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    goto :goto_1

    .line 1321
    :catch_0
    move-exception v12

    .line 1341
    .local v12, "e":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1334
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_d
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1335
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_2

    .line 1338
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method public writeToFile(JI)Z
    .locals 11
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1784
    const/4 v4, 0x0

    .line 1785
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v8, "/dev/block/param"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1787
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1788
    const-string v7, "VibratorService"

    const-string v8, "It\'s not Factory Binary"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :goto_0
    return v6

    .line 1792
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1793
    const-string v7, "VibratorService"

    const-string v8, "/dev/block/param is not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1799
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1805
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1807
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1808
    .local v0, "byteData":[B
    const/4 v8, 0x0

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1809
    const/4 v8, 0x1

    shr-int/lit8 v9, p3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1810
    const/4 v8, 0x2

    shr-int/lit8 v9, p3, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1811
    const/4 v8, 0x3

    shr-int/lit8 v9, p3, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1813
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1814
    const/4 v8, 0x1

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1815
    const/4 v8, 0x2

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1816
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1818
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    move v6, v7

    .line 1829
    goto :goto_0

    .line 1800
    .end local v0    # "byteData":[B
    :catch_0
    move-exception v1

    .line 1801
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1819
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1820
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1822
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1823
    :catch_2
    move-exception v2

    .line 1824
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1819
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method
