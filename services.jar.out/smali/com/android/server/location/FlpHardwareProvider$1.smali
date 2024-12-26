.class Lcom/android/server/location/FlpHardwareProvider$1;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/server/location/FlpHardwareProvider$1;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1600(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    const-string v0, "FlpHardwareProvider"

    const-string v1, "Tried to call flushBatchedLocations on an unsupported implementation"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSupportedBatchSize()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$600(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->getVersion()I
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$2100(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 1
    .param p1, "deviceEnabledContext"    # I

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$2000(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 564
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1800(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$300(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$400(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "FlpHardwareProvider"

    const-string v2, "Replacing an existing IFusedLocationHardware sink"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$402(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 449
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$500(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestBatchOfLocations(I)V
    .locals 1
    .param p1, "batchSizeRequested"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1500(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 534
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v2, 0x65

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V
    invoke-static {v1, v2, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$700(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    .line 473
    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v1

    sget v2, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->isSLocationSupported()Z
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$800(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const-string v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert HW FLP request : startBatching id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->access$900(Lcom/android/server/location/FlpHardwareProvider;)Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/location/ISLocationManager;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/location/ISLocationListener;)V

    .line 477
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$1200(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    goto :goto_0
.end method

.method public stopBatching(I)V
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v2, 0x66

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/location/FlpHardwareProvider;->access$700(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    .line 490
    const-string v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert HW FLP request : stopBatching id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->isSLocationSupported()Z
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$800(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->stopCoreBatching(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V
    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1300(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 498
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 500
    :cond_1
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1900(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1700(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$300(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$400(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, v2}, Lcom/android/server/location/FlpHardwareProvider;->access$402(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 460
    :cond_0
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v2, 0x67

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V
    invoke-static {v1, v2, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$700(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->isSLocationSupported()Z
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$800(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    const-string v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v1

    sget v2, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const-string v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert HW FLP request : updateBatchingOptions id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->access$900(Lcom/android/server/location/FlpHardwareProvider;)Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/location/ISLocationManager;->updateCoreBatchingOptions(ILandroid/location/FusedBatchOptions;Lcom/samsung/location/ISLocationListener;)V

    .line 529
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->stopCoreBatching(I)V

    .line 516
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 517
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$1200(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v1

    sget v2, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v1, v2, :cond_2

    .line 519
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V
    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1300(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 520
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/location/ISLocationManager;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->access$900(Lcom/android/server/location/FlpHardwareProvider;)Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/location/ISLocationManager;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/location/ISLocationListener;)V

    .line 521
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$1400(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    goto :goto_0

    .line 525
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$1400(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
