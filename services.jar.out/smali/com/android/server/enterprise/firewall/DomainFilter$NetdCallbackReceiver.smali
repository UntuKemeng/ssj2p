.class Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 1

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    .line 1351
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p2, "x1"    # Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 1264
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDaemonConnected - connected to netd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    .line 1266
    return-void
.end method

.method public onDaemonDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1270
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onDaemonDisconnected - disconnected from netd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    if-eqz v1, :cond_0

    .line 1274
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1275
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    .line 1277
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    invoke-static {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1102(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1279
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1283
    packed-switch p1, :pswitch_data_0

    .line 1346
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    :goto_0
    const/4 v11, 0x1

    :goto_1
    return v11

    .line 1285
    :pswitch_0
    move-object/from16 v0, p3

    array-length v11, v0

    const/4 v12, 0x7

    if-lt v11, v12, :cond_7

    .line 1289
    const/4 v11, 0x3

    :try_start_0
    aget-object v11, p3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1294
    .local v10, "uid":I
    :goto_2
    const/4 v11, 0x5

    aget-object v9, p3, v11

    .line 1296
    .local v9, "processName":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 1297
    const/4 v11, 0x1

    goto :goto_1

    .line 1290
    .end local v9    # "processName":Ljava/lang/String;
    .end local v10    # "uid":I
    :catch_0
    move-exception v5

    .line 1291
    .local v5, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Error parsing String to int"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v10, 0x0

    .restart local v10    # "uid":I
    goto :goto_2

    .line 1301
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "processName":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->getPackageFromRunningProcesses(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v11, v9, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1303
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 1304
    const/4 v11, 0x1

    goto :goto_1

    .line 1308
    :cond_2
    const/4 v4, 0x0

    .line 1309
    .local v4, "duplicated":Z
    new-instance v3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const/4 v12, 0x2

    aget-object v12, p3, v12

    const/4 v13, 0x3

    aget-object v13, p3, v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    invoke-direct {v3, v11, v12, v13, v14}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    .local v3, "br":Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    const/4 v11, 0x5

    if-ge v7, v11, :cond_4

    .line 1311
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v11

    aget-object v11, v11, v7

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v11

    aget-object v11, v11, v7

    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1312
    const/4 v4, 0x1

    .line 1310
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1316
    :cond_4
    if-nez v4, :cond_0

    .line 1318
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v12

    aput-object v3, v11, v12

    .line 1319
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # operator++ for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1408(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    .line 1320
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_5

    .line 1321
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static {v11, v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1402(Lcom/android/server/enterprise/firewall/DomainFilter;I)I

    .line 1324
    :cond_5
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1500(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1326
    .local v1, "actMngr":Landroid/app/ActivityManager;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1327
    .local v6, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.sec.enterprise.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v2, "blockIntent":Landroid/content/Intent;
    const-string v11, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    invoke-virtual {v2, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    const-string v11, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    const/4 v12, 0x2

    aget-object v12, p3, v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    const-string v11, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_UID"

    const/4 v12, 0x3

    aget-object v12, p3, v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    const-string v11, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_URL"

    const/4 v12, 0x4

    aget-object v12, p3, v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    iget-object v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1333
    const-string v11, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1337
    :goto_4
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1500(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v13, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v11, v2, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1339
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const/4 v12, 0x2

    aget-object v12, p3, v12

    const/4 v13, 0x3

    aget-object v13, p3, v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v13, v14, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1600(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1335
    :cond_6
    const-string v11, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 1342
    .end local v1    # "actMngr":Landroid/app/ActivityManager;
    .end local v2    # "blockIntent":Landroid/content/Intent;
    .end local v3    # "br":Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .end local v4    # "duplicated":Z
    .end local v6    # "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "i":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "processName":Ljava/lang/String;
    .end local v10    # "uid":I
    :cond_7
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "invalid number of arguments "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1283
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
    .end packed-switch
.end method
