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
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-direct {v0, p1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    return v0
.end method

.method public getBrightnessValueEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    return v0
.end method

.method public getPlatformBrightnessValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mPlatformBrightnessValue:I

    return v0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    monitor-exit v1

    return-void

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
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    monitor-exit v1

    return-void

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
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mPlatformBrightnessValue:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
