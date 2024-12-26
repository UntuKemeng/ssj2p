.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 7768
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 7769
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7770
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 7773
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 7774
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 7775
    monitor-exit v1

    .line 7776
    return-void

    .line 7775
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 7780
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 7994
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 7784
    :sswitch_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_1

    .line 7785
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 7786
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 7787
    .local v4, "nmsg":Landroid/os/Message;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7788
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v4, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 7794
    .end local v4    # "nmsg":Landroid/os/Message;
    :cond_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 7798
    :sswitch_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 7801
    :sswitch_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 7802
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 7803
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 7806
    :sswitch_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 7807
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 7808
    const-string v9, "ActivityManager"

    const-string v11, "Sleep timeout!  Sleeping now."

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7809
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 7810
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 7812
    :cond_2
    monitor-exit v10

    goto :goto_0

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v9

    .line 7815
    :sswitch_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_3

    .line 7816
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 7817
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v10, 0x68

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7820
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 7821
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7822
    const-string v9, "ActivityManager"

    const-string v11, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7827
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7829
    :cond_4
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v9

    .line 7832
    :sswitch_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$000(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 7835
    :sswitch_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 7838
    :sswitch_8
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 7841
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 7842
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 7843
    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    .line 7845
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_5

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v0, v10, v9}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 7846
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 7845
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 7853
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_a
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_6

    .line 7854
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 7856
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 7857
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 7858
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 7859
    const/4 v3, 0x0

    .line 7860
    .local v3, "flags":I
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 7861
    const/high16 v3, 0x3bf0000

    .line 7869
    :cond_7
    :goto_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v3, v10, v11}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 7872
    .end local v3    # "flags":I
    :cond_8
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    const-string v11, "Lock-to-App"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 7873
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 7874
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x1

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v9, v12}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 7878
    :cond_9
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(I)V

    .line 7879
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 7881
    :catch_1
    move-exception v2

    .line 7882
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 7863
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "flags":I
    :cond_a
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 7864
    const/high16 v3, 0x29f0000

    goto :goto_2

    .line 7888
    .end local v3    # "flags":I
    :sswitch_b
    :try_start_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 7889
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 7892
    :cond_b
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 7893
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 7894
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v9, v10, v11, v12}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 7897
    :cond_c
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_d

    .line 7898
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 7900
    :cond_d
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 7902
    :try_start_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "lock_to_app_exit_locked"

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_10

    const/4 v7, 0x1

    .line 7906
    .local v7, "shouldLockKeyguard":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    if-eqz v7, :cond_f

    .line 7907
    const/4 v6, 0x0

    .line 7909
    .local v6, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    const-string/jumbo v9, "restriction_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v6

    .line 7912
    if-eqz v6, :cond_e

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/app/enterprise/IRestrictionPolicy;->isScreenPinningAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 7913
    :cond_e
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 7914
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 7915
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 7927
    .end local v6    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .end local v7    # "shouldLockKeyguard":Z
    :cond_f
    :goto_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 7929
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(I)V

    .line 7930
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V

    goto/16 :goto_0

    .line 7902
    :cond_10
    const/4 v7, 0x0

    goto :goto_3

    .line 7918
    .restart local v6    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .restart local v7    # "shouldLockKeyguard":Z
    :cond_11
    :try_start_8
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 7921
    .end local v6    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .end local v7    # "shouldLockKeyguard":Z
    :catch_2
    move-exception v9

    goto :goto_4

    .line 7924
    :catch_3
    move-exception v2

    .line 7925
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_9
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 7927
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_3
    move-exception v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 7929
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(I)V

    .line 7930
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V

    throw v9

    .line 7935
    :sswitch_c
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_12

    .line 7936
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 7938
    :cond_12
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    goto/16 :goto_0

    .line 7941
    :sswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 7942
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 7943
    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    .line 7945
    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v0, v9}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 7946
    :catch_4
    move-exception v9

    goto/16 :goto_0

    .line 7951
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_e
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 7952
    :try_start_b
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v9}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 7953
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_13

    .line 7954
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 7956
    :cond_13
    monitor-exit v10

    goto/16 :goto_0

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v9

    .line 7976
    :sswitch_f
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onFixedScreenModeChanged(I)V

    goto/16 :goto_0

    .line 7980
    :sswitch_10
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    if-nez v9, :cond_14

    .line 7981
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    .line 7982
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V

    iput-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    .line 7983
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->create()V

    .line 7985
    :cond_14
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    if-nez v9, :cond_0

    .line 7986
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManagerImpl;

    .line 7987
    .local v8, "wm":Landroid/view/WindowManagerImpl;
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/WindowManagerImpl;->setDisplay(Landroid/view/Display;)V

    .line 7988
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7989
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    goto/16 :goto_0

    .line 7780
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x71 -> :sswitch_c
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0x12c -> :sswitch_f
        0x12d -> :sswitch_10
    .end sparse-switch
.end method
