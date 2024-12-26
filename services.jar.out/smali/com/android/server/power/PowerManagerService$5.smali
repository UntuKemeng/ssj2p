.class Lcom/android/server/power/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1

    .prologue
    .line 3984
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3985
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$5;->mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .locals 1

    .prologue
    .line 4186
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4187
    return-void
.end method

.method public onColorFadeExit(Z)V
    .locals 7
    .param p1, "exit"    # Z

    .prologue
    .line 4172
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[input device light] onColorFadeExit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4174
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$4202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4175
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4176
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 4177
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 4181
    :cond_0
    return-void
.end method

.method public onDisplayStateChange(II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 4051
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4052
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService$5;->mDisplayState:I

    if-eq v1, p2, :cond_1

    .line 4053
    iput p2, p0, Lcom/android/server/power/PowerManagerService$5;->mDisplayState:I

    .line 4055
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 4056
    .local v0, "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    if-ne p2, v3, :cond_2

    .line 4065
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4066
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$3500(Lcom/android/server/power/PowerManagerService;Z)V

    .line 4067
    const-string/jumbo v1, "nativeSetAutoSuspend(true)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 4070
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$3602(Lcom/android/server/power/PowerManagerService;I)I

    .line 4071
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J
    invoke-static {v1, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$3702(Lcom/android/server/power/PowerManagerService;J)J

    .line 4072
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4124
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 4125
    return-void

    .line 4075
    .restart local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4076
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$3500(Lcom/android/server/power/PowerManagerService;Z)V

    .line 4077
    const-string/jumbo v1, "nativeSetAutoSuspend(false)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 4089
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4124
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProximityNegative()V
    .locals 9

    .prologue
    .line 4020
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 4022
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v1, "[s] DisplayPowerCallbacks : onProximityNegative()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4025
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 4027
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v1, " proximity far"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3084(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    .line 4037
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x10

    # setter for: Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3102(Lcom/android/server/power/PowerManagerService;I)I

    .line 4039
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    # invokes: Lcom/android/server/power/PowerManagerService;->getWakeUpReasonString(I)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    .line 4042
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 4043
    monitor-exit v8

    .line 4044
    return-void

    .line 4043
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 8

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4002
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v1, "[s] DisplayPowerCallbacks : onProximityPositive()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4005
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 4009
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v1, " proximity close"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2884(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    .line 4011
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 4014
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 4015
    monitor-exit v7

    .line 4016
    return-void

    .line 4015
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSetInteractiveNeeded(II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    const-wide/16 v4, 0x32

    .line 4130
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 4149
    .local v0, "setInteractiveTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 4150
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4151
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(ZI)V
    invoke-static {v1, v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;ZI)V

    .line 4152
    const-string/jumbo v1, "nativeSetInteractive(false)"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 4166
    :cond_0
    :goto_0
    return-void

    .line 4155
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4156
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(ZI)V
    invoke-static {v1, v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;ZI)V

    .line 4157
    const-string/jumbo v1, "nativeSetInteractive(true)"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3991
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "[s] DisplayPowerCallbacks : onStateChanged()"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 3994
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 3995
    monitor-exit v1

    .line 3996
    return-void

    .line 3995
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSuspendBlocker()V
    .locals 1

    .prologue
    .line 4191
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4196
    monitor-enter p0

    .line 4197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$5;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 4198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
