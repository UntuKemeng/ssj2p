.class Lcom/android/server/pm/PersonaManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .prologue
    .line 8386
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8389
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 8391
    .local v1, "action":Ljava/lang/String;
    const-string v13, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 8392
    const-string v13, "android.intent.extra.user_handle"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 8393
    .local v2, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 8394
    const-string/jumbo v13, "sys.knox.store"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8395
    const-string v13, "PersonaManagerService"

    const-string/jumbo v14, "onReceive USER_SWITCHED it is not knox container"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8400
    :goto_0
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive USER_SWITCHED in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v13

    if-nez v13, :cond_1

    if-nez v2, :cond_1

    .line 8404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v10

    .line 8405
    .local v10, "personaIds":[I
    if-eqz v10, :cond_1

    array-length v13, v10

    if-lez v13, :cond_1

    .line 8406
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v13, v10

    if-ge v4, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    aget v14, v10, v4

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killKnoxLauncher(I)V
    invoke-static {v13, v14}, Lcom/android/server/pm/PersonaManagerService;->access$9300(Lcom/android/server/pm/PersonaManagerService;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8397
    .end local v4    # "i":I
    .end local v10    # "personaIds":[I
    :cond_0
    const-string/jumbo v13, "sys.knox.store"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8398
    const-string v13, "PersonaManagerService"

    const-string/jumbo v14, "onReceive USER_SWITCHED it is knox container"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8409
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    invoke-static {v13, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->access$600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V

    .line 8507
    .end local v2    # "currentUserId":I
    :cond_2
    :goto_2
    return-void

    .line 8411
    :cond_3
    const-string v13, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 8412
    const-string v13, "android.intent.extra.user_handle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 8413
    .local v12, "userId":I
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive USER_ADD userId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8414
    const/16 v13, 0x64

    if-lt v12, v13, :cond_4

    const/16 v13, 0xc8

    if-le v12, v13, :cond_2

    .line 8415
    :cond_4
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "userId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not Knox, so disable Knox packages"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.sec.knox.containeragent2"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.sec.knox.packageverifier"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.sec.knox.shortcutsms"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.samsung.android.bbc.fileprovider"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.samsung.knox.knoxtrustagent"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKnoxBluetoothSupported()Z
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$9400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 8426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.sec.knox.bluetooth"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8431
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8435
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const-string v14, "com.sec.knox.knoxlauncher"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 8436
    :catch_0
    move-exception v3

    .line 8437
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "PersonaManagerService"

    const-string/jumbo v14, "not exist card type launcher"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8440
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v12    # "userId":I
    :cond_6
    const-string v13, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 8441
    const-string v13, "PersonaManagerService"

    const-string v14, "INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION onReceive"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8442
    const-string/jumbo v13, "personaid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 8443
    .local v9, "personaId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 8444
    .local v7, "msg":Landroid/os/Message;
    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 8445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8446
    .end local v7    # "msg":Landroid/os/Message;
    .end local v9    # "personaId":I
    :cond_7
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 8447
    const-string v13, "PersonaManagerService"

    const-string v14, "ACTION_SCREEN_ON onReceive"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8448
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    const/16 v14, 0x13

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 8449
    .restart local v7    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8451
    .end local v7    # "msg":Landroid/os/Message;
    :cond_8
    const-string v13, "com.samsung.android.intent.action.IRIS_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "com.samsung.android.intent.action.IRIS_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "com.samsung.android.intent.action.IRIS_RESET"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 8452
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    .line 8453
    .local v11, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PersonaInfo;

    .line 8454
    .local v8, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v8, :cond_a

    .line 8456
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/os/UserHandle;

    iget v15, v8, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8460
    :goto_4
    const-string v13, "com.samsung.android.intent.action.IRIS_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v14, v8, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isIrisLockScreen(I)Z
    invoke-static {v13, v14}, Lcom/android/server/pm/PersonaManagerService;->access$9500(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 8461
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8462
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/content/pm/PersonaInfo;->setIsIrisReset(Z)V

    goto :goto_3

    .line 8457
    :catch_1
    move-exception v3

    .line 8458
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendBroadcast failed :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8466
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_b
    const-string v13, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 8467
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    .line 8468
    .restart local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PersonaInfo;

    .line 8469
    .restart local v8    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v8, :cond_d

    .line 8471
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/os/UserHandle;

    iget v15, v8, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 8475
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v14, v8, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 8476
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8477
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/content/pm/PersonaInfo;->setIsFingerReset(Z)V

    goto :goto_5

    .line 8472
    :catch_2
    move-exception v3

    .line 8473
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendBroadcast failed :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 8481
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_e
    const-string v13, "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 8483
    const-string/jumbo v13, "personaid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 8484
    .restart local v9    # "personaId":I
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "on Receive : SDP_TIMEOUT personaId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v13, v9}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v6

    .line 8486
    .local v6, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v14, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v13, v14, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 8487
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "inside onReceive() state is ACTIVE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v0, v6, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v6, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8491
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    const/16 v14, 0x14

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 8492
    .restart local v7    # "msg":Landroid/os/Message;
    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 8493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8494
    .end local v6    # "info":Landroid/content/pm/PersonaInfo;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v9    # "personaId":I
    :cond_10
    const-string v13, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 8496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    const/16 v14, 0x18

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 8497
    .restart local v7    # "msg":Landroid/os/Message;
    const-string/jumbo v13, "personaid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    iput v13, v7, Landroid/os/Message;->arg1:I

    .line 8498
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "on Receive : LOCK_TIMEOUT personaId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8500
    .end local v7    # "msg":Landroid/os/Message;
    :cond_11
    const-string v13, "com.sec.knox.container.INTENT_ACTION_RESET_PWD_TIMEOUT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 8502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    const/16 v14, 0x19

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 8503
    .restart local v7    # "msg":Landroid/os/Message;
    const-string/jumbo v13, "personaid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    iput v13, v7, Landroid/os/Message;->arg1:I

    .line 8504
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "on Receive : RESET_PWD_TIMEOUT  personaId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8505
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
