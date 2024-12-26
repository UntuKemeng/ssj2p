.class public Lcom/samsung/android/rlc/util/HMACUtil;
.super Ljava/lang/Object;
.source "HMACUtil.java"


# static fields
.field private static final HMAC_SHA256_ALGORITHM:Ljava/lang/String; = "HmacSHA256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacSHA256"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    .local v2, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "HmacSHA256"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 38
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 41
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 45
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 22
    .local v1, "formatter":Ljava/util/Formatter;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    .line 23
    .local v0, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
