.class Lcom/android/server/cover/CoverManagerService$4;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 181
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 173
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged : proximity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 175
    .local v0, "distance":F
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mProximityThreshold:F
    invoke-static {v3}, Lcom/android/server/cover/CoverManagerService;->access$600(Lcom/android/server/cover/CoverManagerService;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    # setter for: Lcom/android/server/cover/CoverManagerService;->mProximityPositive:Z
    invoke-static {v2, v1}, Lcom/android/server/cover/CoverManagerService;->access$502(Lcom/android/server/cover/CoverManagerService;Z)Z

    .line 176
    return-void
.end method
