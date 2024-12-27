.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType3Message.java"


# static fields
.field private static final CIPHER_DES_ECB_NO_PADDING:Ljava/lang/String; = "DES/ECB/NoPadding"

.field private static final ENCODING_US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final HASH_MD5:Ljava/lang/String; = "MD5"

.field private static final MAGIC:Ljava/lang/String; = "KGS!@#$%"


# instance fields
.field domain:Ljava/lang/String;

.field lmCompatibility:I

.field lmResponse:[B

.field ntResponse:[B

.field password:Ljava/lang/String;

.field private randomBytesGenerator:Ljava/security/SecureRandom;

.field serverChallenge:[B

.field username:Ljava/lang/String;

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "serverChallenge"    # [B
    .param p2, "finalFlags"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "workstation"    # Ljava/lang/String;
    .param p7, "lmCompatibility"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    iput p7, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    return-void
.end method

.method private createHashPartForLm([BLjavax/crypto/Cipher;)[B
    .locals 4
    .param p1, "keyBytes"    # [B
    .param p2, "des"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v1

    .local v1, "key":Ljava/security/Key;
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v2, "KGS!@#$%"

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .local v0, "hash":[B
    return-object v0
.end method

.method private createKeyFrom([BI)[B
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x7

    new-array v0, v2, [B

    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private createLMResponse([B[B)[B
    .locals 7
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForLm([B)[B

    move-result-object v2

    .local v2, "lmHash":[B
    const/16 v5, 0x15

    new-array v1, v5, [B

    .local v1, "keyBytes":[B
    const/16 v5, 0x10

    invoke-static {v2, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v0

    .local v0, "firstKey":[B
    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    .local v3, "secondKey":[B
    const/16 v5, 0xe

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .local v4, "thirdKey":[B
    invoke-direct {p0, p2, v0, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createNTLMResponse([B[B)[B
    .locals 7
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v2

    .local v2, "ntlmHash":[B
    const/16 v5, 0x15

    new-array v1, v5, [B

    .local v1, "keyBytes":[B
    const/16 v5, 0x10

    invoke-static {v2, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v0

    .local v0, "firstKey":[B
    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    .local v3, "secondKey":[B
    const/16 v5, 0xe

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .local v4, "thirdKey":[B
    invoke-direct {p0, p2, v0, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createType3Message()[B
    .locals 21

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    const/16 v17, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v6, "UTF-16LE"

    .local v6, "encodingStandard":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .local v4, "domainBytes":[B
    const/4 v5, 0x0

    .local v5, "domainLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    :cond_2
    const/4 v15, 0x0

    .local v15, "workstationBytes":[B
    const/16 v16, 0x0

    .local v16, "workstationLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    :cond_3
    const/4 v13, 0x0

    .local v13, "usernameBytes":[B
    const/4 v14, 0x0

    .local v14, "usernameLength":I
    const-string v17, "Cp850"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v14, v13

    const/4 v10, 0x0

    .local v10, "sessionKeyBytes":[B
    const/4 v11, 0x0

    .local v11, "sessionKeyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .local v8, "ntResponseLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    .local v7, "lmResponseLength":I
    add-int/lit8 v17, v5, 0x40

    add-int v17, v17, v14

    add-int v17, v17, v16

    add-int v17, v17, v7

    add-int v17, v17, v8

    add-int v17, v17, v11

    move/from16 v0, v17

    new-array v12, v0, [B

    .local v12, "type3MessageBytes":[B
    sget-object v17, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->NTLM_HEADER_BYTES:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v17, 0x8

    const/16 v18, 0x3

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v9, 0x40

    .local v9, "offset":I
    const/16 v17, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v9, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v7

    const/16 v17, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v9, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v8

    const/16 v17, 0x1c

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v5

    const/16 v17, 0x24

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v13}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v9, v14

    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v15}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int v9, v9, v16

    const/16 v17, 0x34

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v10}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    const/16 v17, 0x3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getFlags()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    goto/16 :goto_0

    .end local v4    # "domainBytes":[B
    .end local v5    # "domainLength":I
    .end local v6    # "encodingStandard":Ljava/lang/String;
    .end local v7    # "lmResponseLength":I
    .end local v8    # "ntResponseLength":I
    .end local v9    # "offset":I
    .end local v10    # "sessionKeyBytes":[B
    .end local v11    # "sessionKeyLength":I
    .end local v12    # "type3MessageBytes":[B
    .end local v13    # "usernameBytes":[B
    .end local v14    # "usernameLength":I
    .end local v15    # "workstationBytes":[B
    .end local v16    # "workstationLength":I
    :catch_0
    move-exception v17

    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v6, "Cp850"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method private encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V
    .locals 4
    .param p1, "challenge"    # [B
    .param p2, "keyBytes"    # [B
    .param p3, "result"    # [B
    .param p4, "des"    # Ljavax/crypto/Cipher;
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v0

    .local v0, "key":Ljava/security/Key;
    const/4 v2, 0x1

    invoke-virtual {p4, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .local v1, "partialResult":[B
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p3, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method private getBytesForNtlm2([B[B[B)[B
    .locals 10
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .param p3, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v3

    .local v3, "ntlmHash":[B
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2, p3, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    new-array v5, v9, [B

    .local v5, "sessionHash":[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7, v8, v5, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v7, 0x15

    new-array v1, v7, [B

    .local v1, "keyBytes":[B
    const/16 v7, 0x10

    invoke-static {v3, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v0

    .local v0, "firstKey":[B
    const/4 v7, 0x7

    invoke-direct {p0, v1, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .local v4, "secondKey":[B
    const/16 v7, 0xe

    invoke-direct {p0, v1, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    .local v6, "thirdKey":[B
    invoke-direct {p0, v5, v0, v4, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v7

    return-object v7
.end method

.method private getLmBytes([B[B[B[B)[B
    .locals 6
    .param p1, "challenge"    # [B
    .param p2, "firstKey"    # [B
    .param p3, "secondKey"    # [B
    .param p4, "thirdKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v0, 0x18

    new-array v3, v0, [B

    .local v3, "result":[B
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .local v4, "des":Ljavax/crypto/Cipher;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    const/16 v5, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    return-object v3
.end method

.method private getPasswordForLm(Ljava/lang/String;)[B
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cp850"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getPasswordForNtlm(Ljava/lang/String;)[B
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getSecret([B)Ljava/security/Key;
    .locals 4
    .param p1, "keyBytes"    # [B

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    new-array v1, v2, [B

    .local v1, "material":[B
    aget-byte v2, p1, v3

    aput-byte v2, v1, v3

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    array-length v3, v1

    sub-int/2addr v3, v0

    shl-int/2addr v2, v3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    ushr-int/2addr v3, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->processParityForBytes([B)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private hashForLm([B)[B
    .locals 10
    .param p1, "bytePassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0x8

    const/4 v7, 0x0

    array-length v6, p1

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "length":I
    new-array v2, v9, [B

    .local v2, "keyBytes":[B
    invoke-static {p1, v7, v2, v7, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v6, "DES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "des":Ljavax/crypto/Cipher;
    invoke-direct {p0, v2, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v1

    .local v1, "firstHash":[B
    const/4 v6, 0x7

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v5

    .local v5, "secondHash":[B
    const/16 v6, 0x10

    new-array v4, v6, [B

    .local v4, "lmHash":[B
    invoke-static {v1, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v5, v7, v4, v8, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v4
.end method

.method private hashForNtlm([B)[B
    .locals 2
    .param p1, "bytePassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;

    invoke-direct {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>()V

    .local v0, "md4":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method private processParityForBytes([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-byte v0, p1, v1

    .local v0, "b":B
    ushr-int/lit8 v3, v0, 0x7

    ushr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x1

    xor-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .local v2, "needsParity":Z
    :goto_1
    if-eqz v2, :cond_1

    aget-byte v3, p1, v1

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "needsParity":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "needsParity":Z
    :cond_1
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    goto :goto_2

    .end local v0    # "b":B
    .end local v2    # "needsParity":Z
    :cond_2
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v4, 0x80000

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x18

    new-array v2, v4, [B

    .local v2, "randomClientNonce":[B
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v4, 0x8

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getBytesForNtlm2([B[B[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    iput-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v3

    .local v3, "type3MessageBytes":[B
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .local v1, "encode":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "encode":Ljava/lang/String;
    .end local v2    # "randomClientNonce":[B
    .end local v3    # "type3MessageBytes":[B
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForLm(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createLMResponse([B[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createNTLMResponse([B[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v3

    .restart local v3    # "type3MessageBytes":[B
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "encode":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "encode":Ljava/lang/String;
    .end local v3    # "type3MessageBytes":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    return-void
.end method
