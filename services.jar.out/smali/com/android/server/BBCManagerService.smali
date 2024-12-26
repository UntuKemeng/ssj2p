.class public Lcom/android/server/BBCManagerService;
.super Ljava/lang/Object;
.source "BBCManagerService.java"


# static fields
.field static final ACCESS_PERSONAL_APPS:Ljava/lang/String; = "accessPersonalApps"

.field static final GENERAL_INFO:Ljava/lang/String; = "general_info"

.field static final MANAGE_BBC_APP_INFO:Ljava/lang/String; = "manage_bbc_app_info"

.field static final NFC_APP:Ljava/lang/String; = "com.android.nfc"

.field static final PACKAGE_UID_INFO:Ljava/lang/String; = "packageUidInfo"

.field static final PRINT_BBC_APP_INFO:Ljava/lang/String; = "print_bbc_app_info"

.field static final TAG:Ljava/lang/String; = "BBCManagerService"

.field static mBbcDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add_bbc_info(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const/4 v6, 0x0

    .line 73
    .local v6, "ret":Landroid/os/Bundle;
    const-string/jumbo v8, "packageName"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "bbcApp":Ljava/lang/String;
    const-string/jumbo v8, "uid"

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 76
    .local v7, "uid":I
    if-eqz v1, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    const-string v8, "accessPersonalApps"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 81
    .local v3, "new_accessPersonalApps":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v9, "accessPersonalApps"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 82
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v9, "accessPersonalApps"

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    if-eqz v3, :cond_3

    .line 89
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    :goto_1
    if-lez v7, :cond_0

    .line 99
    const/4 v5, 0x0

    .line 101
    .local v5, "packageUidInfo":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 102
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 103
    .restart local v5    # "packageUidInfo":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v8, "general_info"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 115
    .local v4, "new_options":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 117
    .local v2, "general_info":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 118
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "general_info":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 119
    .restart local v2    # "general_info":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_3
    if-eqz v4, :cond_1

    .line 125
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .end local v2    # "general_info":Landroid/os/Bundle;
    .end local v3    # "new_accessPersonalApps":Landroid/os/Bundle;
    .end local v4    # "new_options":Landroid/os/Bundle;
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "ret":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 133
    .restart local v6    # "ret":Landroid/os/Bundle;
    const-string/jumbo v8, "result"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    return-object v6

    .line 85
    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .restart local v3    # "new_accessPersonalApps":Landroid/os/Bundle;
    :cond_2
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v9, "accessPersonalApps"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    .restart local v5    # "packageUidInfo":Landroid/os/Bundle;
    :cond_4
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    check-cast v5, Landroid/os/Bundle;

    .restart local v5    # "packageUidInfo":Landroid/os/Bundle;
    goto :goto_2

    .line 121
    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    .restart local v2    # "general_info":Landroid/os/Bundle;
    .restart local v4    # "new_options":Landroid/os/Bundle;
    :cond_5
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "general_info":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "general_info":Landroid/os/Bundle;
    goto :goto_3
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 408
    .local v3, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 409
    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "h":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 411
    .local v2, "l":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    .line 414
    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 417
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "h":Ljava/lang/String;
    .end local v2    # "l":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 355
    const-string/jumbo v12, "package"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageManagerService;

    .line 356
    .local v8, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v4, 0x40

    .line 357
    .local v4, "flags":I
    const/4 v7, 0x0

    .line 359
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v8, p0, v4, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 365
    if-nez v7, :cond_0

    .line 403
    :goto_0
    return-object v3

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "BBCManagerService"

    const-string v13, "Cannot find pkg info"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 369
    .local v11, "signatures":[Landroid/content/pm/Signature;
    if-nez v11, :cond_1

    .line 370
    const-string v12, "BBCManagerService"

    const-string v13, "Cannot find signatures"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    const/4 v9, 0x0

    .line 376
    .local v9, "pubKey":Ljava/security/PublicKey;
    const/4 v12, 0x0

    :try_start_1
    aget-object v12, v11, v12

    invoke-virtual {v12}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 383
    :goto_1
    if-nez v9, :cond_2

    .line 384
    const-string v12, "BBCManagerService"

    const-string v13, "Cannot find public key"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :catch_1
    move-exception v0

    .line 378
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 379
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v6

    .line 380
    .local v6, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 388
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    invoke-interface {v9}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 390
    .local v2, "endcodedPubKey":[B
    const/4 v3, 0x0

    .line 393
    .local v3, "finalResult":Ljava/lang/String;
    :try_start_2
    const-string v12, "SHA-256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 394
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 395
    .local v10, "sha256Result":[B
    invoke-static {v10}, Lcom/android/server/BBCManagerService;->byte2HexFormatted([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v3

    .line 402
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v10    # "sha256Result":[B
    :goto_2
    const-string v12, "BBCManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sha256 Result ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :catch_3
    move-exception v1

    .line 397
    .local v1, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 398
    .end local v1    # "e1":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v6

    .line 399
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method public static handleExchangeDataBBC(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, "ret":Landroid/os/Bundle;
    if-nez p2, :cond_0

    .line 229
    const/4 v3, 0x0

    .line 251
    :goto_0
    return-object v3

    .line 232
    :cond_0
    const-string v3, "action"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "action":Ljava/lang/String;
    const-string v3, "BBCManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExchangeDataBBC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    const-string/jumbo v3, "manage_bbc_app_info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    const-string v3, "add"

    const-string/jumbo v4, "type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-static {p2}, Lcom/android/server/BBCManagerService;->add_bbc_info(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_1
    :goto_1
    move-object v3, v2

    .line 251
    goto :goto_0

    .line 240
    :cond_2
    const-string/jumbo v3, "remove"

    const-string/jumbo v4, "type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    const-string/jumbo v3, "packageName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BBCManagerService;->remove_bbc_info(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 244
    :cond_3
    const-string/jumbo v3, "print_bbc_app_info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-static {}, Lcom/android/server/BBCManagerService;->printBbcInformation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "caller_uid"    # I
    .param p2, "callee"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 255
    const/4 v3, 0x0

    .line 257
    .local v3, "ret":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v5

    .line 262
    :cond_1
    :try_start_0
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "accessPersonalApps"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 264
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    if-nez p0, :cond_2

    .line 265
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v7, "packageUidInfo"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 267
    .local v4, "uids":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 276
    .end local v4    # "uids":Landroid/os/Bundle;
    :cond_2
    if-eqz v0, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 278
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 280
    .local v1, "apps":Landroid/os/Bundle;
    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 281
    const/4 v3, 0x1

    .line 283
    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/BBCManagerService;->verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const-string v5, "*"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 286
    :cond_5
    const/4 v3, 0x1

    .line 288
    :cond_6
    const-string v5, "BBCManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAccessPersonalApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .end local v1    # "apps":Landroid/os/Bundle;
    :cond_7
    :goto_1
    move v5, v3

    .line 295
    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isActiveKeaApp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 302
    .local v1, "ret":Z
    sget-object v2, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v3, "general_info"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 304
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const/4 v1, 0x1

    .line 310
    :cond_0
    return v1
.end method

.method public static needToForwardBBC(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 7
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bbcId"    # I

    .prologue
    const/4 v4, -0x1

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/android/server/BBCManagerService;->isActiveKeaApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    const-string v5, "com.android.nfc"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    invoke-static {p1, v5, p0}, Lcom/android/server/BBCManagerService;->isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move p2, p3

    .line 67
    .end local p2    # "userId":I
    :cond_1
    :goto_0
    return p2

    .line 48
    .restart local p2    # "userId":I
    :cond_2
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 51
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {v2, p0, v5, v6}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x81

    .line 55
    .local v3, "systemAppMask":I
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x81

    if-nez v5, :cond_1

    move p2, v4

    .line 67
    goto :goto_0

    .line 63
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "systemAppMask":I
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static printBbcInformation()V
    .locals 10

    .prologue
    .line 184
    const-string v7, "BBCManagerService"

    const-string v8, "BBC_gerneral_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "general_info"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 186
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 190
    .local v2, "general_info":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 192
    .local v6, "key2":Ljava/lang/String;
    const-string v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " val : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v2    # "general_info":Landroid/os/Bundle;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key2":Ljava/lang/String;
    :cond_1
    const-string v7, "BBCManagerService"

    const-string v8, "BBC_gerneral_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v7, "BBCManagerService"

    const-string v8, "BBC_UID_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "packageUidInfo"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 202
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    .restart local v5    # "key":Ljava/lang/String;
    const-string v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " val : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    const-string v7, "BBCManagerService"

    const-string v8, "BBC_UID_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v7, "BBCManagerService"

    const-string v8, "BBC_accessPersonalApps_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v8, "accessPersonalApps"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 212
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 213
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    .restart local v5    # "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "accesssPersonalApps":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 217
    .restart local v6    # "key2":Ljava/lang/String;
    const-string v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 222
    .end local v0    # "accesssPersonalApps":Landroid/os/Bundle;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key2":Ljava/lang/String;
    :cond_4
    const-string v7, "BBCManagerService"

    const-string v8, "BBC_accessPersonalApps_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method private static remove_bbc_info(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v2, 0x0

    .line 177
    :goto_0
    return-object v2

    .line 147
    :cond_0
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v5, "accessPersonalApps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 155
    :cond_1
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "packageUidInfo"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 156
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .local v3, "uid":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 166
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "general_info"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 167
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 173
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v2, "ret":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 314
    const-string v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parameter ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "*"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 317
    :cond_0
    const-string v6, "BBCManagerService"

    const-string/jumbo v7, "public key is null. All pkg is granted"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return v5

    .line 322
    :cond_1
    :try_start_0
    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 325
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-virtual {v2, p0, v7, v8}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 327
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x81

    .line 329
    .local v3, "systemAppMask":I
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_2

    .line 330
    const-string v7, "BBCManagerService"

    const-string v8, "System app. Do not need to verify public key. Return true"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "systemAppMask":I
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "BBCManagerService"

    const-string v8, "Exception has occured while verifying public key"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {p0}, Lcom/android/server/BBCManagerService;->getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "target":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    :cond_3
    const-string v5, "BBCManagerService"

    const-string/jumbo v7, "target is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 342
    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 346
    const-string v6, "BBCManagerService"

    const-string/jumbo v7, "publicKey is verified"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_5
    const-string v5, "BBCManagerService"

    const-string/jumbo v7, "publicKey is not matched"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 351
    goto :goto_0
.end method
