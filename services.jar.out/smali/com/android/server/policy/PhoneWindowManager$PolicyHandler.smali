.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 1192
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    const/16 v4, 0x69

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1195
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1403
    :goto_0
    :sswitch_0
    return-void

    .line 1197
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$700(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 1200
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$800(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 1203
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 1206
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 1209
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$900(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto :goto_0

    .line 1212
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    .line 1216
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCustomDialog:Z

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    if-eqz v0, :cond_1

    .line 1218
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 1219
    const-string v0, "WindowManager"

    const-string v1, "MSG_SD_CUSTOM_BOOT_COMPLETE: mCustomBootMsgDialog dismissing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/CustomBootMsgDialog;->dismiss()V

    .line 1221
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1227
    :sswitch_8
    const-string v0, "WindowManager"

    const-string v1, "Waiting for Shared Device keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1229
    const-string v0, "WindowManager"

    const-string/jumbo v1, "keyguard shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    const-string v0, "WindowManager"

    const-string v1, "SIM lock identify API delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardOwner()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1233
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 1235
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp()V

    goto/16 :goto_0

    .line 1238
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCustomDialog:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    if-eqz v0, :cond_4

    .line 1239
    const-string v0, "WindowManager"

    const-string v1, "Custom Boot flow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1241
    const-string v0, "WindowManager"

    const-string v1, "SIM lock identify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardOwner()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 1245
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp()V

    .line 1250
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1247
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    goto :goto_1

    .line 1252
    :cond_5
    const-string v0, "WindowManager"

    const-string/jumbo v1, "keyguard not shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1254
    const-string v0, "WindowManager"

    const-string v1, "SIM lock identify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardOwner()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1257
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1258
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 1259
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp()V

    goto/16 :goto_0

    .line 1264
    :sswitch_9
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_7

    const-string v0, "WindowManager"

    const-string v1, "Setting mKeyguardDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$1100()I

    move-result v1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_0

    .line 1268
    :sswitch_a
    const-string v0, "WindowManager"

    const-string v1, "!@Boot: Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$1100()I

    move-result v1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_0

    .line 1272
    :sswitch_b
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_8

    const-string v0, "WindowManager"

    const-string v1, "Setting mWindowManagerDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$1100()I

    move-result v1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1300(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_0

    .line 1276
    :sswitch_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1400(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    .line 1279
    :sswitch_d
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock(Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_2

    .line 1282
    :sswitch_e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a

    :goto_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V
    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    .line 1283
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1600(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 1282
    goto :goto_3

    .line 1287
    :sswitch_f
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b

    :goto_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->endCallPress(JZI)V
    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1700(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishEndCallKeyPress()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    :cond_b
    move v1, v2

    .line 1287
    goto :goto_4

    .line 1292
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1900(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    .line 1295
    :sswitch_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_c

    :goto_5
    # invokes: Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2000(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_5

    .line 1304
    :sswitch_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->notifyToSSRM(Z)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2100(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto/16 :goto_0

    .line 1309
    :sswitch_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->enableToolBox()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    .line 1312
    :sswitch_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->disableToolBox()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_0

    .line 1318
    :sswitch_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateSideKeyPanelState(Z)V

    goto/16 :goto_0

    .line 1324
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateSideKeyPanelState(Z)V

    goto/16 :goto_0

    .line 1330
    :sswitch_17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateBottomKeyPanelState(ZZ)V

    goto/16 :goto_0

    .line 1336
    :sswitch_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateBottomKeyPanelState(ZZ)V

    goto/16 :goto_0

    .line 1342
    :sswitch_19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->showBottomKeyPanel(Z)V

    goto/16 :goto_0

    .line 1348
    :sswitch_1a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->showBottomKeyPanel(Z)V

    goto/16 :goto_0

    .line 1355
    :sswitch_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto/16 :goto_0

    .line 1361
    :sswitch_1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto/16 :goto_0

    .line 1367
    :sswitch_1d
    const-string v0, "WindowManager"

    const-string v1, "MSG_REQUEST_TRAVERSAL_BY_PWM"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto/16 :goto_0

    .line 1398
    :sswitch_1e
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1399
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1195
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_0
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x32 -> :sswitch_15
        0x33 -> :sswitch_16
        0x34 -> :sswitch_17
        0x35 -> :sswitch_18
        0x36 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x38 -> :sswitch_1b
        0x39 -> :sswitch_1c
        0x3c -> :sswitch_1d
        0x3d -> :sswitch_0
        0x3e -> :sswitch_f
        0x3f -> :sswitch_1e
        0x69 -> :sswitch_8
        0x6a -> :sswitch_7
    .end sparse-switch
.end method
