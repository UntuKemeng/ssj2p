.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p2, "x1"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v6, "MdnieScenarioControlService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action  :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "keyguard"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .local v2, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .end local v2    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "keyguard"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .restart local v2    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    :cond_3
    const-string v6, "MdnieScenarioControlService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLockScreenOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_on_intent()V
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .end local v2    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_4
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_off_intent()V
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    :cond_5
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v6, v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x0

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "MdnieScenarioControlService"

    const-string v7, "failed to onForegroundActivitiesChanged"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/NotificationManager;

    move-result-object v6

    const-string v7, "dialog"

    const/16 v8, 0x3e7

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x0

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->showHdrEffectNotification(Z)V
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto/16 :goto_0

    :cond_7
    const-string v6, "NOTIFICATION_DISMISS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->cancelNotification()V
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "NOTIFICATION_SETTINGS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->settingsNotification()V
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "NOTIFICATION_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x0

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$502(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    goto/16 :goto_0

    :cond_a
    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v7, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1002(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_multi_window_on_intent()V
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "time":J
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1602(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x0

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1602(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "mode"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "statusName":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0xf

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .end local v3    # "statusName":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v7, 0x0

    # setter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z
    invoke-static {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-result-object v6

    const/16 v7, 0x10

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # getter for: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I
    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method
