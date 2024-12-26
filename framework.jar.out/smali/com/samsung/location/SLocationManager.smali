.class public Lcom/samsung/location/SLocationManager;
.super Ljava/lang/Object;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;,
        Lcom/samsung/location/SLocationManager$LocListenerTransport;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.location.SERVICE_READY"

.field public static final CURRENTLOCATION_POI_CATEGORY_ALL:I = 0x1

.field public static final CURRENTLOCATION_POI_CATEGORY_ART_ENTERTAINMENT:I = 0x2

.field public static final CURRENTLOCATION_POI_CATEGORY_COLLEGE_UNIVERSITY:I = 0x4

.field public static final CURRENTLOCATION_POI_CATEGORY_FOOD:I = 0x8

.field public static final CURRENTLOCATION_POI_CATEGORY_NONE:I = 0x0

.field public static final CURRENTLOCATION_POI_CATEGORY_OUTDOORS_RECREATION:I = 0x10

.field public static final CURRENTLOCATION_POI_CATEGORY_PROFESSIONAL:I = 0x20

.field public static final CURRENTLOCATION_POI_CATEGORY_SHOP_SERVICE:I = 0x40

.field public static final CURRENTLOCATION_POI_CATEGORY_TRAVEL_TRANSPORT:I = 0x80

.field public static final CURRENT_LOCATION:Ljava/lang/String; = "currentlocation"

.field public static final CURRENT_LOCATION_ADDRESS:Ljava/lang/String; = "currentlocationaddress"

.field public static final CURRENT_LOCATION_POI:Ljava/lang/String; = "currentlocationpoi"

.field public static final ERROR_ALREADY_STARTED:I = -0x5

.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ID_NOT_EXIST:I = -0x3

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_LOCATION_CURRENTLY_UNAVAILABLE:I = -0x64

.field public static final ERROR_NOT_INITIALIZED:I = -0x1

.field public static final ERROR_TOO_MANY_GEOFENCE:I = -0x6

.field public static final GEOFENCE_ENTER:I = 0x1

.field public static final GEOFENCE_EXIT:I = 0x2

.field public static final GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final GEOFENCE_TYPE_BT:I = 0x3

.field public static final GEOFENCE_TYPE_EVENT:I = 0x4

.field public static final GEOFENCE_TYPE_GEOPOINT:I = 0x1

.field public static final GEOFENCE_TYPE_WIFI:I = 0x2

.field public static final GEOFENCE_UNKNOWN:I = 0x0

.field public static final OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_ALWAYS_SCAN:Ljava/lang/String; = "permissionalwaysscan"

.field private static final TAG:Ljava/lang/String; = "SLocationManager"


# instance fields
.field private mCurrentLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SCurrentLocListener;",
            "Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SLocationListener;",
            "Lcom/samsung/location/SLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/samsung/location/ISLocationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/location/ISLocationManager;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/location/ISLocationManager;

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    .line 444
    iput-object p1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    .line 445
    return-void
.end method

.method private isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z
    .locals 14
    .param p1, "parameter"    # Lcom/samsung/location/SLocationParameter;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 571
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v6

    .line 572
    .local v6, "type":I
    if-eq v6, v8, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v6, v13, :cond_0

    const/4 v9, 0x4

    if-eq v6, v9, :cond_0

    .line 573
    const-string v8, "SLocationManager"

    const-string v9, "geofenceType is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    return v7

    .line 576
    :cond_0
    if-ne v6, v8, :cond_5

    .line 577
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getLatitude()D

    move-result-wide v2

    .line 578
    .local v2, "latitude":D
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getLongitude()D

    move-result-wide v4

    .line 579
    .local v4, "longitude":D
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getRadius()I

    move-result v1

    .line 580
    .local v1, "radius":I
    const-wide v10, -0x3fa9800000000000L    # -90.0

    cmpg-double v9, v2, v10

    if-ltz v9, :cond_1

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v9, v2, v10

    if-lez v9, :cond_2

    .line 581
    :cond_1
    const-string v8, "SLocationManager"

    const-string v9, "latitude is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    :cond_2
    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v9, v4, v10

    if-ltz v9, :cond_3

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v9, v4, v10

    if-lez v9, :cond_4

    .line 585
    :cond_3
    const-string v8, "SLocationManager"

    const-string v9, "longitude is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_4
    const/16 v9, 0x64

    if-ge v1, v9, :cond_5

    .line 589
    const-string v8, "SLocationManager"

    const-string v9, "radius is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    .end local v1    # "radius":I
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :cond_5
    if-eq v6, v12, :cond_6

    if-ne v6, v13, :cond_7

    .line 594
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getBssid()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 596
    const-string v8, "SLocationManager"

    const-string v9, "bssid is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "bssid":Ljava/lang/String;
    :cond_7
    move v7, v8

    .line 600
    goto :goto_0
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/location/SLocationParameter;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/location/SLocationParameter;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 488
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, -0x1

    .line 498
    :goto_0
    return v1

    .line 491
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationManager;->isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    const/4 v1, -0x2

    goto :goto_0

    .line 495
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->addGeofence(Lcom/samsung/location/SLocationParameter;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public checkPassiveLocation()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1085
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 1086
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :goto_0
    return v1

    .line 1090
    :cond_0
    :try_start_0
    const-string v2, "SLocationManager"

    const-string v3, "checkPassiveLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2}, Lcom/samsung/location/ISLocationManager;->checkPassiveLocation()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPassiveLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCurrentLocation(ILcom/samsung/location/SCurrentLocListener;)I
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SCurrentLocListener;

    .prologue
    const/4 v2, -0x4

    .line 1055
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 1056
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v2, -0x1

    .line 1076
    :goto_0
    return v2

    .line 1059
    :cond_0
    if-nez p2, :cond_1

    .line 1060
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v2, -0x2

    goto :goto_0

    .line 1064
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :try_start_1
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    .line 1066
    .local v1, "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 1067
    const-string v3, "SLocationManager"

    const-string v5, "already removeCurrentLocation"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    monitor-exit v4

    goto :goto_0

    .line 1073
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCurrentLocation: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1070
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :cond_2
    :try_start_3
    const-string v3, "SLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeCurrentLocation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, p1}, Lcom/samsung/location/ISLocationManager;->removeCurrentLocation(I)I

    move-result v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    goto :goto_0
.end method

.method public removeGeofence(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 509
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 510
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v1, -0x1

    .line 517
    :goto_0
    return v1

    .line 514
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->removeGeofence(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public removeLocation(Lcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 941
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 942
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v2, -0x1

    .line 961
    :goto_0
    return v2

    .line 945
    :cond_0
    if-nez p1, :cond_1

    .line 946
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v2, -0x2

    goto :goto_0

    .line 951
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 952
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 953
    const-string v2, "SLocationManager"

    const-string v3, "Already stopped location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v2, -0x3

    goto :goto_0

    .line 957
    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/location/ISLocationManager;->removeLocation(Lcom/samsung/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 959
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 960
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public removeSingleLocation(Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 883
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 884
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v1, -0x1

    .line 895
    :goto_0
    return v1

    .line 887
    :cond_0
    if-nez p1, :cond_1

    .line 888
    const-string v1, "SLocationManager"

    const-string v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v1, -0x2

    goto :goto_0

    .line 892
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestBatchOfLocations()I
    .locals 4

    .prologue
    .line 777
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 778
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v1, -0x1

    .line 786
    :goto_0
    return v1

    .line 782
    :cond_0
    :try_start_0
    const-string v1, "SLocationManager"

    const-string v2, "requestBatchOfLocations "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/location/ISLocationManager;->requestBatchOfLocations()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestBatchOfLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestCurrentLocation(Lcom/samsung/location/SCurrentLocListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/location/SCurrentLocListener;

    .prologue
    .line 1025
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 1026
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v2, -0x1

    .line 1045
    :goto_0
    return v2

    .line 1029
    :cond_0
    if-nez p1, :cond_1

    .line 1030
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v2, -0x2

    goto :goto_0

    .line 1034
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    .line 1036
    .local v1, "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 1037
    new-instance v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SCurrentLocListener;)V

    .line 1039
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string v2, "SLocationManager"

    const-string v4, "requestCurrentLocation "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/location/ISLocationManager;->requestCurrentLocation(Lcom/samsung/location/ISCurrentLocListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1042
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public requestLocation(ZZLcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "isAddress"    # Z
    .param p2, "isPoi"    # Z
    .param p3, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 909
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 910
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v2, -0x1

    .line 929
    :goto_0
    return v2

    .line 913
    :cond_0
    if-nez p3, :cond_1

    .line 914
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v2, -0x2

    goto :goto_0

    .line 918
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 920
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 921
    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p3}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    .line 923
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, p2, v1}, Lcom/samsung/location/ISLocationManager;->requestLocation(ZZLcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 926
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public requestLocationToPoi(DDLandroid/app/PendingIntent;)I
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1002
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 1003
    const-string v3, "SLocationManager"

    const-string v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v3, -0x1

    .line 1016
    :goto_0
    return v3

    .line 1006
    :cond_0
    if-nez p5, :cond_1

    .line 1007
    const-string v3, "SLocationManager"

    const-string v4, "parameters are not vaild"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v3, -0x2

    goto :goto_0

    .line 1010
    :cond_1
    new-array v1, v5, [D

    aput-wide p1, v1, v4

    .line 1011
    .local v1, "latlist":[D
    new-array v2, v5, [D

    aput-wide p3, v2, v4

    .line 1013
    .local v2, "lonlist":[D
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, v1, v2, p5}, Lcom/samsung/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLocationToPoi: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v3, -0x4

    goto :goto_0
.end method

.method public requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "latitude"    # [D
    .param p2, "longitude"    # [D
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 977
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v1, -0x1

    .line 988
    :goto_0
    return v1

    .line 980
    :cond_0
    if-nez p3, :cond_1

    .line 981
    const-string v1, "SLocationManager"

    const-string v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v1, -0x2

    goto :goto_0

    .line 985
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestSingleLocation(IIIZLandroid/app/PendingIntent;)I
    .locals 7
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "poicategory"    # I
    .param p4, "isAddress"    # Z
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v0, :cond_0

    .line 861
    const-string v0, "SLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v0, -0x1

    .line 872
    :goto_0
    return v0

    .line 864
    :cond_0
    if-eqz p5, :cond_1

    if-gez p3, :cond_2

    .line 865
    :cond_1
    const-string v0, "SLocationManager"

    const-string v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, -0x2

    goto :goto_0

    .line 869
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/location/ISLocationManager;->requestSingleLocation(IIIZLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v6

    .line 871
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v0, "SLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public requestSingleLocation(IILandroid/app/PendingIntent;)I
    .locals 7
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v0, :cond_0

    .line 826
    const-string v0, "SLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, -0x1

    .line 837
    :goto_0
    return v0

    .line 829
    :cond_0
    if-nez p3, :cond_1

    .line 830
    const-string v0, "SLocationManager"

    const-string v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v0, -0x2

    goto :goto_0

    .line 834
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/location/ISLocationManager;->requestSingleLocation(IIIZLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 835
    :catch_0
    move-exception v6

    .line 836
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v0, "SLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public startBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "period"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 648
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 649
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v2, -0x1

    .line 668
    :goto_0
    return v2

    .line 652
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 653
    :cond_1
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, -0x2

    goto :goto_0

    .line 657
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 659
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 660
    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    .line 662
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/location/ISLocationManager;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 665
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public startGeofence(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 529
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 530
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v1, -0x1

    .line 542
    :goto_0
    return v1

    .line 533
    :cond_0
    if-nez p2, :cond_1

    .line 534
    const-string v1, "SLocationManager"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v1, -0x2

    goto :goto_0

    .line 539
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->startGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public startLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 610
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 611
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v1, -0x1

    .line 618
    :goto_0
    return v1

    .line 615
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->startLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public startLocationBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "period"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 714
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 715
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v2, -0x1

    .line 734
    :goto_0
    return v2

    .line 718
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 719
    :cond_1
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v2, -0x2

    goto :goto_0

    .line 723
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 725
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 726
    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    .line 728
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/location/ISLocationManager;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 731
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 679
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 680
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v2, -0x1

    .line 699
    :goto_0
    return v2

    .line 683
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 684
    :cond_1
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v2, -0x2

    goto :goto_0

    .line 688
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 689
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 690
    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v2, -0x3

    goto :goto_0

    .line 694
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 697
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopGeofence(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 554
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 555
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, -0x1

    .line 566
    :goto_0
    return v1

    .line 558
    :cond_0
    if-nez p2, :cond_1

    .line 559
    const-string v1, "SLocationManager"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v1, -0x2

    goto :goto_0

    .line 563
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public stopLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 629
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 630
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v1, -0x1

    .line 637
    :goto_0
    return v1

    .line 634
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->stopLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public stopLocationBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 747
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 748
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v2, -0x1

    .line 767
    :goto_0
    return v2

    .line 751
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 752
    :cond_1
    const-string v2, "SLocationManager"

    const-string v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v2, -0x2

    goto :goto_0

    .line 756
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 757
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 758
    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v2, -0x3

    goto :goto_0

    .line 762
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 765
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public syncGeofence(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "geofenceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 457
    const-string v3, "SLocationManager"

    const-string v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v3, -0x1

    .line 472
    :goto_0
    return v3

    .line 460
    :cond_0
    if-nez p1, :cond_1

    .line 461
    const-string v3, "SLocationManager"

    const-string v4, "geofenceIdList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v3, -0x2

    goto :goto_0

    .line 464
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 465
    .local v2, "list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 466
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, v2}, Lcom/samsung/location/ISLocationManager;->syncGeofence([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v3, -0x4

    goto :goto_0
.end method

.method public updateBatchingOptions(II)I
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "period"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 799
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v1, -0x1

    .line 810
    :goto_0
    return v1

    .line 802
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 803
    :cond_1
    const-string v1, "SLocationManager"

    const-string v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v1, -0x2

    goto :goto_0

    .line 807
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->updateBatchingOptions(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBatchingOptions: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v1, -0x4

    goto :goto_0
.end method
