.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$opPkg:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V
    .locals 0

    .prologue
    .line 2621
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$opPkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    iput-boolean p11, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$isSystemNotification:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 2625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 2630
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, -0x2

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v4

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 2634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 2635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    const/4 v4, 0x2

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2644
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 2646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2648
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "headsup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2653
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v3, 0xa

    .line 2656
    .local v9, "score":I
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$opPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v2 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2659
    .local v2, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v27, Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v9}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;I)V

    .line 2660
    .local v27, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/notification/NotificationRecord;

    .line 2661
    .local v24, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v24, :cond_3

    .line 2663
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 2668
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$5600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 2671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleAppGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$5700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/notification/NotificationManagerService;->removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    move-result v22

    .line 2679
    .local v22, "ignoreNotification":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    const-string v4, "com.android.providers.downloads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "DownloadManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2681
    :cond_4
    const/16 v17, 0x0

    .line 2682
    .local v17, "enqueueStatus":I
    if-eqz v22, :cond_7

    .line 2683
    const/16 v17, 0x2

    .line 2687
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v10 .. v17}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 2692
    .end local v17    # "enqueueStatus":I
    :cond_6
    if-eqz v22, :cond_8

    .line 2693
    monitor-exit v30

    .line 2789
    :goto_1
    return-void

    .line 2684
    .restart local v17    # "enqueueStatus":I
    :cond_7
    if-eqz v24, :cond_5

    .line 2685
    const/16 v17, 0x1

    goto :goto_0

    .line 2696
    .end local v17    # "enqueueStatus":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2703
    const/16 v21, 0x0

    .line 2704
    .local v21, "forceBlock":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$isSystemNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_9

    .line 2706
    const/16 v18, 0x0

    .line 2708
    .local v18, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 2709
    .local v26, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    const/16 v4, 0x80

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 2710
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_9

    .line 2711
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.notification.blockable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    .line 2717
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_9
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$isSystemNotification:Z

    if-eqz v3, :cond_a

    if-eqz v21, :cond_b

    .line 2719
    :cond_a
    const/16 v3, -0x3e8

    move-object/from16 v0, v27

    iput v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    .line 2720
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Suppressing notification from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by user request."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2726
    .end local v21    # "forceBlock":Z
    :cond_b
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    const/16 v4, -0x14

    if-ge v3, v4, :cond_c

    .line 2728
    monitor-exit v30

    goto/16 :goto_1

    .line 2788
    .end local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "score":I
    .end local v22    # "ignoreNotification":Z
    .end local v24    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v27    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2713
    .restart local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v9    # "score":I
    .restart local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "forceBlock":Z
    .restart local v22    # "ignoreNotification":Z
    .restart local v24    # "old":Lcom/android/server/notification/NotificationRecord;
    .restart local v27    # "r":Lcom/android/server/notification/NotificationRecord;
    :catch_0
    move-exception v20

    .line 2714
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 2731
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21    # "forceBlock":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v23

    .line 2732
    .local v23, "index":I
    if-gez v23, :cond_e

    .line 2733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 2752
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_d

    .line 2757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2761
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 2762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v28

    .line 2767
    .local v28, "token":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v19

    .line 2769
    .local v19, "currentUser":I
    :try_start_5
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2773
    if-eqz v24, :cond_f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    .line 2774
    .local v25, "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    .line 2787
    .end local v25    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 2788
    monitor-exit v30

    goto/16 :goto_1

    .line 2743
    .end local v19    # "currentUser":I
    .end local v28    # "token":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "old":Lcom/android/server/notification/NotificationRecord;
    check-cast v24, Lcom/android/server/notification/NotificationRecord;

    .line 2744
    .restart local v24    # "old":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2749
    const/4 v3, 0x1

    move-object/from16 v0, v27

    iput-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    goto/16 :goto_3

    .line 2769
    .restart local v28    # "token":J
    :catchall_1
    move-exception v3

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2773
    .restart local v19    # "currentUser":I
    :cond_f
    const/16 v25, 0x0

    goto :goto_4

    .line 2776
    :cond_10
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not posting notification without small icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    if-eqz v24, :cond_11

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v3, :cond_11

    .line 2778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 2783
    :cond_11
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5
.end method
