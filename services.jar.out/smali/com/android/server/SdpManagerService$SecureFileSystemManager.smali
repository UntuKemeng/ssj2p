.class Lcom/android/server/SdpManagerService$SecureFileSystemManager;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureFileSystemManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;
    }
.end annotation


# static fields
.field private static final FS_TYPE:I = 0x2

.field private static final SECURE_FS_CURRENT_VERSION:I = 0x1

.field private static final SECURE_FS_VERSION_1:I = 0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecureFileSystem"


# instance fields
.field defaultApps:[Ljava/lang/String;

.field private mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mStatus:I

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private sContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;

.field timaVersion20:Z


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V
    .locals 5
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "timaHelper"    # Lcom/android/server/pm/TimaHelper;
    .param p4, "keyMgnt"    # Lcom/sec/knox/container/util/KeyManagementUtil;
    .param p5, "epm"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3318
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3293
    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 3294
    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 3295
    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3296
    new-instance v2, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    invoke-direct {v2, p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;-><init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;Lcom/android/server/SdpManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    .line 3298
    iput-boolean v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    .line 3303
    iput v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    .line 3471
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.android.bluetooth"

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    .line 3319
    iput-object p2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->sContext:Landroid/content/Context;

    .line 3320
    iput-object p3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 3321
    iput-object p4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 3322
    iput-object p5, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3325
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3326
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3333
    :cond_0
    :goto_0
    return-void

    .line 3327
    :catch_0
    move-exception v1

    .line 3328
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to talk with TIMA service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3329
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3331
    const-string v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to get TIMA version."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SdpManagerService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/server/pm/TimaHelper;
    .param p4, "x3"    # Lcom/sec/knox/container/util/KeyManagementUtil;
    .param p5, "x4"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .param p6, "x5"    # Lcom/android/server/SdpManagerService$1;

    .prologue
    .line 3291
    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 3291
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I

    .prologue
    .line 3291
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I

    .prologue
    .line 3291
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 3291
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 3291
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 3291
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 3291
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()Z

    move-result v0

    return v0
.end method

.method private createPartition()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3344
    iget-boolean v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v2, :cond_0

    .line 3345
    const-string v2, "SecureFileSystem"

    const-string v3, "TIMA 2.0 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :goto_0
    return v1

    .line 3349
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    const-string/jumbo v3, "test"

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateEcryptfsKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 3350
    .local v0, "eCryptfsKey":[B
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v1

    .line 3352
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 3353
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v4}, Lcom/android/server/pm/TimaHelper;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->updateSecureFsXml(ILjava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->access$2600(Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;ILjava/lang/String;)I

    .line 3354
    :cond_1
    const-string v2, "SecureFileSystem"

    const-string v3, "createPartition"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createPkgDir(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3420
    const/4 v0, 0x0

    .line 3421
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3423
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->createEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    .line 3424
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3426
    return v0
.end method

.method private getTimaAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3336
    new-instance v0, Ljava/lang/String;

    const-string v1, "eCryptfsKeySecFS"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 3312
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 3314
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private isActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3465
    iget v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    if-ne v1, v0, :cond_0

    .line 3468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCreated()Z
    .locals 3

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mount()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 3371
    iget-boolean v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v4, :cond_0

    .line 3372
    const-string v4, "SecureFileSystem"

    const-string v5, "TIMA 2.0 not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3406
    :goto_0
    return v2

    .line 3378
    :cond_0
    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3379
    .local v1, "eCryptfsKey":[B
    if-nez v1, :cond_2

    .line 3380
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPartition()Z

    move-result v2

    .line 3382
    .local v2, "ret":Z
    if-nez v2, :cond_1

    .line 3383
    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to create partition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    move v2, v3

    .line 3385
    goto :goto_0

    .line 3388
    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3389
    if-nez v1, :cond_2

    .line 3390
    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to get eCryptfsKey"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    move v2, v3

    .line 3392
    goto :goto_0

    .line 3396
    .end local v2    # "ret":Z
    :cond_2
    invoke-static {v1, v3}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 3399
    .local v0, "b64eCryptfsKey":Ljava/lang/String;
    const-string v4, "SecureFileSystem"

    const-string/jumbo v5, "mount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v0, v7, v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v2

    .line 3401
    .restart local v2    # "ret":Z
    if-eqz v2, :cond_3

    .line 3402
    iput v7, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    goto :goto_0

    .line 3404
    :cond_3
    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    goto :goto_0
.end method

.method private removePartition()V
    .locals 3

    .prologue
    .line 3360
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v0, :cond_0

    .line 3361
    const-string v0, "SecureFileSystem"

    const-string v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 3366
    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "removePartition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    return-void
.end method

.method private removePkgDir(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3430
    const/4 v0, 0x0

    .line 3431
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3433
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    .line 3434
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3436
    return v0
.end method

.method private setBaseDataUserDir(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, -0x1

    .line 3476
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3477
    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: Error - SecureFileSysstem not activated... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    const/4 v1, 0x0

    .line 3496
    :goto_0
    return v1

    .line 3480
    :cond_0
    const/4 v1, 0x1

    .line 3482
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/enc_user"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3484
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 3485
    if-nez v1, :cond_2

    .line 3486
    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: Error - user dir creation failed... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    const/4 v1, 0x0

    .line 3495
    :cond_1
    :goto_1
    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3489
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_1
.end method

.method private systemReady()Z
    .locals 4

    .prologue
    .line 3534
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 3536
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 3537
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z

    goto :goto_0

    .line 3540
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private systemReady(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 3500
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3530
    :cond_0
    :goto_0
    return v5

    .line 3505
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3506
    const-string v5, "SecureFileSystem"

    const-string/jumbo v6, "systemReady error :: SdpFileSystem not activated "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const/4 v5, 0x0

    goto :goto_0

    .line 3510
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3511
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady :: Error - Failed to set up base directory for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :cond_3
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 3515
    .local v0, "app":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getUserDataDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 3517
    .local v4, "userDataDir":Ljava/io/File;
    if-nez v4, :cond_5

    .line 3518
    const-string v6, "SecureFileSystem"

    const-string/jumbo v7, "systemReady : userDataDir is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3522
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3523
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " creating"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3525
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed to create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3527
    :cond_6
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 3410
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v0, :cond_0

    .line 3411
    const-string v0, "SecureFileSystem"

    const-string v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    :cond_0
    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "unmount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->unmount(II)Z

    .line 3417
    return-void
.end method
