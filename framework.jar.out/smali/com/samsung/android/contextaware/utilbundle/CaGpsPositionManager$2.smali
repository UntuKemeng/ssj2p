.class Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->notifyListener(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D
    invoke-static {v0, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->access$302(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D
    invoke-static {v0, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->access$402(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-string v0, "Location service is disabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-string v0, "Location service is enabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "out of service"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "temporarily unavailable"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "available"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
