.class public Lcom/android/server/enterprise/otp/CallerVerification;
.super Ljava/lang/Object;
.source "CallerVerification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "callerSign":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v4

    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerVerification::fetchSignature - NameNotFoundException [Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method public static verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const-string v2, "CallerVerification::verifyAdminAccess - Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v13, 0x0

    .local v13, "ret":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "callerPackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v12, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v12, "containerId":I
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v16

    .local v16, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    if-nez v16, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::verifyAdminAccess - OTPToken not found [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v13, 0x408

    :cond_0
    if-nez v13, :cond_1

    const/16 v2, 0x303

    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "CallerVerification::verifyAdminAccess - Token is corrupted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v13, 0x40d

    :cond_1
    if-nez v13, :cond_4

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .local v10, "callerSignInfo":Ljava/lang/String;
    if-nez v10, :cond_5

    const-string v2, "CallerVerification::verifyAdminAccess - Package SignerInfo is NULL"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v13, 0x4ff

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .local v11, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "psToken":J
    if-eqz v13, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller doesn\'t have permission to access OTP Provision Apis. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "callerSignInfo":Ljava/lang/String;
    .end local v11    # "callerUid":I
    .end local v14    # "psToken":J
    :cond_4
    return v13

    .restart local v10    # "callerSignInfo":Ljava/lang/String;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12, v9, v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isAdminAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    const/16 v2, 0x40a

    if-ne v13, v2, :cond_6

    const-string v2, "CallerVerification::verifyAdminAccess - Invalid container id."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x402

    if-ne v13, v2, :cond_2

    const-string v2, "CallerVerification::verifyAdminAccess - Package not whitelisted for this tokenId."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static verifyCreateAccess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    const-string v3, "CallerVerification::verifyCreateAccess - Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    invoke-static {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokenCount()I

    move-result v2

    .local v2, "count":I
    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    const-string v3, "Maximum token limit per device exceeded. Only 12 tokens per device can be provisioned"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v1, "containerId":I
    const/16 v3, 0x40f

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "isHmac"    # Z
    .param p3, "type"    # I

    .prologue
    const-string v2, "CallerVerification::verifyCryptoAccess - Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v14, 0x0

    .local v14, "ret":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "callerPackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v10, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v10, "containerId":I
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v11

    .local v11, "dbh":Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    const/4 v15, 0x0

    .local v15, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    const-wide/16 v12, 0x0

    .local v12, "psToken":J
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v15

    if-nez v15, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::verifyCryptoAccess - OTPToken not found [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v14, 0x408

    if-eqz v14, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Caller is trying to access OTP TokenId that doesn\'t exist. ["

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    :goto_0
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v8, v10}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .local v9, "callerSignInfo":Ljava/lang/String;
    if-nez v9, :cond_7

    const-string v2, "CallerVerification::verifyCryptoAccess - Package SignerInfo is NULL"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v14, 0x4ff

    :cond_1
    :goto_1
    if-eqz v14, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Caller doesn\'t have permission to access this OTP Token. ["

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v9    # "callerSignInfo":Ljava/lang/String;
    :cond_2
    if-nez v14, :cond_5

    if-eqz p2, :cond_3

    const/16 v2, 0x170

    move/from16 v0, p3

    if-eq v2, v0, :cond_3

    const/16 v2, 0x171

    move/from16 v0, p3

    if-ne v2, v0, :cond_4

    :cond_3
    if-nez p2, :cond_5

    const/16 v2, 0x190

    move/from16 v0, p3

    if-eq v2, v0, :cond_5

    const/16 v2, 0x191

    move/from16 v0, p3

    if-eq v2, v0, :cond_5

    :cond_4
    const-string v2, "CallerVerification::verifyCryptoAccess - input type not supported"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v14, 0x40e

    :cond_5
    return v14

    :cond_6
    const/16 v2, 0x303

    invoke-virtual {v15}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v2, "CallerVerification::verifyCryptoAccess - Token is corrupted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v14, 0x40d

    goto :goto_0

    .restart local v9    # "callerSignInfo":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v10, v8, v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/16 v2, 0x40a

    if-ne v14, v2, :cond_8

    const-string v2, "CallerVerification::verifyCryptoAccess - Invalid container id."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const/16 v2, 0x402

    if-ne v14, v2, :cond_1

    const-string v2, "CallerVerification::verifyCryptoAccess - Package not whitelisted for this tokenId."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    const-string v2, "CallerVerification::verifyGenerateAccess - Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/16 v16, 0x0

    .local v16, "ret":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "callerPackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v12, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v12, "containerId":I
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v13

    .local v13, "dbh":Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    const/16 v17, 0x0

    .local v17, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    const-wide/16 v14, 0x0

    .local v14, "psToken":J
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v9, v0}, Lcom/android/server/enterprise/otp/RateCheck;->isCallMalicious(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OTPService::verifyGenerateAccess - Malicious activity detected, caller blocked."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const-string v2, "Please try after sometime"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .local v11, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller is trying to generate OTP beyond fair usage limit. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v16, 0x40c

    .end local v11    # "callerUid":I
    :cond_0
    if-nez v16, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v17

    if-nez v17, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::verifyGenerateAccess - OTPToken not found [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v16, 0x408

    if-eqz v16, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .restart local v11    # "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller is trying to access OTP TokenId that doesn\'t exist. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v11    # "callerUid":I
    :cond_1
    :goto_0
    if-nez v16, :cond_3

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .local v10, "callerSignInfo":Ljava/lang/String;
    if-nez v10, :cond_7

    const-string v2, "CallerVerification::verifyGenerateAccess - Package SignerInfo is NULL"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v16, 0x4ff

    :cond_2
    :goto_1
    if-eqz v16, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .restart local v11    # "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller doesn\'t have permission to access this OTP Token. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "callerSignInfo":Ljava/lang/String;
    .end local v11    # "callerUid":I
    :cond_3
    if-nez v16, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v2

    const/16 v3, 0x301

    if-eq v2, v3, :cond_4

    const-string v2, "CallerVerification::verifyGenerateAccess - Token not active"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v16, 0x407

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .restart local v11    # "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller is trying to access OTP TokenId that doesn\'t exist. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v11    # "callerUid":I
    :cond_4
    if-nez v16, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTokenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->checkPolicy(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallerVerification::verifyGenerateAccess - checkPolicy Failed [ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const-string v2, "OTP Token Expired"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return v16

    :cond_6
    const/16 v2, 0x303

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "CallerVerification::verifyGenerateAccess - Token is corrupted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v16, 0x40d

    goto/16 :goto_0

    .restart local v10    # "callerSignInfo":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12, v9, v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v16

    const/16 v2, 0x40a

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    const-string v2, "CallerVerification::verifyGenerateAccess - Invalid container id."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x402

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    const-string v2, "CallerVerification::verifyGenerateAccess - Package not whitelisted for this tokenId."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static verifyProvisionPermission(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "callerPackage":Ljava/lang/String;
    const-string v1, "android.permission.sec.OTP_PROVISION"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "CallerVerification::verifyCallerPermission - Success"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallerVerification::verifyCallerPermission - Verification Failed [Package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Permission = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.sec.OTP_PROVISION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .local v8, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "psToken":J
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller doesn\'t have permission to access OTP Provision Apis. ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission Denial: This api call requires android.permission.sec.OTP_PROVISION"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
