.class public Lcom/samsung/android/allaroundsensing/AASManagerService;
.super Lcom/samsung/android/allaroundsensing/IAASManager$Stub;
.source "AASManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AASManagerService"


# instance fields
.field private final DEBUG:Z

.field private aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

.field private mBVenable:Z

.field private mBrightnessValue:F

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPlatformBrightnessValue:I

.field private mUseAllAroundSensingConfig:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;-><init>()V

    .line 39
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->DEBUG:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    .line 50
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-direct {v0, p1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    return v0
.end method

.method public getBrightnessValueEnable()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    return v0
.end method

.method public getPlatformBrightnessValue()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mPlatformBrightnessValue:I

    return v0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 74
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightnessValueEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 88
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlatformBrightnessValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mPlatformBrightnessValue:I

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
