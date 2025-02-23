.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CryptoManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ecryptWithAES256CBC([B[B[B)[B
    .locals 7
    .param p1, "plaintext"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "ciphertext":[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v3, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v5, -0x8

    const-string v6, "ecryptWithAES256CBC"

    # invokes: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public ecryptWithServerPubKey([B[B)[B
    .locals 10
    .param p1, "plaintext"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "ciphertext":[B
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v5, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .local v6, "key":Ljava/security/PublicKey;
    const-string v7, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "key":Ljava/security/PublicKey;
    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v7, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v8, -0x8

    const-string v9, "ecryptWithServerPubKey"

    # invokes: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getRandom([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .local v0, "srand":Ljava/security/SecureRandom;
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public hmacSha256([B[B)[B
    .locals 7
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "result":[B
    const-string v0, "HmacSHA256"

    .local v0, "HMAC_SHA256_ALGORITHM":Ljava/lang/String;
    :try_start_0
    const-string v4, "HmacSHA256"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA256"

    invoke-direct {v4, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v2    # "mac":Ljavax/crypto/Mac;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v5, -0x8

    const-string v6, "hmacSha256"

    # invokes: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sha256(Ljava/lang/String;)[B
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "output":[B
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v4, -0x8

    const-string v5, "sha256"

    # invokes: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public verifyCertChain([B)Z
    .locals 1
    .param p1, "serverCert"    # [B

    .prologue
    # getter for: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$200()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->verifyCertificate([B)Z

    move-result v0

    return v0
.end method
