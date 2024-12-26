.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "VaultKeeperService.java"


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final ANDROID_UID_SYSTEM:I = 0x3e8

.field private static final RSA2048_SIGNATURE_LEN:I = 0x100

.field private static final SERVICE_NOT_SUPPORT:I = 0x0

.field private static final SERVICE_SUPPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VaultKeeperService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mServiceSupport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "vaultkeeperjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    .line 67
    sput-object p1, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 69
    return-void
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method private native nativeGetNonce(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B)I
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeReadData(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeReadState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeVerifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
.end method

.method private native nativeVerifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private validateParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 75
    const-string v1, "VaultKeeperService"

    const-string v2, "clientPkgName is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 81
    const-string v1, "VaultKeeperService"

    const-string v2, "clientPkgName is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_1
    if-nez p2, :cond_2

    .line 87
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "vaultName is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 93
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "vaultName is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "hmac"    # [B

    .prologue
    const/4 v0, -0x2

    .line 253
    const-string v1, "VaultKeeperService"

    const-string v2, "destroy"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 257
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, -0x4

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    if-nez p3, :cond_2

    .line 266
    const-string v1, "VaultKeeperService"

    const-string v2, "destroy : hmac is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    .line 272
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 367
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "getNonce"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 371
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeGetNonce(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 103
    iget v8, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v8, :cond_0

    .line 105
    const-string v8, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VaultKeeper not support("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 161
    :goto_0
    return-object v1

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, "clientPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "system_server"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_1

    .line 113
    const-string/jumbo v1, "system_server"

    .line 114
    goto :goto_0

    .line 118
    :cond_1
    sget-object v8, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 120
    .local v6, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 121
    iget-object v1, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 127
    .end local v6    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    sget-object v8, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 130
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v8, 0x40

    :try_start_0
    invoke-virtual {v5, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 131
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 133
    const-string v8, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not match uid("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    move-object v1, v7

    .line 161
    goto/16 :goto_0

    .line 137
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string v8, "android"

    invoke-virtual {v5, v8, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    .line 139
    const-string v8, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isn\'t signed with platform key."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 140
    goto/16 :goto_0

    .line 143
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 145
    const-string v8, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "VaultKeeperService"

    const-string v9, "Fail to check permission(Exception)"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    :try_start_1
    const-string v8, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is signed with platform key. but, itn\'t registered."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v7

    .line 151
    goto/16 :goto_0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B)I
    .locals 8
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "key"    # [B
    .param p4, "initialState"    # Ljava/lang/String;
    .param p5, "initialData"    # [B
    .param p6, "cert"    # [B
    .param p7, "sig"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x2

    .line 187
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 191
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, -0x4

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    if-eqz p3, :cond_2

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 200
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 207
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : if initialState is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_3
    if-eqz p5, :cond_4

    array-length v1, p5

    if-nez v1, :cond_4

    .line 213
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : if initialData is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_4
    if-nez p6, :cond_5

    .line 219
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : cert is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_5
    array-length v1, p6

    if-nez v1, :cond_6

    .line 225
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : if cert is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_6
    if-nez p7, :cond_7

    .line 231
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "initialize : sig is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_7
    array-length v1, p7

    const/16 v2, 0x100

    if-eq v1, v2, :cond_8

    .line 237
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize : if signature is exist, it should be 256, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :cond_8
    array-length v0, p7

    array-length v1, p6

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 242
    .local v6, "sigAndCert":[B
    array-length v0, p7

    invoke-static {p7, v3, v6, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 243
    array-length v0, p7

    array-length v1, p6

    invoke-static {p6, v3, v6, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 245
    iget-object v7, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 246
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B)I

    move-result v0

    monitor-exit v7

    goto/16 :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 167
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "isInitialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 171
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 303
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "readData"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 307
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 284
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "readState"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 288
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 292
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public verifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "cert"    # [B

    .prologue
    const/4 v0, 0x0

    .line 385
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyCertificate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 389
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    if-nez p3, :cond_2

    .line 398
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyCertificate : cert is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_2
    array-length v1, p3

    if-nez v1, :cond_3

    .line 404
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyCertificate : certificate length is zero"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public verifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
    .locals 3
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "input"    # [B
    .param p4, "newState"    # Ljava/lang/String;
    .param p5, "newData"    # [B

    .prologue
    const/4 v0, -0x2

    .line 445
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyComplete"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 449
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, -0x4

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 458
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyComplete : There is nothing to do."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_2
    if-nez p3, :cond_3

    .line 464
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyComplete : input is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_3
    array-length v1, p3

    if-nez v1, :cond_4

    .line 470
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyComplete : if input is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 476
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyComplete : if newState is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_5
    if-eqz p5, :cond_6

    array-length v1, p5

    if-nez v1, :cond_6

    .line 482
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyComplete : if newData is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_6
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VaultKeeperService;->nativeVerifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public verifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "input"    # [B

    .prologue
    const/4 v0, 0x0

    .line 414
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyRequest"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 418
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    :goto_0
    return-object v0

    .line 422
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    if-nez p3, :cond_2

    .line 427
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyRequest : input is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_2
    array-length v1, p3

    if-nez v1, :cond_3

    .line 433
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "verifyRequest : if input is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "passcode"    # [B
    .param p6, "hmac"    # [B

    .prologue
    const/16 v3, 0x20

    const/4 v0, -0x2

    .line 322
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "write"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 326
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, -0x4

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 335
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "write : if state is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_2
    if-eqz p4, :cond_3

    array-length v1, p4

    if-nez v1, :cond_3

    .line 341
    const-string v1, "VaultKeeperService"

    const-string/jumbo v2, "write : if data is exist, it should contain value."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_3
    if-eqz p5, :cond_4

    array-length v1, p5

    if-eq v1, v3, :cond_4

    .line 347
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write : if passcode is exist, it should be 32 Bytes. but now("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_4
    if-eqz p6, :cond_5

    array-length v1, p6

    if-eq v1, v3, :cond_5

    .line 354
    const-string v1, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_5
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
