.class Lcom/android/server/BatteryService$18;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 1966
    iput-object p1, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1969
    const-wide/16 v0, 0x0

    .line 1970
    .local v0, "batteryLevelNow":J
    const-wide/16 v2, 0x0

    .line 1971
    .local v2, "usage":J
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1972
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$3300(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v0, v4

    .line 1973
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$4600(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-lez v4, :cond_0

    .line 1974
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$4600(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 1975
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[BatteryInfo] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$4600(Lcom/android/server/BatteryService;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v4, v0, v1}, Lcom/android/server/BatteryService;->access$4602(Lcom/android/server/BatteryService;J)J

    .line 1979
    :cond_0
    monitor-exit v5

    .line 1980
    cmp-long v4, v2, v10

    if-gtz v4, :cond_1

    .line 1993
    :goto_0
    return-void

    .line 1979
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1983
    :cond_1
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1984
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$3800(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-gez v4, :cond_2

    .line 1985
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    iget-object v6, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$3900(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v4, v6, v7}, Lcom/android/server/BatteryService;->access$3802(Lcom/android/server/BatteryService;J)J

    .line 1987
    :cond_2
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # += operator for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v4, v2, v3}, Lcom/android/server/BatteryService;->access$3814(Lcom/android/server/BatteryService;J)J

    .line 1988
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    iget-object v7, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$3800(Lcom/android/server/BatteryService;)J

    move-result-wide v8

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v4, v6, v8, v9}, Lcom/android/server/BatteryService;->access$4100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 1989
    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$4000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1990
    iget-object v4, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v7, p0, Lcom/android/server/BatteryService$18;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$3800(Lcom/android/server/BatteryService;)J

    move-result-wide v8

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v4, v6, v8, v9}, Lcom/android/server/BatteryService;->access$4100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 1992
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method
