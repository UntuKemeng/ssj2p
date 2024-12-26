.class Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "action":Ljava/lang/String;
    const-string v19, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "online"

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I
    invoke-static/range {v19 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$002(Lcom/android/server/smartclip/SpenGestureManagerService;I)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Receive broadcast : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v19, "com.samsung.pen.INSERT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;->isInitialStickyBroadcast()Z

    move-result v19

    if-nez v19, :cond_0

    .line 252
    const-string/jumbo v19, "penInsert"

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 253
    .local v13, "penInsert":Z
    const-string/jumbo v19, "isBoot"

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 254
    .local v9, "isBoot":Z
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "penInsert : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".isBoot : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;

    move-result-object v15

    .line 257
    .local v15, "topMostComponent":Landroid/content/ComponentName;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 259
    .local v16, "topMostPackageName":Ljava/lang/String;
    :goto_1
    if-eqz v13, :cond_4

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v22

    sub-long v6, v20, v22

    .line 262
    .local v6, "elapsed":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_2

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->calculateSpenUsingDuration(J)V
    invoke-static {v0, v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$300(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static/range {v19 .. v21}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$202(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$400()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v6    # "elapsed":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsAirCMDServiceEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z
    invoke-static {v0, v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$802(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 278
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v20, "Start AirCommand. #1"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v8, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 281
    .local v8, "extras":Landroid/os/Bundle;
    const-string v19, "action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v20, "topComponent"

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v19, "batteryStatus"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v19, "coverOpened"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V
    invoke-static {v0, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 257
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v16    # "topMostPackageName":Ljava/lang/String;
    :cond_3
    const-string v16, ""

    goto/16 :goto_1

    .line 269
    .restart local v16    # "topMostPackageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static/range {v19 .. v21}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$202(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$600()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 282
    .restart local v8    # "extras":Landroid/os/Bundle;
    :cond_5
    const-string v19, ""

    goto :goto_3

    .line 293
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v19

    if-eqz v19, :cond_8

    if-nez v13, :cond_8

    if-nez v9, :cond_8

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    if-nez v19, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v19 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1202(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 297
    :cond_7
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_detachment_option"

    const/16 v21, 0x0

    const/16 v22, -0x2

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 300
    .local v12, "penDetachOption":I
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PEN_DETACHMENT_OPTION is : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardSecureOn()Z

    move-result v19

    if-nez v19, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v21, "window"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1402(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 305
    .local v5, "display":Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 306
    .local v11, "outSize":Landroid/graphics/Point;
    invoke-virtual {v5, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1500(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    const v20, 0x461c4000    # 10000.0f

    const v21, 0x461c4000    # 10000.0f

    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(FF)V

    .line 310
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v20, "AirButtonImpl show() is called!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 314
    .end local v5    # "display":Landroid/view/Display;
    .end local v11    # "outSize":Landroid/graphics/Point;
    .end local v12    # "penDetachOption":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 315
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v20 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    goto/16 :goto_0

    .line 320
    .end local v9    # "isBoot":Z
    .end local v13    # "penInsert":Z
    .end local v15    # "topMostComponent":Landroid/content/ComponentName;
    .end local v16    # "topMostPackageName":Ljava/lang/String;
    :cond_9
    const-string v19, "com.samsung.cover.OPEN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 321
    const-string v19, "coverOpen"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 322
    .local v10, "isCoverOpen":Z
    sget-object v19, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isCoverOpen : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v0, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto/16 :goto_0

    .line 325
    .end local v10    # "isCoverOpen":Z
    :cond_a
    const-string v19, "com.samsung.android.service.airviewdictionary.set"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    const-string v20, "active"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "requested"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsRequestedToDictionary:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 328
    const-string/jumbo v19, "x"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 329
    .local v17, "x":I
    const-string/jumbo v19, "y"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 330
    .local v18, "y":I
    const-string/jumbo v19, "time"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 331
    .local v14, "time":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->setHoverStayValues(III)V

    goto/16 :goto_0
.end method
