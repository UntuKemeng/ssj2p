.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;,
        Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
    }
.end annotation


# static fields
.field private static final FIRST_VERSION_WITH_FLUSH_LOCATIONS:I = 0x2

.field private static final FIRST_VERSION_WITH_ONLOCATION_CONVERT:I = 0xc9f4

.field private static final FLP_GEOFENCE_MONITOR_STATUS_AVAILABLE:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_UNAVAILABLE:I = 0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MSG_BATCHING_START:I = 0x65

.field private static final MSG_BATCHING_STOP:I = 0x66

.field private static final MSG_BATCHING_UPDATE:I = 0x67

.field private static final MSG_FLP_HARDWARE:I = 0x64

.field private static final MSG_REPORT_LOCATION:I = 0x68

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private mBatchingCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mHaveBatchingCapabilities:Z

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;

.field private mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

.field private mSLocationService:Lcom/samsung/location/ISLocationManager;

.field private mVersion:I

.field private manager:Landroid/location/LocationManager;

.field private onLocationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 384
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 62
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 66
    iput v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 72
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    .line 74
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    .line 99
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    .line 439
    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {v5, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    .line 572
    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$2;

    invoke-direct {v5, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    .line 113
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    .line 116
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    .line 117
    const-wide/16 v2, 0x0

    .line 118
    .local v2, "minTime":J
    const/4 v0, 0x0

    .line 119
    .local v0, "minDistance":F
    const/4 v1, 0x0

    .line 120
    .local v1, "oneShot":Z
    const-string/jumbo v5, "passive"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v4

    .line 127
    .local v4, "request":Landroid/location/LocationRequest;
    invoke-virtual {v4, v11}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 128
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    invoke-direct {v6, p0, v10}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 133
    const-string/jumbo v5, "sec_location"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;

    .line 134
    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    invoke-direct {v5, p0, v10}, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    .line 135
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/location/ISLocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/FlpHardwareProvider;[Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # [Landroid/location/Location;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->onLocationReport([Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # [I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/FlpHardwareProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->isSLocationSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/FlpHardwareProvider;)Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    return-object v0
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 645
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/FlpHardwareProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 106
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    .line 109
    :cond_0
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method private getVersion()I
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    if-eqz v0, :cond_0

    .line 261
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    monitor-exit v1

    .line 264
    :goto_0
    return v0

    .line 263
    :cond_0
    monitor-exit v1

    .line 264
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSLocationSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 150
    const-string v4, "FlpHardwareProvider"

    const-string/jumbo v5, "isSLocationSupported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;

    if-nez v4, :cond_0

    .line 152
    const-string v4, "FlpHardwareProvider"

    const-string/jumbo v5, "mSLocationService is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return v3

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.samsung.location"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 160
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0xc9f4

    if-le v4, v5, :cond_1

    .line 161
    const/4 v3, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const-string v4, "FlpHardwareProvider"

    const-string v5, "SLocation version is not support FlpBatching"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.location.hwflp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedForSec()Z
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private maybeSendCapabilities()V
    .locals 6

    .prologue
    .line 278
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v5

    .line 279
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 280
    .local v3, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    iget-boolean v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 281
    .local v2, "haveBatchingCapabilities":Z
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I

    .line 282
    .local v0, "batchingCapabilities":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 285
    :try_start_1
    invoke-interface {v3, v0}, Landroid/hardware/location/IFusedLocationHardwareSink;->onCapabilities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 282
    .end local v0    # "batchingCapabilities":I
    .end local v2    # "haveBatchingCapabilities":Z
    .end local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 287
    .restart local v0    # "batchingCapabilities":I
    .restart local v2    # "haveBatchingCapabilities":Z
    .restart local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FlpHardwareProvider"

    const-string v5, "RemoteException calling onLocationAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeFlushBatchedLocations()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onBatchingCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 230
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I

    .line 231
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    .line 235
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 238
    :cond_0
    return-void

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onBatchingStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 242
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 244
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    if-eqz v1, :cond_0

    .line 247
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 244
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 249
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FlpHardwareProvider"

    const-string v3, "RemoteException calling onBatchingStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDataReport(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 297
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v2, :cond_0

    .line 300
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 302
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FlpHardwareProvider"

    const-string v3, "RemoteException calling onDiagnosticDataAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onGeofenceAdd(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 357
    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "source"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "updatedLocation":Landroid/location/Location;
    if-eqz p3, :cond_0

    .line 329
    invoke-direct {p0, p3}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    .line 333
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 341
    const-string v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid FlpHal Geofence monitor status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x1

    .line 346
    .local v0, "monitorStatus":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 351
    return-void

    .line 335
    .end local v0    # "monitorStatus":I
    :pswitch_0
    const/4 v0, 0x1

    .line 336
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 338
    .end local v0    # "monitorStatus":I
    :pswitch_1
    const/4 v0, 0x0

    .line 339
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGeofencePause(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 369
    return-void
.end method

.method private onGeofenceRemove(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 363
    return-void
.end method

.method private onGeofenceResume(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 375
    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .locals 8
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J
    .param p6, "sourcesUsed"    # I

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    const/4 v6, 0x1

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 323
    return-void
.end method

.method private onGeofencingCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->onCapabilities(I)V

    .line 379
    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .locals 9
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    .line 202
    const-string v6, "FlpHardwareProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onLocationReport size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v6, 0x68

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V

    .line 208
    move-object v0, p1

    .local v0, "arr$":[Landroid/location/Location;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 209
    .local v4, "location":Landroid/location/Location;
    const-string/jumbo v6, "fused"

    invoke-virtual {v4, v6}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v4    # "location":Landroid/location/Location;
    :cond_0
    iget-object v7, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v7

    .line 216
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 217
    .local v5, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    if-eqz v5, :cond_1

    .line 220
    :try_start_1
    invoke-interface {v5, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    :cond_1
    :goto_1
    return-void

    .line 217
    .end local v5    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 222
    .restart local v5    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "FlpHardwareProvider"

    const-string v7, "RemoteException calling onLocationAvailable"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 682
    const-wide/16 v4, -0x1

    .line 683
    .local v4, "interval":J
    const/4 v6, 0x0

    .line 684
    .local v6, "mSourcesToUse":I
    const/4 v3, 0x0

    .line 685
    .local v3, "mFlags":I
    const-wide/16 v8, 0x0

    .line 686
    .local v8, "maxPowerAlloc":D
    const/4 v10, 0x0

    .line 688
    .local v10, "smallestDisplacementMeters":F
    if-eqz p3, :cond_0

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getPeriodInNS()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long v4, v12, v14

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getSourcesToUse()I

    move-result v6

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v3

    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getMaxPowerAllocationInMW()D

    move-result-wide v8

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getSmallestDisplacementMeters()F

    move-result v10

    .line 696
    :cond_0
    const-string v11, "FlpHardwareProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendInfoToFLP, type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , requestId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , interval="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 699
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "type"

    move/from16 v0, p1

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 700
    const-string/jumbo v11, "requestId"

    move/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 701
    const-string/jumbo v11, "interval"

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 702
    const-string/jumbo v11, "sourcesToUse"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    const-string/jumbo v11, "flags"

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    const-string/jumbo v11, "maxPowerAlloc"

    invoke-virtual {v2, v11, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 705
    const-string/jumbo v11, "smallestDisplacement"

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 707
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 708
    .local v7, "msg":Landroid/os/Message;
    const/16 v11, 0x64

    iput v11, v7, Landroid/os/Message;->what:I

    .line 709
    iput-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 711
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    invoke-virtual {v11, v7}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 712
    return-void
.end method

.method private setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 269
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 272
    :cond_0
    return-void
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .locals 6
    .param p0, "flpHalResult"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 652
    packed-switch p0, :pswitch_data_0

    .line 668
    const-string v3, "FlpHardwareProvider"

    const-string v4, "Invalid FlpHal result code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 669
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 656
    goto :goto_0

    .line 658
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 660
    goto :goto_0

    .line 662
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 664
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 666
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 674
    const-string/jumbo v0, "fused"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 677
    return-object p1
.end method


# virtual methods
.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    return-object v0
.end method
