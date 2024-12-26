.class Lcom/android/internal/app/AppLockPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLockPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field isNotObserve:Z

.field mSettingContentResolver:Landroid/content/ContentResolver;

.field mSettingsObserverContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/app/AppLockPolicy;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/AppLockPolicy;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    .line 337
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    .line 338
    iput-object p2, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    .line 339
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    .line 340
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/AppLockPolicy$SettingsObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    return-void
.end method

.method private getLockedApps()V
    .locals 20

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "smartmanager_locked_apps_packages"

    const/16 v17, -0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 417
    .local v10, "lockedPackages":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "smartmanager_locked_apps_classes"

    const/16 v17, -0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, "lockedClasses":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "applock_lock_type"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$402(Lcom/android/internal/app/AppLockPolicy;I)I

    .line 420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$400(Lcom/android/internal/app/AppLockPolicy;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 467
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const/16 v16, 0x0

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$600(Lcom/android/internal/app/AppLockPolicy;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 472
    if-eqz v10, :cond_3

    .line 473
    :try_start_0
    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, "lockedPackageArray":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v11, v1, v4

    .line 476
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$200(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$200(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 479
    .local v12, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 480
    .local v14, "relatedPackage":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 481
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 505
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "lockedPackageArray":[Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "relatedPackage":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 422
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v16, "pattern_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 425
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v16, "pincode_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 428
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v16, "password_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 431
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 434
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_pattern_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 437
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_pincode_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 440
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_password_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 443
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "iris_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 446
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "iris_pattern_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 449
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "iris_pincode_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 452
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "iris_password_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 455
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "biometrics_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 458
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "biometrics_pattern_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 461
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "biometrics_pincode_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 464
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "biometrics_password_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 475
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "lockedPackageArray":[Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto/16 :goto_1

    .line 486
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;
    invoke-static {v15, v6}, Lcom/android/internal/app/AppLockPolicy;->access$702(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 489
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "lockedPackageArray":[Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_7

    .line 490
    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "lockedClassArray":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v7

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v2, v1, v4

    .line 493
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$300(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 495
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$300(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 496
    .restart local v12    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 497
    .local v13, "relatedClass":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 498
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 492
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "relatedClass":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_3

    .line 503
    .end local v2    # "className":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;
    invoke-static {v15, v6}, Lcom/android/internal/app/AppLockPolicy;->access$802(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 505
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "lockedClassArray":[Ljava/lang/String;
    :cond_7
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    return-void

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private getRelatedApps()V
    .locals 15

    .prologue
    .line 383
    iget-object v13, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 384
    .local v12, "res":Landroid/content/res/Resources;
    const v13, 0x1070089

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, "relatedPackageArray":[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v13, v9

    if-lez v13, :cond_1

    .line 386
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v11, v0, v3

    .line 387
    .local v11, "relatedPackages":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "packages":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v10, "relatedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v13, v5

    if-ge v2, v13, :cond_0

    .line 391
    aget-object v13, v5, v2

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v13, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/internal/app/AppLockPolicy;->access$200(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v13

    aget-object v14, v5, v2

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v10    # "relatedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "relatedPackages":Ljava/lang/String;
    :cond_1
    const v13, 0x107008a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "relatedClassArray":[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v13, v6

    if-lez v13, :cond_3

    .line 399
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v8, v0, v3

    .line 400
    .local v8, "relatedClasses":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "classes":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v7, "relatedClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v13, v1

    if-ge v2, v13, :cond_2

    .line 404
    aget-object v13, v1, v2

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v13, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/internal/app/AppLockPolicy;->access$300(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v13

    aget-object v14, v1, v2

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 399
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 409
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "relatedClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "relatedClasses":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 343
    iput-boolean v3, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    .line 344
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "smartmanager_locked_apps_packages"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 345
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "smartmanager_locked_apps_classes"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 346
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string v2, "applock_lock_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 348
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AppLockPolicy$SettingsObserver$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver$1;-><init>(Lcom/android/internal/app/AppLockPolicy$SettingsObserver;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getRelatedApps()V

    .line 369
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    .line 370
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    .line 380
    return-void
.end method

.method unObserve()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 375
    return-void
.end method
