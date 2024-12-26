.class public Lcom/android/internal/os/GpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "GpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpuPowerCalculator"


# instance fields
.field private final mPowerGpuNormal:[D

.field private final mSpeedStepTimes:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v1

    .line 38
    .local v1, "speedSteps":I
    const-string v2, "GpuPowerCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "speedSteps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-array v2, v1, [D

    iput-object v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    .line 40
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    .line 41
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    iget-object v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    const-string v3, "gpu.active"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 43
    const-string v2, "GpuPowerCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GpuPowerCalculator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 12
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 50
    iget-object v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    array-length v6, v8

    .line 52
    .local v6, "speedSteps":I
    const/4 v7, 0x0

    .local v7, "step":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 53
    iget-object v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    move/from16 v0, p7

    invoke-virtual {p2, v7, v0}, Landroid/os/BatteryStats$Uid;->getTimeAtGpuSpeed(II)J

    move-result-wide v10

    aput-wide v10, v8, v7

    .line 52
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "gpuPowerMaMs":D
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    .line 58
    iget-object v8, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    aget-wide v8, v8, v7

    long-to-double v8, v8

    iget-object v10, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    aget-wide v10, v10, v7

    mul-double v4, v8, v10

    .line 63
    .local v4, "gpuSpeedStepPower":D
    add-double/2addr v2, v4

    .line 57
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 71
    .end local v4    # "gpuSpeedStepPower":D
    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_2

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double v8, v2, v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    .line 72
    :cond_2
    return-void
.end method
