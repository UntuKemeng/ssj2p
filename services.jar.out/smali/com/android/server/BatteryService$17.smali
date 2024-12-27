.class Lcom/android/server/BatteryService$17;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->InitBatteryInfo()V
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
    iput-object p1, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "!@[BatteryInfo] InitBatteryInfo()"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3700(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$3602(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3900(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$3802(Lcom/android/server/BatteryService;J)J

    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$4000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v3, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$3800(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v0, v2, v4, v5}, Lcom/android/server/BatteryService;->access$4100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$4300(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$4202(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$4500(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$4402(Lcom/android/server/BatteryService;J)J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
