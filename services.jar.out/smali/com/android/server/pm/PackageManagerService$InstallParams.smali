.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 16462
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16463
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 16464
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16465
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16466
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16467
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16468
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 16469
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 16471
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 16472
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16473
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 16474
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "installerSourcePackageName"    # Ljava/lang/String;
    .param p8, "volumeUuid"    # Ljava/lang/String;
    .param p9, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p10, "user"    # Landroid/os/UserHandle;
    .param p11, "packageAbiOverride"    # Ljava/lang/String;
    .param p12, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 16479
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16480
    invoke-direct {p0, p1, p10}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 16481
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16482
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16483
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16484
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16485
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 16486
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16487
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 16488
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 16489
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16490
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 16491
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 9
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 16508
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 16509
    .local v3, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 16510
    .local v1, "installLocation":I
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_1

    move v2, v5

    .line 16512
    .local v2, "onSd":Z
    :goto_0
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 16513
    :try_start_0
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 16514
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6

    .line 16515
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_9

    .line 16517
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_0

    .line 16519
    :try_start_1
    # invokes: Lcom/android/server/pm/PackageManagerService;->checkDowngrade(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$4500(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16526
    :cond_0
    :try_start_2
    iget-object v8, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 16527
    if-eqz v2, :cond_2

    .line 16528
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16529
    const/4 v5, -0x3

    monitor-exit v7

    .line 16562
    :goto_1
    return v5

    .line 16510
    .end local v2    # "onSd":Z
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 16520
    .restart local v2    # "onSd":Z
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v0

    .line 16521
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16522
    const/4 v5, -0x7

    monitor-exit v7

    goto :goto_1

    .line 16556
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 16531
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :try_start_3
    monitor-exit v7

    goto :goto_1

    .line 16533
    :cond_3
    if-eqz v2, :cond_4

    .line 16535
    monitor-exit v7

    move v5, v6

    goto :goto_1

    .line 16538
    :cond_4
    if-ne v1, v5, :cond_5

    .line 16540
    monitor-exit v7

    goto :goto_1

    .line 16541
    :cond_5
    if-ne v1, v6, :cond_7

    .line 16556
    :cond_6
    monitor-exit v7

    .line 16559
    if-eqz v2, :cond_a

    move v5, v6

    .line 16560
    goto :goto_1

    .line 16545
    :cond_7
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1300(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 16546
    monitor-exit v7

    move v5, v6

    goto :goto_1

    .line 16548
    :cond_8
    monitor-exit v7

    goto :goto_1

    .line 16553
    :cond_9
    const/4 v5, -0x4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 16562
    :cond_a
    iget v5, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 1

    .prologue
    .line 16501
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_0

    .line 16502
    const/4 v0, 0x0

    .line 16504
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    goto :goto_0
.end method

.method handleReturnCode()V
    .locals 3

    .prologue
    .line 16972
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 16973
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 16975
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 16979
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$4800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16980
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16981
    return-void
.end method

.method public handleStartCopy()V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16572
    const/16 v31, 0x1

    .line 16575
    .local v31, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    .line 16576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v44, v0

    if-eqz v44, :cond_9

    .line 16577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x9

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16587
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x8

    if-eqz v44, :cond_b

    const/16 v23, 0x1

    .line 16588
    .local v23, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x10

    if-eqz v44, :cond_c

    const/16 v22, 0x1

    .line 16590
    .local v22, "onInt":Z
    :goto_2
    const/16 v25, 0x0

    .line 16591
    .local v25, "pkgLite":Landroid/content/pm/PackageInfoLite;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16592
    .local v24, "packageFileTemp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v26

    .line 16599
    .local v26, "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->isUpdateOnSystemApp(Ljava/lang/String;)Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v45, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_d

    const/16 v44, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    move-object/from16 v2, v46

    move/from16 v3, v44

    move/from16 v4, v47

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAppBlockedByDPM(Ljava/io/File;Ljava/lang/String;ZI)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZI)Z

    move-result v44

    if-eqz v44, :cond_e

    .line 16603
    const/16 v31, -0x74

    .line 16653
    :cond_1
    :goto_4
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    .line 16654
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v18, v0

    .line 16655
    .local v18, "loc":I
    const/16 v44, -0x3

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_11

    .line 16656
    const/16 v31, -0x13

    .line 16688
    .end local v18    # "loc":I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$4800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    .line 16689
    .local v7, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16691
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_23

    .line 16696
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v37

    .line 16697
    .local v37, "userIdentifier":I
    const/16 v44, -0x1

    move/from16 v0, v37

    move/from16 v1, v44

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_3

    .line 16699
    const/16 v37, 0x0

    .line 16706
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiersLPr(I)Ljava/util/ArrayList;
    invoke-static/range {v44 .. v45}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v29

    .line 16707
    .local v29, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    const/16 v19, 0x1

    .line 16715
    .local v19, "needVerificationForPersona":Z
    const/16 v30, 0x1

    .line 16719
    .local v30, "requiresVerificationForPersona":Z
    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v44, :cond_4

    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/pm/PersonaManagerService;->needVerificationForPackage(ILjava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_4

    .line 16722
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Skipping verification for Persona "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " for package "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16724
    const/16 v30, 0x0

    .line 16730
    :cond_4
    iget v0, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    move/from16 v44, v0

    const/high16 v45, 0x1000000

    and-int v44, v44, v45

    if-eqz v44, :cond_19

    const/4 v15, 0x1

    .line 16734
    .local v15, "isOpenThemePackage":Z
    :goto_6
    const/16 v16, 0x0

    .line 16735
    .local v16, "isSPRInstallerPackages":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v44

    const-string v45, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v44 .. v45}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_6

    .line 16736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.sprint.w.installer"

    invoke-static/range {v44 .. v45}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.sprint.ce.updater"

    invoke-static/range {v44 .. v45}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_1a

    :cond_5
    const/16 v16, 0x1

    .line 16738
    :goto_7
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "isSPRInstallerPackages = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", installerPackageName = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16742
    :cond_6
    const/4 v11, 0x0

    .line 16743
    .local v11, "installFromSBM":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1b

    .line 16744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v14

    .line 16745
    .local v14, "installerUid":I
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "installerUid : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16746
    const-string v44, "SBM"

    const-string/jumbo v45, "ro.csc.sales_code"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1b

    .line 16747
    const/4 v13, 0x0

    .line 16748
    .local v13, "installerPackages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 16749
    if-eqz v13, :cond_1b

    .line 16750
    move-object v8, v13

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_1b

    aget-object v12, v8, v10

    .line 16751
    .local v12, "installerPackage":Ljava/lang/String;
    const-string/jumbo v44, "jp.softbank.mb.myd.framework"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_7

    const-string v44, "com.sprint.ce.updater"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_8

    .line 16753
    :cond_7
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "uid : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", is sbminstaller. skip verification, pkg : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16754
    const/4 v11, 0x1

    .line 16750
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 16579
    .end local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "installFromSBM":Z
    .end local v12    # "installerPackage":Ljava/lang/String;
    .end local v13    # "installerPackages":[Ljava/lang/String;
    .end local v14    # "installerUid":I
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v17    # "len$":I
    .end local v19    # "needVerificationForPersona":Z
    .end local v22    # "onInt":Z
    .end local v23    # "onSd":Z
    .end local v24    # "packageFileTemp":Ljava/io/File;
    .end local v25    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v26    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_a

    .line 16580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x8

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x11

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    .line 16583
    :cond_a
    new-instance v44, Ljava/lang/IllegalStateException;

    const-string v45, "Invalid stage location"

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 16587
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 16588
    .restart local v23    # "onSd":Z
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 16599
    .restart local v22    # "onInt":Z
    .restart local v24    # "packageFileTemp":Ljava/io/File;
    .restart local v25    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v26    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    :cond_d
    const/16 v44, 0x0

    goto/16 :goto_3

    .line 16610
    :cond_e
    if-eqz v22, :cond_f

    if-eqz v23, :cond_f

    .line 16613
    const-string v44, "PackageManager"

    const-string v45, "Conflicting flags specified for installing on both internal and external"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16614
    const/16 v31, -0x13

    goto/16 :goto_4

    .line 16616
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v25

    .line 16623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v44, v0

    if-nez v44, :cond_1

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    .line 16626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v34

    .line 16627
    .local v34, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v20

    .line 16630
    .local v20, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v32

    .line 16633
    .local v32, "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    add-long v46, v32, v20

    invoke-virtual/range {v44 .. v47}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v44

    if-ltz v44, :cond_10

    .line 16634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v25

    .line 16645
    :cond_10
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v44, v0

    const/16 v45, -0x6

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    .line 16647
    const/16 v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, v25

    iput v0, v1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_4

    .line 16657
    .end local v20    # "lowThreshold":J
    .end local v32    # "sizeBytes":J
    .end local v34    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "loc":I
    :cond_11
    const/16 v44, -0x4

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 16658
    const/16 v31, -0x1

    goto/16 :goto_5

    .line 16659
    :cond_12
    const/16 v44, -0x1

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    .line 16660
    const/16 v31, -0x4

    goto/16 :goto_5

    .line 16661
    :cond_13
    const/16 v44, -0x2

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_14

    .line 16662
    const/16 v31, -0x2

    goto/16 :goto_5

    .line 16663
    :cond_14
    const/16 v44, -0x6

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_15

    .line 16664
    const/16 v31, -0x3

    goto/16 :goto_5

    .line 16665
    :cond_15
    const/16 v44, -0x5

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_16

    .line 16666
    const/16 v31, -0x14

    goto/16 :goto_5

    .line 16669
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v18

    .line 16670
    const/16 v44, -0x7

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_17

    .line 16671
    const/16 v31, -0x19

    goto/16 :goto_5

    .line 16672
    :cond_17
    if-nez v23, :cond_2

    if-nez v22, :cond_2

    .line 16674
    const/16 v44, 0x2

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_18

    .line 16676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x8

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16677
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x11

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 16681
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x9

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 16730
    .end local v18    # "loc":I
    .restart local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v30    # "requiresVerificationForPersona":Z
    .restart local v37    # "userIdentifier":I
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 16736
    .restart local v15    # "isOpenThemePackage":Z
    .restart local v16    # "isSPRInstallerPackages":Z
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 16761
    .restart local v11    # "installFromSBM":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    move/from16 v44, v0

    if-nez v44, :cond_26

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v37

    move/from16 v2, v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v44

    if-eqz v44, :cond_26

    if-eqz v30, :cond_26

    if-nez v15, :cond_26

    if-nez v16, :cond_26

    if-nez v11, :cond_26

    const/16 v43, 0x1

    .line 16767
    .local v43, "verifyInstallPackage":Z
    :goto_9
    if-eqz v43, :cond_2a

    .line 16769
    new-instance v38, Landroid/content/Intent;

    const-string v44, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16771
    .local v38, "verification":Landroid/content/Intent;
    const/high16 v44, 0x10000000

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16772
    new-instance v44, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-direct/range {v44 .. v45}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v44 .. v44}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v44

    const-string v45, "application/vnd.android.package-archive"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16774
    const/16 v44, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16778
    invoke-static/range {v37 .. v37}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v44

    if-eqz v44, :cond_27

    .line 16779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const-string v45, "application/vnd.android.package-archive"

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v28

    .line 16789
    .local v28, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_a
    const-string v44, "PackageManager"

    const-string v45, "VERIFY"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Found "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " verifiers for intent "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " with "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " optional verifiers"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$5108(Lcom/android/server/pm/PackageManagerService;)I

    move-result v39

    .line 16796
    .local v39, "verificationId":I
    const-string v44, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16798
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16801
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16804
    const-string v44, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16807
    const-string v44, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    move/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_28

    .line 16812
    const-string v44, "KNOXVerificationInstallerUid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16816
    :goto_b
    const-string v44, "KNOXVerificationPackagePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_20

    .line 16820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_1c

    .line 16821
    const-string v44, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16824
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_1d

    .line 16825
    const-string v44, "android.intent.extra.ORIGINATING_URI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16828
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_1e

    .line 16829
    const-string v44, "android.intent.extra.REFERRER"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16832
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v44

    if-ltz v44, :cond_1f

    .line 16833
    const-string v44, "android.intent.extra.ORIGINATING_UID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16836
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v44

    if-ltz v44, :cond_20

    .line 16837
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16842
    :cond_20
    new-instance v40, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/pm/PackageVerificationState;-><init>(Ljava/util/ArrayList;Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 16845
    .local v40, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v40

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v36

    .line 16851
    .local v36, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v42

    .line 16852
    .local v42, "verifierUser":Landroid/os/UserHandle;
    sget-object v44, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_21

    .line 16853
    sget-object v42, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 16860
    :cond_21
    if-eqz v36, :cond_22

    .line 16861
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v6

    .line 16862
    .local v6, "N":I
    if-nez v6, :cond_29

    .line 16863
    const-string v44, "PackageManager"

    const-string v45, "Additional verifiers required, but none installed."

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16864
    const/16 v31, -0x16

    .line 16876
    .end local v6    # "N":I
    :cond_22
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_23

    if-eqz v29, :cond_23

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_23

    .line 16883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    move/from16 v2, v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;Z)Z

    .line 16889
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16928
    .end local v11    # "installFromSBM":Z
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v19    # "needVerificationForPersona":Z
    .end local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v37    # "userIdentifier":I
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v42    # "verifierUser":Landroid/os/UserHandle;
    .end local v43    # "verifyInstallPackage":Z
    :cond_23
    :goto_c
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_2e

    .line 16930
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_24

    .line 16931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$5400(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16934
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5500()Landroid/content/IHarmonyEAS;

    move-result-object v44

    if-eqz v44, :cond_24

    .line 16935
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5500()Landroid/content/IHarmonyEAS;

    move-result-object v44

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, -0x1

    invoke-interface/range {v44 .. v47}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V

    .line 16939
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2d

    .line 16940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v14

    .line 16941
    .restart local v14    # "installerUid":I
    const/4 v13, 0x0

    .line 16942
    .restart local v13    # "installerPackages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 16943
    if-eqz v13, :cond_2d

    .line 16944
    move-object v8, v13

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_d
    move/from16 v0, v17

    if-ge v10, v0, :cond_2d

    aget-object v12, v8, v10

    .line 16945
    .restart local v12    # "installerPackage":Ljava/lang/String;
    const-string/jumbo v44, "packageinstaller"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    if-nez v44, :cond_25

    .line 16947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$5400(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16948
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5500()Landroid/content/IHarmonyEAS;

    move-result-object v44

    if-eqz v44, :cond_25

    .line 16949
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5500()Landroid/content/IHarmonyEAS;

    move-result-object v44

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, -0x1

    invoke-interface/range {v44 .. v47}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16944
    :cond_25
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 16761
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "installerPackage":Ljava/lang/String;
    .end local v13    # "installerPackages":[Ljava/lang/String;
    .end local v14    # "installerUid":I
    .end local v17    # "len$":I
    .restart local v11    # "installFromSBM":Z
    .restart local v15    # "isOpenThemePackage":Z
    .restart local v16    # "isSPRInstallerPackages":Z
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v30    # "requiresVerificationForPersona":Z
    .restart local v37    # "userIdentifier":I
    :cond_26
    const/16 v43, 0x0

    goto/16 :goto_9

    .line 16782
    .restart local v38    # "verification":Landroid/content/Intent;
    .restart local v43    # "verifyInstallPackage":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const-string v45, "application/vnd.android.package-archive"

    const/16 v46, 0x200

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v28

    .restart local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_a

    .line 16814
    .restart local v39    # "verificationId":I
    :cond_28
    const-string v44, "KNOXVerificationInstallerUid"

    const/16 v45, -0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 16866
    .restart local v6    # "N":I
    .restart local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v42    # "verifierUser":Landroid/os/UserHandle;
    :cond_29
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    if-ge v9, v6, :cond_22

    .line 16867
    move-object/from16 v0, v36

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/ComponentName;

    .line 16869
    .local v41, "verifierComponent":Landroid/content/ComponentName;
    new-instance v35, Landroid/content/Intent;

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16870
    .local v35, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16866
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 16911
    .end local v6    # "N":I
    .end local v9    # "i":I
    .end local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v35    # "sufficientIntent":Landroid/content/Intent;
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v41    # "verifierComponent":Landroid/content/ComponentName;
    .end local v42    # "verifierUser":Landroid/os/UserHandle;
    :cond_2a
    # getter for: Lcom/android/server/pm/PackageManagerService;->is3LMAllowed:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$900()Z

    move-result v44

    if-eqz v44, :cond_2c

    .line 16912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->willScanFor3LM(Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/io/File;)Z
    invoke-static {v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->access$5300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/io/File;)Z

    move-result v44

    if-eqz v44, :cond_2b

    .line 16913
    const-string v44, "PackageManager"

    const-string v45, "In if block of 3LM patch"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16914
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto/16 :goto_c

    .line 16916
    :cond_2b
    const-string v44, "PackageManager"

    const-string v45, "In else block of 3LM patch"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v7, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v31

    goto/16 :goto_c

    .line 16922
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v7, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v31

    goto/16 :goto_c

    .line 16956
    .end local v11    # "installFromSBM":Z
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v19    # "needVerificationForPersona":Z
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    .end local v43    # "verifyInstallPackage":Z
    :catch_0
    move-exception v27

    .line 16957
    .local v27, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v27 .. v27}, Landroid/os/RemoteException;->printStackTrace()V

    .line 16964
    .end local v27    # "rE":Landroid/os/RemoteException;
    :cond_2d
    :goto_f
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16965
    return-void

    .line 16960
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v46

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    move-object/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 16984
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
