.class public Lcom/samsung/android/rlc/util/PushUtil;
.super Ljava/lang/Object;
.source "PushUtil.java"


# static fields
.field public static final RETRY_CHECK_DVC:I = 0xe

.field public static final RETRY_DELIVERY_REPORT:I = 0x10

.field public static final RETRY_GCM:I = 0xb

.field public static final RETRY_GCM_MG:I = 0xd

.field public static final RETRY_RESULT_REPORT:I = 0xf

.field public static final RETRY_SPP:I = 0xa

.field public static final RETRY_SPP_MG:I = 0xc

.field public static final RETRY_UNLOCK_REPORT:I = 0x11

.field public static final STORAGE_NONE:I = -0x1

.field public static final STORAGE_PRIMARY:I = 0x0

.field public static final STORAGE_SECONDARY:I = 0x1

.field private static final SUPPORT_STORAGE_MANAGER:Z

.field public static final TAG:Ljava/lang/String;

.field public static messageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/samsung/android/rlc/util/PushUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    .line 260
    const/16 v0, 0x10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIntentFlagStoppedPackages(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 407
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v3, "[addIntentFlag]"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-eqz p0, :cond_0

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 425
    .local v0, "SDK_VERSION":I
    const/16 v2, 0xc

    if-gt v2, v0, :cond_0

    .line 444
    const/16 v1, 0x20

    .line 446
    .local v1, "flag":I
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v3, "add Intent.FLAG_INCLUDE_STOPPED_PACKAGES"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v0    # "SDK_VERSION":I
    .end local v1    # "flag":I
    :cond_0
    return-object p0
.end method

.method public static getDMDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const-string v1, "rlc.dm.url"

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 381
    const-string v0, "rmm.samsung.com"

    .line 383
    :cond_0
    return-object v0
.end method

.method public static getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subURL"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 250
    :goto_0
    return-object v1

    .line 242
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "mgUrlInfo":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 245
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    const-string v1, "https://%s/mg/v1/push/deliveryreport"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_2
    const-string v1, "https://%s/mg/v1/push/deliveryreport"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "rmm.samsung.com"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "secondarySDPath":Ljava/lang/String;
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 320
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 322
    .local v3, "vollist":[Landroid/os/storage/StorageVolume;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 323
    .local v2, "vol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 329
    .end local v2    # "vol":Landroid/os/storage/StorageVolume;
    :cond_1
    return-object v0

    .line 322
    .restart local v2    # "vol":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, "primarySDPath":Ljava/lang/String;
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 304
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 306
    .local v3, "vollist":[Landroid/os/storage/StorageVolume;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 307
    .local v2, "vol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fuse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 312
    .end local v2    # "vol":Landroid/os/storage/StorageVolume;
    :cond_1
    return-object v0

    .line 306
    .restart local v2    # "vol":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getMGDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    const-string v0, "rlc.mg.url"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const-string v0, "https://%s/dm/v1/dev/register"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "storagePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    sget-boolean v1, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    if-eqz v1, :cond_2

    .line 282
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 283
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPushTypeList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 151
    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushInfo;->DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

    .line 153
    .local v3, "pushList":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "aPushList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 157
    const-string v4, "SPP"

    aget-object v5, v3, v1

    if-ne v4, v5, :cond_1

    .line 158
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isSPPClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_0

    .line 159
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const-string v4, "GCM"

    aget-object v5, v3, v1

    if-ne v4, v5, :cond_0

    .line 162
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isGCMClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_0

    .line 163
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pushList":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 171
    .restart local v3    # "pushList":[Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPushTypeList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v3
.end method

.method public static getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    if-eqz p0, :cond_1

    .line 390
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.rlc"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 391
    .local v1, "info":Landroid/content/pm/PackageInfo;
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRLCClientVersionName]Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 397
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 392
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v2, "NONE"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException in getRLCClientVersionName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v2, "NONE"

    goto :goto_0

    .line 395
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v2, "context is null"

    goto :goto_1
.end method

.method public static getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    const/4 v5, 0x0

    .line 347
    .local v5, "result":Ljava/lang/String;
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_2

    .line 348
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 349
    .local v2, "prop":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 351
    .local v3, "propStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v7, "/data/data/com.samsung.android.rlc/files/rlc.prop"

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v3    # "propStream":Ljava/io/FileInputStream;
    .local v4, "propStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 353
    invoke-virtual {v2}, Ljava/util/Properties;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 354
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    sget-object v7, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    if-eqz v4, :cond_0

    .line 364
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v6, v5

    .line 371
    .end local v2    # "prop":Ljava/util/Properties;
    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 365
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "prop":Ljava/util/Properties;
    .restart local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    if-eqz v4, :cond_2

    .line 364
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2    # "prop":Ljava/util/Properties;
    .end local v4    # "propStream":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    move-object v6, v5

    .line 371
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .line 365
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "prop":Ljava/util/Properties;
    .restart local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 366
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 359
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v3    # "propStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    sget-object v7, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v8, "NO RLC Pro file "

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    if-eqz v3, :cond_2

    .line 364
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 365
    :catch_3
    move-exception v1

    .line 366
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 364
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 367
    :cond_3
    :goto_5
    throw v7

    .line 365
    :catch_4
    move-exception v1

    .line 366
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 362
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "propStream":Ljava/io/FileInputStream;
    .restart local v4    # "propStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v3    # "propStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 359
    .end local v3    # "propStream":Ljava/io/FileInputStream;
    .restart local v4    # "propStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "propStream":Ljava/io/FileInputStream;
    .restart local v3    # "propStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStoragePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storage"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "storagePath":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 273
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storagePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-object v0

    .line 267
    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 268
    goto :goto_0

    .line 270
    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isGCMClientInstalled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isSignatureMatch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 179
    .local v0, "installed":Z
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCMPushClient is installed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return v0

    .line 178
    .end local v0    # "installed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSPPClientInstalled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 190
    .local v0, "installed":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.spp.action.SPP_REQUEST"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 196
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 228
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    sget-object v4, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPPPushClient is installed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v0
.end method

.method public static retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "retryType"    # I

    .prologue
    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, "retryIntent":Landroid/content/Intent;
    const/16 v1, 0x3e8

    .line 82
    .local v1, "backoffTimeMs":I
    const-string v2, ""

    .line 83
    .local v2, "nextBackoff":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 126
    :goto_0
    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    sget-object v5, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling retry , back off time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 129
    .local v3, "pending":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 131
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v5, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 133
    mul-int/lit8 v1, v1, 0x2

    .line 134
    const v5, 0x36ee80

    if-gt v5, v1, :cond_0

    .line 135
    const v1, 0x36ee80

    .line 138
    :cond_0
    invoke-static {p0, v2, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 139
    return v1

    .line 85
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v3    # "pending":Landroid/app/PendingIntent;
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "spp_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 87
    const-string v2, "spp_backoff"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "gcm_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 92
    const-string v2, "gcm_backoff"

    .line 93
    goto :goto_0

    .line 95
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "spp_mg_registration_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 97
    const-string v2, "spp_mg_registration_backoff"

    .line 98
    goto/16 :goto_0

    .line 100
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "gcm_mg_registration_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 102
    const-string v2, "gcm_mg_registration_backoff"

    .line 103
    goto/16 :goto_0

    .line 105
    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "check_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 107
    const-string v2, "check_backoff"

    .line 108
    goto/16 :goto_0

    .line 110
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.REPORT_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "report_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 112
    const-string v2, "report_backoff"

    .line 113
    goto/16 :goto_0

    .line 115
    :pswitch_6
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "delivery_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 117
    const-string v2, "delivery_backoff"

    .line 118
    goto/16 :goto_0

    .line 120
    :pswitch_7
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v4    # "retryIntent":Landroid/content/Intent;
    const-string v5, "unlock_backoff"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 122
    const-string v2, "unlock_backoff"

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static declared-synchronized retryCancel(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-class v3, Lcom/samsung/android/rlc/util/PushUtil;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action canceled ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v2, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 57
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 58
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v3

    return-void

    .line 54
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "pending":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pushType"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "SPP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0
.end method
