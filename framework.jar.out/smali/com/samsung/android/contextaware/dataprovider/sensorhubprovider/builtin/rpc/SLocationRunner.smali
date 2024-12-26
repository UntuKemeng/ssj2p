.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLocationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;
    }
.end annotation


# instance fields
.field private isARStarted:Z

.field private mGeofenceUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mGeofences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mPauseResume:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 80
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 81
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 82
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    .line 83
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    .line 99
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 100
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    .line 103
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 529
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 530
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 531
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 518
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 519
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 520
    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public final enable()V
    .locals 8

    .prologue
    .line 466
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 467
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 471
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 472
    .local v4, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 473
    const/16 v6, 0x46

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->setProperty(ILjava/lang/Object;)Z

    .line 477
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 478
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 480
    .local v2, "geofences":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 481
    .local v0, "geofence":[I
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 482
    .restart local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 483
    const/16 v6, 0x44

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->setProperty(ILjava/lang/Object;)Z

    goto :goto_0

    .line 489
    .end local v0    # "geofence":[I
    .end local v2    # "geofences":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 490
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 492
    .local v1, "geofenceUpdates":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 493
    .local v5, "update":[I
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 494
    .restart local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 495
    const/16 v6, 0x47

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->setProperty(ILjava/lang/Object;)Z

    goto :goto_1

    .line 501
    .end local v1    # "geofenceUpdates":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "update":[I
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    if-eqz v6, :cond_2

    .line 502
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 503
    .restart local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 504
    const/16 v6, 0x49

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->setProperty(ILjava/lang/Object;)Z

    .line 507
    :cond_2
    return-void

    .line 503
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 414
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GeoFenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GeoFenceStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TotalGpsCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SuccessGpsCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FunctionType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ErrorCode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EventTypeArray"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EventStatusArray"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DataArray"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 554
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x37

    return v0
.end method

.method public getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v7, "outerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "coreDetectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v5, "gpsCountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "ARList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, "coreDistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, "coreErrorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v4, "dumpStateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "names":[Ljava/lang/String;
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SuccessGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x5

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->FunctionType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->ErrorCode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v8, "repeatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventTypeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventStatusArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-direct {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    return-object v7
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 442
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 454
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    .line 541
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 24
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/16 v16, 0x1

    .line 139
    .local v16, "result":Z
    const/16 v18, 0x44

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 140
    const-string v18, "Add"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 142
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v7, v18

    check-cast v7, [I

    .line 146
    .local v7, "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 147
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 148
    const/16 v16, 0x0

    .line 322
    .end local v7    # "data":[I
    :goto_0
    return v16

    .line 150
    .restart local v7    # "data":[I
    :cond_0
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 151
    .local v11, "geofence":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v12, v0, :cond_1

    .line 152
    aget v18, v7, v12

    aput v18, v11, v12

    .line 151
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 157
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 158
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 159
    .local v5, "byteArray":[B
    const/16 v18, 0x2

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 161
    .local v14, "packet":[B
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    .line 168
    .end local v5    # "byteArray":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .end local v11    # "geofence":[I
    .end local v12    # "i":I
    .end local v14    # "packet":[B
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v18, 0x45

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 169
    const-string v18, "Remove"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 173
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 176
    .local v10, "geoFenceId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x2

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-static {v10, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 185
    .end local v10    # "geoFenceId":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/16 v18, 0x46

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 186
    const-string v18, "PauseResume"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 190
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 193
    .local v15, "pauseResume":I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 195
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x3

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-static {v15, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 201
    .end local v15    # "pauseResume":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_4
    const/16 v18, 0x47

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 202
    const-string v18, "Update"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 204
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v7, v18

    check-cast v7, [I

    .line 208
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 209
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 210
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 212
    :cond_5
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 213
    .local v17, "update":[I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v12, v0, :cond_6

    .line 214
    aget v18, v7, v12

    aput v18, v17, v12

    .line 213
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 216
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 221
    .local v13, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    :try_start_0
    aget v18, v7, v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    const/16 v18, 0x1

    aget v18, v7, v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    const/16 v18, 0x2

    aget v18, v7, v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_3
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x4

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 224
    :catch_0
    move-exception v8

    .line 225
    .local v8, "e":Ljava/io/IOException;
    const-string v18, "error converting"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 236
    .end local v7    # "data":[I
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "i":I
    .end local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "update":[I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_7
    const/16 v18, 0x48

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 237
    const-string v18, "Set Loc"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 239
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v7, v18

    check-cast v7, [I

    .line 243
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 244
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 245
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 248
    :cond_8
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 249
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 250
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 257
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_9
    const/16 v18, 0x49

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 258
    const-string v18, "Start AR"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 260
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v7, v18

    check-cast v7, [I

    .line 264
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 265
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 266
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 268
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 270
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    .restart local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    :try_start_1
    aget v18, v7, v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 274
    const/16 v18, 0x1

    aget v18, v7, v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_4
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x6

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 275
    :catch_1
    move-exception v8

    .line 276
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v18, "error converting"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 287
    .end local v7    # "data":[I
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_b
    const/16 v18, 0x4a

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 288
    const-string v18, "Stop AR"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 290
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 292
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x7

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput-byte v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 298
    :cond_c
    const/16 v18, 0x4b

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 299
    const-string v18, "CurLoc func"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 303
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 305
    .local v9, "func":I
    const/16 v18, 0x17

    const/16 v19, 0x37

    const/16 v20, 0x8

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v9, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 311
    .end local v9    # "func":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_d
    const/16 v18, 0x4e

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 312
    const-string v18, "Status remove"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 314
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 315
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 320
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0
.end method
