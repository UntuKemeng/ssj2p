.class public Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;
.super Ljava/lang/Object;
.source "DirectDataProvision.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/provision/IProvision;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;Landroid/os/Bundle;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->prepareDataForSecureStorage(Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method private doProvisionInThread(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "tokenId"    # Ljava/lang/String;
    .param p3, "callerPackage"    # Ljava/lang/String;
    .param p4, "containerId"    # I

    .prologue
    .line 196
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision$1;-><init>(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision$1;->start()V

    .line 253
    return-void
.end method

.method private prepareDataForSecureStorage(Landroid/os/Bundle;Z)I
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isCreate"    # Z

    .prologue
    .line 84
    const/4 v6, 0x0

    .line 85
    .local v6, "ret":I
    const/4 v8, 0x0

    .line 87
    .local v8, "sharedSecret":[B
    const/4 v1, 0x0

    .line 88
    .local v1, "encryption_iv":[B
    const/4 v5, 0x0

    .line 89
    .local v5, "pbe_salt":[B
    const/4 v4, 0x0

    .line 91
    .local v4, "pbe_pwd":[B
    const-string v10, "OTP_OATH_PROTOCOL"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    .local v2, "oathProtocol":I
    const/16 v10, 0x102

    if-ne v2, v10, :cond_3

    .line 93
    const-string v10, "OCRA_SUITE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "ocraSuite":Ljava/lang/String;
    if-nez p2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    .line 95
    :cond_1
    invoke-static {v3}, Lcom/android/server/enterprise/otp/OCRACheck;->isOcraSuiteValid(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 96
    const/16 v10, 0x401

    .line 191
    .end local v3    # "ocraSuite":Ljava/lang/String;
    :goto_0
    return v10

    .line 98
    .restart local v3    # "ocraSuite":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/android/server/enterprise/otp/OCRACheck;->isOtpServiceSupportPresent(Ljava/lang/String;)I

    move-result v6

    .line 99
    if-eqz v6, :cond_3

    move v10, v6

    .line 100
    goto :goto_0

    .line 104
    .end local v3    # "ocraSuite":Ljava/lang/String;
    :cond_3
    const-string v10, "SECRET_ENCODING_TYPE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 105
    .local v7, "secretEncoding":I
    const/16 v10, 0x163

    if-ne v7, v10, :cond_a

    .line 106
    const-string v10, "SHARED_SECRET"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "temp":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v10, "[a-fA-F0-9]*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 108
    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 114
    :goto_1
    if-nez v6, :cond_4

    const-string v10, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_4

    .line 115
    const-string v10, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 116
    if-eqz v9, :cond_7

    const-string v10, "[a-fA-F0-9]*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 117
    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 123
    :goto_2
    const-string v10, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 124
    if-nez v6, :cond_8

    if-eqz v9, :cond_8

    const-string v10, "[a-fA-F0-9]*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 125
    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 131
    :goto_3
    const-string v10, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    if-nez v6, :cond_9

    if-eqz v9, :cond_9

    const-string v10, "[a-fA-F0-9]*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 133
    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 183
    .end local v9    # "temp":Ljava/lang/String;
    :cond_4
    :goto_4
    const-string v10, "SHARED_SECRET"

    invoke-virtual {p1, v10, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 185
    const-string v10, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x186

    if-eq v10, v11, :cond_5

    .line 186
    const-string v10, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v10, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 187
    const-string v10, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v10, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 188
    const-string v10, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v10, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_5
    move v10, v6

    .line 191
    goto/16 :goto_0

    .line 110
    .restart local v9    # "temp":Ljava/lang/String;
    :cond_6
    const-string v10, "DirectDataProvision::prepareDataForSecureStorage shared secret is not in proper hex format"

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 111
    const/16 v6, 0x401

    goto :goto_1

    .line 119
    :cond_7
    const-string v10, "DirectDataProvision::prepareDataForSecureStorage encryption_iv is not in proper hex format"

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 120
    const/16 v6, 0x401

    goto :goto_2

    .line 127
    :cond_8
    const-string v10, "DirectDataProvision::prepareDataForSecureStorage pbe_salt is not in proper hex format"

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 128
    const/16 v6, 0x401

    goto :goto_3

    .line 135
    :cond_9
    const-string v10, "DirectDataProvision::prepareDataForSecureStorage pbe_pwd is not in proper hex format"

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 136
    const/16 v6, 0x401

    goto :goto_4

    .line 139
    .end local v9    # "temp":Ljava/lang/String;
    :cond_a
    const/16 v10, 0x161

    if-ne v7, v10, :cond_b

    .line 142
    :try_start_0
    const-string v10, "SHARED_SECRET"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 143
    const-string v10, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_4

    .line 144
    const-string v10, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 145
    const-string v10, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 146
    const-string v10, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_4

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DirectDataProvision::IllegalArgumentException - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 151
    const/16 v10, 0x401

    goto/16 :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    const/16 v10, 0x162

    if-ne v7, v10, :cond_c

    .line 155
    :try_start_1
    const-string v10, "SHARED_SECRET"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 157
    const-string v10, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x186

    if-eq v10, v11, :cond_4

    const-string v10, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_4

    .line 159
    const-string v10, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 161
    const-string v10, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 163
    const-string v10, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_4

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DirectDataProvision::IllegalArgumentException - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 169
    const/16 v10, 0x401

    goto/16 :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_c
    const/16 v10, 0x160

    if-ne v7, v10, :cond_4

    .line 173
    :try_start_2
    const-string v10, "SHARED_SECRET"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 174
    const-string v10, "SHARED_SECRET"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ASCII"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    goto/16 :goto_4

    .line 175
    :catch_2
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v10, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    const-string v11, "OTP Token creation failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DirectDataProvision::UnsupportedEncodingException - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 179
    const/16 v10, 0x401

    goto/16 :goto_0
.end method


# virtual methods
.method public doProvision(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const-string v5, "DirectDataProvision::doProvision ENTER"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 41
    const/4 v3, 0x0

    .line 42
    .local v3, "ret":I
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v5, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 44
    .local v1, "containerId":I
    const/4 v2, 0x0

    .line 45
    .local v2, "internalTokenId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 48
    .local v4, "tokenId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->setWhitelistAndSignerInfo(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->generateTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v5, "OTP_TOKEN_ID"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 55
    const-string v5, "DirectDataProvision::doProvision - No vendor id assigned. Assigning from OTP Service"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 56
    const-string v5, "OTP_TOKEN_ID"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    move-object v4, v2

    .line 59
    :cond_0
    const-string v5, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v5, "TOKEN_STATE"

    const/16 v6, 0x300

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v5, "CONTAINER_ID"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    :cond_1
    if-nez v3, :cond_2

    .line 66
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeProvisioningData(Landroid/os/Bundle;)I

    move-result v3

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DirectDataProvision::doProvision - DBHandler.storeProvisioningData() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 71
    :cond_2
    if-nez v3, :cond_3

    .line 72
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->doProvisionInThread(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    :goto_0
    return-object v4

    .line 74
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v0, v1, v3}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DirectDataProvision::doProvision - Token Creation Failed. [ tokenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doResync(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x401

    const/4 v5, 0x0

    .line 257
    const-string v3, "DirectDataProvision::doResync ENTER"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    .line 261
    .local v0, "ret":I
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v1

    .local v1, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    if-nez v1, :cond_2

    .line 262
    .end local v1    # "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    :cond_0
    const-string v3, "DirectDataProvision::doResync | Invalid tokenId"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 317
    :cond_1
    :goto_0
    return v2

    .line 266
    .restart local v1    # "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    :cond_2
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getAlgorithmType()I

    move-result v3

    const-string v4, "OTP_OATH_PROTOCOL"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 271
    if-nez v0, :cond_3

    .line 272
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->updateResyncTokenData(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 273
    :cond_3
    if-nez v0, :cond_9

    .line 274
    const-string v2, "DirectDataProvision::doResync | Resync token data updated : db"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 279
    :goto_1
    if-nez v0, :cond_5

    const-string v2, "WHITELIST_ADD"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "WHITELIST_REMOVE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->updateTokenWhitelist(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 283
    if-nez v0, :cond_a

    .line 284
    const-string v2, "DirectDataProvision::doResync | whitelist successfully updated"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 290
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 291
    invoke-direct {p0, p2, v5}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->prepareDataForSecureStorage(Landroid/os/Bundle;Z)I

    move-result v0

    .line 294
    :cond_6
    if-nez v0, :cond_7

    .line 295
    invoke-static {p2, v5}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->checkSecureStorageData(Landroid/os/Bundle;Z)I

    move-result v0

    .line 298
    :cond_7
    if-nez v0, :cond_8

    .line 299
    const-string v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->resyncToken(Landroid/os/Bundle;)I

    move-result v0

    .line 302
    if-eqz v0, :cond_b

    .line 303
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    const-string v3, "OTP Token resync failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDataProvision::doResync - resync failed. [ tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :cond_8
    :goto_3
    move v2, v0

    .line 317
    goto :goto_0

    .line 276
    :cond_9
    const-string v2, "DirectDataProvision::doResync | Resync token data updation failed : db"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_a
    const-string v2, "DirectDataProvision::doResync | whitelist update failed"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 308
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->checkPolicy(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 309
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    const/16 v3, 0x301

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I

    .line 311
    :cond_c
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    const-string v3, "OTP Token resync successful"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDataProvision::doResync - resync successful. [ tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_3
.end method
