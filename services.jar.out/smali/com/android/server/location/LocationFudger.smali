.class public Lcom/android/server/location/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field private static final APPROXIMATE_METERS_PER_DEGREE_AT_EQUATOR:I = 0x1b198

.field private static final CHANGE_INTERVAL_MS:J = 0x36ee80L

.field private static final CHANGE_PER_INTERVAL:D = 0.03

.field private static final COARSE_ACCURACY_CONFIG_NAME:Ljava/lang/String; = "locationCoarseAccuracy"

.field private static final D:Z = false

.field private static final DEFAULT_ACCURACY_IN_METERS:F = 2000.0f

.field public static final FASTEST_INTERVAL_MS:J = 0x927c0L

.field private static final MAX_LATITUDE:D = 89.999990990991

.field private static final MINIMUM_ACCURACY_IN_METERS:F = 200.0f

.field private static final NEW_WEIGHT:D = 0.03

.field private static final PREVIOUS_WEIGHT:D

.field private static final TAG:Ljava/lang/String; = "LocationFudge"


# instance fields
.field private mAccuracyInMeters:F

.field private final mContext:Landroid/content/Context;

.field private mGridSizeInMeters:D

.field private final mLock:Ljava/lang/Object;

.field private mNextInterval:J

.field private mOffsetLatitudeMeters:D

.field private mOffsetLongitudeMeters:D

.field private final mRandom:Ljava/security/SecureRandom;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStandardDeviationInMeters:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/LocationFudger;->PREVIOUS_WEIGHT:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationFudger;->mRandom:Ljava/security/SecureRandom;

    iput-object p1, p0, Lcom/android/server/location/LocationFudger;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/LocationFudger$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/location/LocationFudger$1;-><init>(Lcom/android/server/location/LocationFudger;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/LocationFudger;->mSettingsObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/server/location/LocationFudger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "locationCoarseAccuracy"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/location/LocationFudger;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->loadCoarseAccuracy()F

    move-result v0

    .local v0, "accuracy":F
    iget-object v2, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationFudger;->setAccuracyInMetersLocked(F)V

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/location/LocationFudger;->mNextInterval:J

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationFudger;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationFudger;

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->loadCoarseAccuracy()F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationFudger;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationFudger;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->setAccuracyInMeters(F)V

    return-void
.end method

.method private addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->createCoarseLocked(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .local v0, "coarse":Landroid/location/Location;
    const-string v1, "coarseLocation"

    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    return-object v0
.end method

.method private createCoarseLocked(Landroid/location/Location;)Landroid/location/Location;
    .locals 12
    .param p1, "fine"    # Landroid/location/Location;

    .prologue
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .local v0, "coarse":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .local v2, "lat":D
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .local v6, "lon":D
    invoke-static {v2, v3}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->updateRandomOffsetLocked()V

    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    invoke-static {v10, v11, v2, v3}, Lcom/android/server/location/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    invoke-static {v10, v11}, Lcom/android/server/location/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v10

    add-double/2addr v2, v10

    invoke-static {v2, v3}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    move-result-wide v6

    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    invoke-static {v10, v11}, Lcom/android/server/location/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v4

    .local v4, "latGranularity":D
    div-double v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double v2, v10, v4

    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    invoke-static {v10, v11, v2, v3}, Lcom/android/server/location/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v8

    .local v8, "lonGranularity":D
    div-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double v6, v10, v8

    invoke-static {v2, v3}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    move-result-wide v6

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    iget v1, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    return-object v0
.end method

.method private loadCoarseAccuracy()F
    .locals 5

    .prologue
    const/high16 v2, 0x44fa0000    # 2000.0f

    iget-object v3, p0, Lcom/android/server/location/LocationFudger;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "locationCoarseAccuracy"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "newSetting":Ljava/lang/String;
    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static metersToDegreesLatitude(D)D
    .locals 2
    .param p0, "distance"    # D

    .prologue
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static metersToDegreesLongitude(DD)D
    .locals 4
    .param p0, "distance"    # D
    .param p2, "lat"    # D

    .prologue
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private nextOffsetLocked()D
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/location/LocationFudger;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextGaussian()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mStandardDeviationInMeters:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private setAccuracyInMeters(F)V
    .locals 2
    .param p1, "accuracyInMeters"    # F

    .prologue
    iget-object v1, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->setAccuracyInMetersLocked(F)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setAccuracyInMetersLocked(F)V
    .locals 4
    .param p1, "accuracyInMeters"    # F

    .prologue
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    iget v0, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    iget-wide v0, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/LocationFudger;->mStandardDeviationInMeters:D

    return-void
.end method

.method private updateRandomOffsetLocked()V
    .locals 8

    .prologue
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mNextInterval:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mNextInterval:J

    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    sget-wide v4, Lcom/android/server/location/LocationFudger;->PREVIOUS_WEIGHT:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    sget-wide v4, Lcom/android/server/location/LocationFudger;->PREVIOUS_WEIGHT:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    goto :goto_0
.end method

.method private static wrapLatitude(D)D
    .locals 2
    .param p0, "lat"    # D

    .prologue
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide p0, 0x40567fffda36a676L    # 89.999990990991

    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-wide p0, -0x3fa9800025c9598aL    # -89.999990990991

    :cond_1
    return-wide p0
.end method

.method private static wrapLongitude(D)D
    .locals 4
    .param p0, "lon"    # D

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v2

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    sub-double/2addr p0, v2

    :cond_0
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    add-double/2addr p0, v2

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "offset: %.0f, %.0f (meters)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOrCreate(Landroid/location/Location;)Landroid/location/Location;
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v2, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "coarseLocation"

    invoke-virtual {p1, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .local v0, "coarse":Landroid/location/Location;
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .end local v0    # "coarse":Landroid/location/Location;
    monitor-exit v2

    :goto_0
    return-object v0

    .restart local v0    # "coarse":Landroid/location/Location;
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget v3, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .end local v0    # "coarse":Landroid/location/Location;
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "coarse":Landroid/location/Location;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
