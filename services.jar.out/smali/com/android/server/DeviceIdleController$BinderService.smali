.class final Lcom/android/server/DeviceIdleController$BinderService;
.super Landroid/os/IDeviceIdleController$Stub;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/os/IDeviceIdleController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "x1"    # Lcom/android/server/DeviceIdleController$1;

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v3, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 831
    .local v2, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "addPowerSaveTempWhitelistApp"

    const/4 v7, 0x0

    move/from16 v3, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 840
    .local v10, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v7, 0x1

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    return-void

    .line 843
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    .local v2, "duration":J
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 850
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$BinderService;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 851
    return-wide v2
.end method

.method public addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    .local v2, "duration":J
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 857
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$BinderService;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 858
    return-wide v2
.end method

.method public addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 775
    return-void
.end method

.method public addPowerSaveWhitelistExceptIdle([Ljava/lang/String;)V
    .locals 14
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 912
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v9}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "android.permission.DEVICE_POWER"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    if-nez p1, :cond_0

    .line 956
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v10, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v10

    .line 917
    const/4 v8, 0x0

    .line 918
    .local v8, "whitelistChanged":Z
    const/4 v7, 0x0

    .line 921
    .local v7, "systemApp":Z
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    .local v6, "pkg":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v9}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const v11, 0xa200

    invoke-virtual {v9, v6, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 928
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 930
    .local v1, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v9

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 933
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_1

    .line 935
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :goto_2
    const/4 v8, 0x1

    .line 947
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    :try_start_2
    const-string v9, "DeviceIdleController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPowerSaveWhitelistExceptIdle - pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " systemApp:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 938
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .line 941
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appid":I
    :catch_0
    move-exception v3

    .line 943
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyAppsExceptIdle:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v9

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const/4 v1, -0x1

    .restart local v1    # "appid":I
    goto :goto_3

    .line 950
    .end local v1    # "appid":I
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    if-ne v8, v13, :cond_3

    .line 951
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)V

    .line 952
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)V

    .line 955
    :cond_3
    monitor-exit v10

    goto/16 :goto_0

    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9
.end method

.method public addPowerSaveWhitelistIdle([Ljava/lang/String;)V
    .locals 14
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 863
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v9}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "android.permission.DEVICE_POWER"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    if-nez p1, :cond_0

    .line 909
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v10, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v10

    .line 868
    const/4 v8, 0x0

    .line 869
    .local v8, "whitelistChanged":Z
    const/4 v7, 0x0

    .line 872
    .local v7, "systemApp":Z
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    .local v6, "pkg":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v9}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const v11, 0xa200

    invoke-virtual {v9, v6, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 879
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 882
    .local v1, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v9

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 884
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v9

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 887
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_1

    .line 889
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    :goto_2
    const/4 v8, 0x1

    .line 901
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    :try_start_2
    const-string v9, "DeviceIdleController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPowerSaveWhitelistIdle - pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " systemApp:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 892
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .line 895
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appid":I
    :catch_0
    move-exception v3

    .line 897
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelist3rdPartyApps:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object v9

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const/4 v1, -0x1

    .restart local v1    # "appid":I
    goto :goto_3

    .line 904
    .end local v1    # "appid":I
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    if-ne v8, v13, :cond_3

    .line 905
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)V

    .line 906
    iget-object v9, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V
    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)V

    .line 908
    :cond_3
    monitor-exit v10

    goto/16 :goto_0

    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method public getAppIdTempWhitelist()[I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getAppIdWhitelist()[I
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getAppIdWhitelistExceptIdle()[I
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistExceptIdleInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getFullPowerWhitelist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdleStateDetailed()I
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    return v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 781
    return-void
.end method
