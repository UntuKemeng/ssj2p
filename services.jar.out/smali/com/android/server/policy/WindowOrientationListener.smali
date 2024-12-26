.class public abstract Lcom/android/server/policy/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z

.field private static msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

.field private mRate:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:Ljava/lang/String;

.field private mbResultFaceDectection:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 62
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    .line 81
    sput v2, Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 82
    sput v2, Lcom/android/server/policy/WindowOrientationListener;->sCurrentRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 98
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 76
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 117
    iput-boolean v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 119
    .local v1, "packageMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 120
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string/jumbo v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 122
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iput-boolean v6, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    .line 129
    :cond_0
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mbSContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-boolean v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 131
    iput-boolean v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "bsmartrotation":Z
    if-eqz v1, :cond_1

    .line 135
    const-string v2, "com.sec.android.smartface.smart_rotation"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 137
    :cond_1
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartRotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_3

    .line 141
    const-string v2, "WindowOrientationListener"

    const-string v3, "++SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v2, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;Z)V

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 143
    const-string v2, "WindowOrientationListener"

    const-string v3, "--SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    :goto_0
    return-void

    .line 145
    :cond_3
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    .line 148
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10016

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 149
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_4

    .line 150
    new-instance v2, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;Z)V

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-nez v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 156
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_2

    .line 158
    new-instance v2, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;

    invoke-direct {v2, p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/WindowOrientationListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/WindowOrientationListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener;->setFaceDetectionResult(Z)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/WindowOrientationListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$500()Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/policy/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 60
    sput-object p0, Lcom/android/server/policy/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCurrentRotation()I
    .locals 1

    .prologue
    .line 285
    sget v0, Lcom/android/server/policy/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method private insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v2, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static setCurrentAppOrientation(I)V
    .locals 3
    .param p0, "appOrientation"    # I

    .prologue
    .line 277
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentAppOrientation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sput p0, Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 279
    return-void
.end method

.method private setFaceDetectionResult(Z)V
    .locals 2
    .param p1, "ResultFaceDectection"    # Z

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 319
    monitor-exit v1

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    .line 330
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 328
    goto :goto_0

    .line 330
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_2

    :goto_2
    monitor-exit v2

    goto :goto_1

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 330
    goto :goto_2
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 203
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 205
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v1

    .line 226
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_1

    .line 210
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect scontext. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v1

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 214
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 215
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_2

    .line 216
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 223
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 225
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mCurrentRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSContextManager="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 381
    :cond_0
    monitor-exit v1

    .line 382
    return-void

    .line 373
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSensorType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 171
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 173
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v1

    .line 195
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_1

    .line 178
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect scontext. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    monitor-exit v1

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_3

    .line 183
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_2

    .line 184
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->resetLocked()V

    .line 187
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 192
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 194
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getProposedRotation()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 298
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-eqz v2, :cond_1

    .line 300
    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 301
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProposedRotation facedetection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v1

    .line 307
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 307
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .locals 4

    .prologue
    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 239
    .local v0, "whenElapsedNanos":J
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 243
    :cond_0
    monitor-exit v3

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onTouchStart()V
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 233
    :cond_0
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    sput p1, Lcom/android/server/policy/WindowOrientationListener;->sCurrentRotation:I

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSensorDelay(I)V
    .locals 6
    .param p1, "delay"    # I

    .prologue
    .line 250
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    .line 251
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mbSContext:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 256
    :cond_0
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
