.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2521
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2522
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 89
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2526
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3241
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2528
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v78

    .line 2529
    .local v78, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v78

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto :goto_0

    .line 2532
    .end local v78    # "resolver":Landroid/content/ContentResolver;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2533
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 2534
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2537
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1

    .line 2538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 2540
    .local v64, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v64

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x7530

    move-object/from16 v0, v64

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2544
    .end local v64    # "nmsg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2547
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2548
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v53, v4, -0x1

    .local v53, "i":I
    :goto_1
    if-ltz v53, :cond_3

    .line 2549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/android/server/am/ProcessRecord;

    .line 2550
    .local v74, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 2552
    :try_start_2
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2548
    :cond_2
    :goto_2
    add-int/lit8 v53, v53, -0x1

    goto :goto_1

    .line 2553
    :catch_0
    move-exception v51

    .line 2554
    .local v51, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update time zone for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v74

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2558
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v74    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v53    # "i":I
    :cond_3
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->dbFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    if-nez v4, :cond_4

    .line 2562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/am/CrashedAppDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/am/CrashedAppDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    .line 2564
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_5

    .line 2565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    invoke-virtual {v11}, Lcom/android/server/am/CrashedAppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 2567
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/am/CrashedAppDatabase;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 2572
    .end local v53    # "i":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2573
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v53, v4, -0x1

    .restart local v53    # "i":I
    :goto_3
    if-ltz v53, :cond_7

    .line 2574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/android/server/am/ProcessRecord;

    .line 2575
    .restart local v74    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_6

    .line 2577
    :try_start_6
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2573
    :cond_6
    :goto_4
    add-int/lit8 v53, v53, -0x1

    goto :goto_3

    .line 2578
    :catch_1
    move-exception v51

    .line 2579
    .restart local v51    # "ex":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to clear dns cache for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v74

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2583
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v74    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .restart local v53    # "i":I
    :cond_7
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    .line 2586
    .end local v53    # "i":I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/net/ProxyInfo;

    .line 2591
    .local v73, "proxy":Landroid/net/ProxyInfo;
    if-eqz v73, :cond_8

    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getKnoxVpnProfile()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_8

    .line 2592
    const-string v4, "ActivityManager"

    const-string/jumbo v11, "skipping the proxy broadcast for applications added to knox vpn profile"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2597
    :cond_8
    const/16 v67, 0x0

    .line 2599
    .local v67, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v43

    .line 2600
    .local v43, "bundle":Landroid/os/Bundle;
    if-eqz v43, :cond_9

    .line 2601
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 2605
    :cond_9
    const-string v5, ""

    .line 2606
    .local v5, "host":Ljava/lang/String;
    const-string v6, ""

    .line 2608
    .local v6, "port":Ljava/lang/String;
    const-string v7, ""

    .line 2609
    .local v7, "username":Ljava/lang/String;
    const-string v8, ""

    .line 2611
    .local v8, "password":Ljava/lang/String;
    const-string v9, ""

    .line 2612
    .local v9, "exclList":Ljava/lang/String;
    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2613
    .local v10, "pacFileUrl":Landroid/net/Uri;
    if-eqz v73, :cond_a

    .line 2614
    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 2615
    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2617
    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 2618
    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 2620
    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v9

    .line 2621
    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v10

    .line 2623
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2624
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v53, v4, -0x1

    .restart local v53    # "i":I
    :goto_5
    if-ltz v53, :cond_11

    .line 2625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/android/server/am/ProcessRecord;

    .line 2626
    .restart local v74    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_b

    .line 2627
    invoke-static/range {v67 .. v67}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2630
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_c

    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v4

    if-nez v4, :cond_c

    .line 2624
    :cond_b
    :goto_6
    add-int/lit8 v53, v53, -0x1

    goto :goto_5

    .line 2636
    :cond_c
    if-eqz v73, :cond_e

    :try_start_a
    invoke-virtual/range {v73 .. v73}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_e

    .line 2639
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_d

    sget-object v4, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    move-object/from16 v0, v74

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2640
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v45

    check-cast v45, Lcom/android/server/ConnectivityService;

    .line 2642
    .local v45, "connectivityService":Lcom/android/server/ConnectivityService;
    if-eqz v45, :cond_d

    .line 2643
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v15, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Lcom/android/server/ConnectivityService;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v15

    invoke-interface {v4, v15}, Landroid/app/IApplicationThread;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 2658
    .end local v45    # "connectivityService":Lcom/android/server/ConnectivityService;
    :catch_2
    move-exception v51

    .line 2659
    .restart local v51    # "ex":Landroid/os/RemoteException;
    :try_start_b
    const-string v15, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update http proxy for: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_10

    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2664
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v74    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .line 2648
    .restart local v53    # "i":I
    .restart local v74    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_d
    :try_start_c
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v73

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_6

    .line 2651
    :cond_e
    if-eqz v7, :cond_f

    const-string v4, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 2652
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v4 .. v10}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_6

    .line 2654
    :cond_f
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4, v5, v6, v9, v10}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_6

    .line 2659
    .restart local v51    # "ex":Landroid/os/RemoteException;
    :cond_10
    :try_start_d
    const-string v4, ""

    goto :goto_7

    .line 2664
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v74    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_11
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_0

    .line 2667
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "exclList":Ljava/lang/String;
    .end local v10    # "pacFileUrl":Landroid/net/Uri;
    .end local v43    # "bundle":Landroid/os/Bundle;
    .end local v53    # "i":I
    .end local v67    # "packageName":Ljava/lang/String;
    .end local v73    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_12

    .line 2668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0x14

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 2670
    .restart local v64    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v64

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v11, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-object/from16 v0, v64

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2674
    .end local v64    # "nmsg":Landroid/os/Message;
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .line 2675
    .local v41, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2676
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v41

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2677
    monitor-exit v11

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v4

    .line 2680
    .end local v41    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .line 2681
    .restart local v41    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2682
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v41

    # invokes: Lcom/android/server/am/ActivityManagerService;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2683
    monitor-exit v11

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v4

    .line 2686
    .end local v41    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2687
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 2688
    monitor-exit v11

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v4

    .line 2691
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2692
    :try_start_11
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 2693
    .local v13, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_13

    const/4 v14, 0x1

    .line 2694
    .local v14, "restart":Z
    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/Bundle;

    .line 2695
    .restart local v43    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2696
    .local v12, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2697
    .local v20, "reason":Ljava/lang/String;
    const-string/jumbo v4, "replace sys pkg"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2698
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2704
    .end local v14    # "restart":Z
    :goto_9
    monitor-exit v22

    goto/16 :goto_0

    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "appid":I
    .end local v20    # "reason":Ljava/lang/String;
    .end local v43    # "bundle":Landroid/os/Bundle;
    :catchall_7
    move-exception v4

    monitor-exit v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v4

    .line 2693
    .restart local v13    # "appid":I
    :cond_13
    const/4 v14, 0x0

    goto :goto_8

    .line 2701
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v14    # "restart":Z
    .restart local v20    # "reason":Ljava/lang/String;
    .restart local v43    # "bundle":Landroid/os/Bundle;
    :cond_14
    :try_start_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_9

    .line 2707
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "appid":I
    .end local v14    # "restart":Z
    .end local v20    # "reason":Ljava/lang/String;
    .end local v43    # "bundle":Landroid/os/Bundle;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 2710
    :sswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v55

    .line 2711
    .local v55, "inm":Landroid/app/INotificationManager;
    if-eqz v55, :cond_0

    .line 2715
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v79, v0

    check-cast v79, Lcom/android/server/am/ActivityRecord;

    .line 2716
    .local v79, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v70, v0

    .line 2717
    .local v70, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v70, :cond_0

    .line 2722
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v70

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v46

    .line 2723
    .local v46, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x104038b

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v82

    .line 2725
    .local v82, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x10807a1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1060059

    invoke-virtual {v11, v15}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x104038c

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const/high16 v24, 0x10000000

    const/16 v25, 0x0

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v79

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_4

    move-result-object v26

    .line 2740
    .local v26, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_14
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 2741
    .local v27, "outId":[I
    const-string v22, "android"

    const-string v23, "android"

    const/16 v24, 0x0

    const v25, 0x104038b

    move-object/from16 v0, v79

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v28, v0

    move-object/from16 v21, v55

    invoke-interface/range {v21 .. v28}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_0

    .line 2744
    .end local v27    # "outId":[I
    :catch_3
    move-exception v50

    .line 2745
    .local v50, "e":Ljava/lang/RuntimeException;
    :try_start_15
    const-string v4, "ActivityManager"

    const-string v11, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v50

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_0

    .line 2749
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v46    # "context":Landroid/content/Context;
    .end local v50    # "e":Ljava/lang/RuntimeException;
    .end local v82    # "text":Ljava/lang/String;
    :catch_4
    move-exception v50

    .line 2750
    .local v50, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v11, "Unable to create context for heavy notification"

    move-object/from16 v0, v50

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2754
    .end local v50    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v55    # "inm":Landroid/app/INotificationManager;
    .end local v70    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v79    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 2755
    .local v21, "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_0

    .line 2759
    :try_start_16
    const-string v4, "android"

    const/4 v11, 0x0

    const v15, 0x104038b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v4, v11, v15, v1}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_e

    goto/16 :goto_0

    .line 2761
    :catch_5
    move-exception v50

    .line 2762
    .local v50, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v11, "Error canceling notification for service"

    move-object/from16 v0, v50

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2768
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v50    # "e":Ljava/lang/RuntimeException;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2769
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2770
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2771
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 2772
    .restart local v64    # "nmsg":Landroid/os/Message;
    const-wide/32 v16, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2773
    monitor-exit v11

    goto/16 :goto_0

    .end local v64    # "nmsg":Landroid/os/Message;
    :catchall_8
    move-exception v4

    monitor-exit v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    throw v4

    .line 2778
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v11, v15, v0, v1}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2784
    :sswitch_10
    invoke-static {}, Landroid/os/Process;->triggerRTCC()V

    .line 2785
    const-string v4, "ActivityManager"

    const-string v11, "RTCC_TRIGGER_MSG, ASYNC."

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2790
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Ljava/util/ArrayList;

    .line 2791
    .local v58, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v83, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    move-object/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2796
    .local v83, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v83 .. v83}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2801
    .end local v58    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v83    # "thread":Ljava/lang/Thread;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2806
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040b7c

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v11, "KNOX"

    const-string v15, "Knox"

    invoke-virtual {v4, v11, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v84

    .line 2807
    .local v84, "toastMSG":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    move-object/from16 v0, v84

    invoke-static {v4, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2814
    .end local v84    # "toastMSG":Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2818
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2822
    :sswitch_16
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_15

    const/16 v63, 0x1

    .line 2823
    .local v63, "nextState":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v63

    if-eq v4, v0, :cond_0

    .line 2827
    if-eqz v63, :cond_16

    .line 2828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .line 2822
    .end local v63    # "nextState":Z
    :cond_15
    const/16 v63, 0x0

    goto :goto_a

    .line 2830
    .restart local v63    # "nextState":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .line 2836
    .end local v63    # "nextState":Z
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 2840
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2841
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v15, 0x1

    const/16 v18, 0x0

    move-wide/from16 v0, v16

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v15, v2}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 2842
    monitor-exit v11

    goto/16 :goto_0

    :catchall_9
    move-exception v4

    monitor-exit v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v4

    .line 2846
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2847
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    .line 2848
    monitor-exit v11

    goto/16 :goto_0

    :catchall_a
    move-exception v4

    monitor-exit v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v4

    .line 2852
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2853
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v53, v4, -0x1

    .restart local v53    # "i":I
    :goto_b
    if-ltz v53, :cond_19

    .line 2854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/android/server/am/ProcessRecord;

    .line 2855
    .restart local v74    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v4, :cond_17

    .line 2857
    :try_start_1b
    move-object/from16 v0, v74

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_18

    const/4 v4, 0x0

    :goto_c
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 2853
    :cond_17
    :goto_d
    add-int/lit8 v53, v53, -0x1

    goto :goto_b

    .line 2857
    :cond_18
    const/4 v4, 0x1

    goto :goto_c

    .line 2858
    :catch_6
    move-exception v51

    .line 2859
    .restart local v51    # "ex":Landroid/os/RemoteException;
    :try_start_1c
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update preferences for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v74

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2863
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v74    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v4

    monitor-exit v11
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    throw v4

    .restart local v53    # "i":I
    :cond_19
    :try_start_1d
    monitor-exit v11
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 2865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->dbFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    if-nez v4, :cond_1a

    .line 2867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/am/CrashedAppDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/am/CrashedAppDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    .line 2869
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1b

    .line 2870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    invoke-virtual {v11}, Lcom/android/server/am/CrashedAppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 2872
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/am/CrashedAppDatabase;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 2880
    .end local v53    # "i":I
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v15}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-static {v4, v11, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2887
    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 2888
    .local v71, "processId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v81, v0

    .line 2889
    .local v81, "stopReason":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move/from16 v0, v71

    move/from16 v1, v81

    invoke-static {v11, v4, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2896
    .end local v71    # "processId":I
    .end local v81    # "stopReason":I
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v11, 0x8007

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    .line 2902
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v11, 0x4008

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v11, 0x8008

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    .line 2912
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2913
    :try_start_1e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v74

    .line 2914
    .local v74, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v74, :cond_1c

    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    if-eqz v4, :cond_1c

    .line 2916
    :try_start_1f
    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v74

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v15}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 2920
    :cond_1c
    :goto_e
    :try_start_20
    monitor-exit v11

    goto/16 :goto_0

    .end local v74    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_c
    move-exception v4

    monitor-exit v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    throw v4

    .line 2925
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2926
    :try_start_21
    new-instance v72, Ljava/util/ArrayList;

    invoke-direct/range {v72 .. v72}, Ljava/util/ArrayList;-><init>()V

    .line 2927
    .local v72, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v40

    .line 2928
    .local v40, "NP":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v68, v0

    check-cast v68, Ljava/util/HashSet;

    .line 2930
    .local v68, "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "process size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const/16 v56, 0x0

    .local v56, "ip":I
    :goto_f
    move/from16 v0, v56

    move/from16 v1, v40

    if-ge v0, v1, :cond_21

    .line 2932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/util/SparseArray;

    .line 2933
    .local v42, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {v42 .. v42}, Landroid/util/SparseArray;->size()I

    move-result v39

    .line 2934
    .local v39, "NA":I
    const/16 v54, 0x0

    .local v54, "ia":I
    :goto_10
    move/from16 v0, v54

    move/from16 v1, v39

    if-ge v0, v1, :cond_20

    .line 2935
    move-object/from16 v0, v42

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .line 2936
    .restart local v41    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "system"

    move-object/from16 v0, v41

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v41

    if-eq v4, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v41

    if-eq v4, v0, :cond_1e

    if-eqz v68, :cond_1d

    invoke-virtual/range {v68 .. v68}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 2941
    :cond_1d
    move-object/from16 v0, v41

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v4, :cond_1f

    .line 2942
    move-object/from16 v0, v72

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2934
    :cond_1e
    :goto_11
    add-int/lit8 v54, v54, 0x1

    goto :goto_10

    .line 2944
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, v41

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2945
    move-object/from16 v0, v72

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2957
    .end local v39    # "NA":I
    .end local v40    # "NP":I
    .end local v41    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v42    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v54    # "ia":I
    .end local v56    # "ip":I
    .end local v68    # "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v72    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_d
    move-exception v4

    monitor-exit v11
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    throw v4

    .line 2931
    .restart local v39    # "NA":I
    .restart local v40    # "NP":I
    .restart local v42    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v54    # "ia":I
    .restart local v56    # "ip":I
    .restart local v68    # "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v72    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_20
    add-int/lit8 v56, v56, 0x1

    goto/16 :goto_f

    .line 2951
    .end local v39    # "NA":I
    .end local v42    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v54    # "ia":I
    :cond_21
    :try_start_22
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 2952
    .local v38, "N":I
    const/16 v53, 0x0

    .restart local v53    # "i":I
    :goto_12
    move/from16 v0, v53

    move/from16 v1, v38

    if-ge v0, v1, :cond_22

    .line 2953
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "killing process="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v72

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v72

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string/jumbo v18, "kill all background except"

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    invoke-static {v15, v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 2952
    add-int/lit8 v53, v53, 0x1

    goto :goto_12

    .line 2956
    :cond_22
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "kill count="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    monitor-exit v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    goto/16 :goto_0

    .line 2962
    .end local v38    # "N":I
    .end local v40    # "NP":I
    .end local v53    # "i":I
    .end local v56    # "ip":I
    .end local v68    # "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v72    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :sswitch_21
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_23

    .line 2963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2965
    :cond_23
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    .line 2966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    .line 2972
    :sswitch_22
    :try_start_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/util/Locale;

    .line 2973
    .local v57, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v80

    .line 2974
    .local v80, "service":Landroid/os/IBinder;
    invoke-static/range {v80 .. v80}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v59

    .line 2975
    .local v59, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Storing locale "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v57 .. v57}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " for decryption UI"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    const-string v4, "SystemLocale"

    invoke-virtual/range {v57 .. v57}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v59

    invoke-interface {v0, v4, v11}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_7

    goto/16 :goto_0

    .line 2977
    .end local v57    # "l":Ljava/util/Locale;
    .end local v59    # "mountService":Landroid/os/storage/IMountService;
    .end local v80    # "service":Landroid/os/IBinder;
    :catch_7
    move-exception v50

    .line 2978
    .local v50, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v11, "Error storing locale for decryption UI"

    move-object/from16 v0, v50

    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2983
    .end local v50    # "e":Landroid/os/RemoteException;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 2984
    :try_start_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    move-result v53

    .line 2985
    .restart local v53    # "i":I
    :goto_13
    if-lez v53, :cond_24

    .line 2986
    add-int/lit8 v53, v53, -0x1

    .line 2989
    :try_start_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_8
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    goto :goto_13

    .line 2990
    :catch_8
    move-exception v4

    goto :goto_13

    .line 2994
    :cond_24
    :try_start_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2995
    monitor-exit v11

    goto/16 :goto_0

    .end local v53    # "i":I
    :catchall_e
    move-exception v4

    monitor-exit v11
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    throw v4

    .line 2999
    :sswitch_24
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v86, v0

    .line 3000
    .local v86, "uid":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v52, v4

    check-cast v52, [B

    .line 3002
    .local v52, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11

    .line 3003
    const/16 v53, 0x0

    .restart local v53    # "i":I
    :goto_14
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v53

    if-ge v0, v4, :cond_26

    .line 3004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 3005
    .local v66, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, v86

    if-ne v4, v0, :cond_25

    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    if-eqz v4, :cond_25

    .line 3007
    :try_start_28
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v52

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_c
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    .line 3003
    :cond_25
    :goto_15
    add-int/lit8 v53, v53, 0x1

    goto :goto_14

    .line 3012
    .end local v66    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_26
    :try_start_29
    monitor-exit v11

    goto/16 :goto_0

    :catchall_f
    move-exception v4

    monitor-exit v11
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    throw v4

    .line 3020
    .end local v52    # "firstPacket":[B
    .end local v53    # "i":I
    .end local v86    # "uid":I
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 3021
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v69, v0

    .line 3022
    .local v69, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v86, v0

    .line 3023
    .restart local v86    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v69

    move/from16 v1, v86

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/util/Pair;

    .line 3024
    .local v88, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v88, :cond_27

    .line 3025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v15, 0x0

    move-object/from16 v0, v69

    invoke-virtual {v4, v0, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v88

    .end local v88    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v88, Landroid/util/Pair;

    .line 3027
    .restart local v88    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_27
    if-eqz v88, :cond_29

    .line 3028
    move-object/from16 v0, v88

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v60

    .line 3029
    .local v60, "memLimit":J
    move-object/from16 v0, v88

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Ljava/lang/String;

    .line 3034
    .local v77, "reportPackage":Ljava/lang/String;
    :goto_16
    monitor-exit v11
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 3035
    if-eqz v69, :cond_0

    .line 3042
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 3043
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_0

    .line 3047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040393

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v69, v15, v16

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v82

    .line 3050
    .restart local v82    # "text":Ljava/lang/String;
    new-instance v47, Landroid/content/Intent;

    invoke-direct/range {v47 .. v47}, Landroid/content/Intent;-><init>()V

    .line 3051
    .local v47, "deleteIntent":Landroid/content/Intent;
    const-string v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3052
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 3053
    .local v30, "intent":Landroid/content/Intent;
    const-string v4, "android"

    const-class v11, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3054
    const-string/jumbo v4, "process"

    move-object/from16 v0, v30

    move-object/from16 v1, v69

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3055
    const-string/jumbo v4, "size"

    move-object/from16 v0, v30

    move-wide/from16 v1, v60

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3056
    if-eqz v77, :cond_28

    .line 3057
    const-string v4, "direct_launch"

    move-object/from16 v0, v30

    move-object/from16 v1, v77

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3059
    :cond_28
    invoke-static/range {v86 .. v86}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v87

    .line 3060
    .local v87, "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x10807a1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1060059

    invoke-virtual {v11, v15}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1040394

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v31, 0x10000000

    const/16 v32, 0x0

    new-instance v33, Landroid/os/UserHandle;

    move-object/from16 v0, v33

    move/from16 v1, v87

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v28 .. v33}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v47

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v11, v15, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v26

    .line 3079
    .restart local v26    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_2b
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 3080
    .restart local v27    # "outId":[I
    const-string v22, "android"

    const-string v23, "android"

    const/16 v24, 0x0

    const v25, 0x1040393

    move/from16 v28, v87

    invoke-interface/range {v21 .. v28}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_b

    goto/16 :goto_0

    .line 3083
    .end local v27    # "outId":[I
    :catch_9
    move-exception v50

    .line 3084
    .local v50, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v11, "Error showing notification for dump heap"

    move-object/from16 v0, v50

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3031
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v47    # "deleteIntent":Landroid/content/Intent;
    .end local v50    # "e":Ljava/lang/RuntimeException;
    .end local v60    # "memLimit":J
    .end local v77    # "reportPackage":Ljava/lang/String;
    .end local v82    # "text":Ljava/lang/String;
    .end local v87    # "userId":I
    :cond_29
    const-wide/16 v60, 0x0

    .line 3032
    .restart local v60    # "memLimit":J
    const/16 v77, 0x0

    .restart local v77    # "reportPackage":Ljava/lang/String;
    goto/16 :goto_16

    .line 3034
    .end local v60    # "memLimit":J
    .end local v69    # "procName":Ljava/lang/String;
    .end local v77    # "reportPackage":Ljava/lang/String;
    .end local v86    # "uid":I
    .end local v88    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_10
    move-exception v4

    :try_start_2c
    monitor-exit v11
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    throw v4

    .line 3090
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    sget-object v15, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/16 v16, 0x3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v11, v15, v0, v1}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 3095
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 3096
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 3097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 3098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, -0x1

    iput v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 3099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, -0x1

    iput v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 3100
    monitor-exit v11

    goto/16 :goto_0

    :catchall_11
    move-exception v4

    monitor-exit v11
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    throw v4

    .line 3103
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    .line 3106
    :sswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v85, v0

    check-cast v85, Lcom/android/server/am/AppTimeTracker;

    .line 3107
    .local v85, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v85

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3110
    .end local v85    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_0

    .line 3113
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/app/IUiAutomationConnection;

    .line 3115
    .local v44, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_2e
    invoke-interface/range {v44 .. v44}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_a

    .line 3121
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z
    invoke-static {v4, v11}, Lcom/android/server/am/ActivityManagerService;->access$1502(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_0

    .line 3116
    :catch_a
    move-exception v50

    .line 3117
    .local v50, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v11, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 3124
    .end local v44    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v50    # "e":Landroid/os/RemoteException;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 3125
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mIsBoosted:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBoostStartTime:J
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v22, 0x9c4

    sub-long v18, v18, v22

    cmp-long v4, v16, v18

    if-gez v4, :cond_2b

    .line 3127
    # invokes: Lcom/android/server/am/ActivityManagerService;->nativeMigrateFromBoost()I
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$1800()I

    .line 3128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mIsBoosted:Z
    invoke-static {v4, v15}, Lcom/android/server/am/ActivityManagerService;->access$1602(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 3129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    # setter for: Lcom/android/server/am/ActivityManagerService;->mBoostStartTime:J
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1702(Lcom/android/server/am/ActivityManagerService;J)J

    .line 3135
    :cond_2a
    :goto_18
    monitor-exit v11

    goto/16 :goto_0

    :catchall_12
    move-exception v4

    monitor-exit v11
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    throw v4

    .line 3131
    :cond_2b
    :try_start_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v15, 0x3a

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 3132
    .local v62, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x9c4

    move-object/from16 v0, v62

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    goto :goto_18

    .line 3140
    .end local v62    # "newmsg":Landroid/os/Message;
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2c

    .line 3141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0xc

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 3142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3144
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2d

    .line 3145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0x10

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 3146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3148
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2e

    .line 3149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0x13

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    .line 3150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3152
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2f

    .line 3153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0xe

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 3154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3157
    :cond_2f
    sget v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_30

    .line 3158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3159
    const/4 v4, 0x0

    sput v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    .line 3161
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_31

    .line 3162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3164
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_32

    .line 3165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3167
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v4

    if-eqz v4, :cond_33

    .line 3168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 3170
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_0

    .line 3171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v15, "AMS_RESUME_BOOST_CSTATE"

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Landroid/os/DVFSHelper;->onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3177
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Landroid/app/ApplicationErrorReport;

    .line 3178
    .local v75, "report":Landroid/app/ApplicationErrorReport;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v87, v0

    .line 3179
    .restart local v87    # "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_36

    const/16 v65, 0x1

    .line 3180
    .local v65, "notify":Z
    :goto_19
    if-eqz v75, :cond_0

    .line 3181
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 3182
    const/16 v49, 0x0

    .line 3183
    .local v49, "dumpStrTmp":Ljava/lang/String;
    :try_start_31
    move-object/from16 v0, v75

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_37

    .line 3184
    const-string v49, "-k -t -z -d -o /data/log/dumpstate_app_error"

    .line 3189
    :cond_34
    :goto_1a
    move-object/from16 v48, v49

    .line 3191
    .local v48, "dumpCmd":Ljava/lang/String;
    if-eqz v48, :cond_35

    .line 3192
    const-string/jumbo v4, "user"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3193
    new-instance v4, Ljava/lang/Thread;

    new-instance v15, Lcom/android/server/am/ActivityManagerService$MainHandler$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v15, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/lang/String;)V

    const-string v16, "dumpstate"

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 3202
    :cond_35
    :goto_1b
    monitor-exit v11
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    .line 3204
    if-eqz v65, :cond_0

    .line 3205
    new-instance v76, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3206
    .local v76, "reportIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, v76

    move/from16 v1, v87

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3179
    .end local v48    # "dumpCmd":Ljava/lang/String;
    .end local v49    # "dumpStrTmp":Ljava/lang/String;
    .end local v65    # "notify":Z
    .end local v76    # "reportIntent":Landroid/content/Intent;
    :cond_36
    const/16 v65, 0x0

    goto :goto_19

    .line 3185
    .restart local v49    # "dumpStrTmp":Ljava/lang/String;
    .restart local v65    # "notify":Z
    :cond_37
    :try_start_32
    move-object/from16 v0, v75

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v15, 0x2

    if-ne v4, v15, :cond_34

    .line 3186
    const-string v49, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    goto :goto_1a

    .line 3199
    .restart local v48    # "dumpCmd":Ljava/lang/String;
    :cond_38
    invoke-static/range {v48 .. v48}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_1b

    .line 3202
    .end local v48    # "dumpCmd":Ljava/lang/String;
    :catchall_13
    move-exception v4

    monitor-exit v11
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    throw v4

    .line 3236
    .end local v49    # "dumpStrTmp":Ljava/lang/String;
    .end local v65    # "notify":Z
    .end local v75    # "report":Landroid/app/ApplicationErrorReport;
    .end local v87    # "userId":I
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowManagerService;->rebootSafeMode(Z)V

    goto/16 :goto_0

    .line 3086
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v30    # "intent":Landroid/content/Intent;
    .restart local v47    # "deleteIntent":Landroid/content/Intent;
    .restart local v60    # "memLimit":J
    .restart local v69    # "procName":Ljava/lang/String;
    .restart local v77    # "reportPackage":Ljava/lang/String;
    .restart local v82    # "text":Ljava/lang/String;
    .restart local v86    # "uid":I
    .restart local v87    # "userId":I
    .restart local v88    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_b
    move-exception v4

    goto/16 :goto_0

    .line 3008
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v47    # "deleteIntent":Landroid/content/Intent;
    .end local v60    # "memLimit":J
    .end local v69    # "procName":Ljava/lang/String;
    .end local v77    # "reportPackage":Ljava/lang/String;
    .end local v82    # "text":Ljava/lang/String;
    .end local v87    # "userId":I
    .end local v88    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v52    # "firstPacket":[B
    .restart local v53    # "i":I
    .restart local v66    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_c
    move-exception v4

    goto/16 :goto_15

    .line 2917
    .end local v52    # "firstPacket":[B
    .end local v53    # "i":I
    .end local v66    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v86    # "uid":I
    .restart local v74    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_d
    move-exception v4

    goto/16 :goto_e

    .line 2764
    .end local v74    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    :catch_e
    move-exception v4

    goto/16 :goto_0

    .line 2747
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v46    # "context":Landroid/content/Context;
    .restart local v55    # "inm":Landroid/app/INotificationManager;
    .restart local v70    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v79    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v82    # "text":Ljava/lang/String;
    :catch_f
    move-exception v4

    goto/16 :goto_0

    .line 2526
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x14 -> :sswitch_7
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_c
        0x19 -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_5
        0x1d -> :sswitch_6
        0x21 -> :sswitch_11
        0x22 -> :sswitch_12
        0x23 -> :sswitch_14
        0x24 -> :sswitch_15
        0x25 -> :sswitch_16
        0x26 -> :sswitch_17
        0x27 -> :sswitch_18
        0x28 -> :sswitch_19
        0x29 -> :sswitch_1a
        0x2a -> :sswitch_1d
        0x2b -> :sswitch_1e
        0x2c -> :sswitch_1f
        0x2d -> :sswitch_21
        0x2f -> :sswitch_22
        0x31 -> :sswitch_23
        0x32 -> :sswitch_24
        0x33 -> :sswitch_25
        0x34 -> :sswitch_26
        0x35 -> :sswitch_27
        0x37 -> :sswitch_28
        0x38 -> :sswitch_29
        0x39 -> :sswitch_2a
        0x3a -> :sswitch_2b
        0x3b -> :sswitch_8
        0x3c -> :sswitch_2c
        0x3d -> :sswitch_2d
        0x3f -> :sswitch_10
        0x190 -> :sswitch_1c
        0x1f4 -> :sswitch_1b
        0x259 -> :sswitch_13
        0x2bc -> :sswitch_0
        0x3e7 -> :sswitch_f
        0x3e8 -> :sswitch_2e
        0x3e9 -> :sswitch_20
    .end sparse-switch
.end method
