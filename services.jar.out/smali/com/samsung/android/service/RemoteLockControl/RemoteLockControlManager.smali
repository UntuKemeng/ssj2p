.class public final Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;,
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    }
.end annotation


# static fields
.field private static final COMPLETED_STATE:Ljava/lang/String; = "Completed"

.field private static final LOCKED_STATE:Ljava/lang/String; = "Locked"

.field private static final NORMAL_STATE:Ljava/lang/String; = "Normal"

.field private static final RLC_AES256_IV_SIZE:I = 0x10

.field private static final RLC_AES256_KEY_SIZE:I = 0x20

.field private static final RLC_DELAY_TIME:I = 0x7530

.field private static final RLC_ERR_CERTIFICATE:I = -0x3

.field private static final RLC_ERR_CRYPTO_FUNCTION:I = -0x8

.field private static final RLC_ERR_GENERAL:I = -0x1

.field private static final RLC_ERR_INVALID_ARGUMENT:I = -0x2

.field private static final RLC_ERR_INVALID_TOKEN:I = -0x4

.field private static final RLC_ERR_LOCKSCREEN:I = -0x9

.field private static final RLC_ERR_MAX_FAILURE_COUNT_REACHED:I = -0x7

.field private static final RLC_ERR_SERIALIZATION:I = -0xa

.field private static final RLC_ERR_SERVER_RESULT_FAIL:I = -0x6

.field private static final RLC_ERR_VAULTKEEPER:I = -0x5

.field private static final RLC_FAILCOUNT_FOR_DELAY:I = 0x5

.field private static final RLC_ID_SIZE:I = 0x28

.field private static final RLC_KEY_SIZE:I = 0x20

.field private static final RLC_NONCE_FLAG_VERIFY:I = 0x2

.field private static final RLC_NONCE_FLAG_WRITE:I = 0x1

.field private static final RLC_NONCE_SIZE:I = 0x20

.field private static final RLC_SHA256_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "RlcManager"

.field private static mCompleteUnlockingDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager; = null

.field private static mLockSettingsService:Lcom/android/internal/widget/ILockSettings; = null

.field private static mNonceDev:[B = null

.field private static mNonceSvr:[B = null

.field private static mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener; = null

.field private static mRlcId:[B = null

.field private static mRlcKey:[B = null

.field private static final mRlcVaultName:Ljava/lang/String; = "RemoteLockControl"

.field private static mServerCert:[B

.field private static mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# instance fields
.field mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 67
    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    .line 68
    const/16 v0, 0x28

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    .line 69
    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    .line 70
    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 79
    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    .line 80
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    .line 81
    const-string v0, "RemoteLockControl"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 82
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    .line 83
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    .line 84
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rlcListener"    # Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 89
    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    .line 90
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    .line 91
    const-string v0, "RemoteLockControl"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 92
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    .line 93
    sput-object p2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    .line 94
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 95
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    return v0
.end method

.method static synthetic access$200()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    return-void
.end method

.method private clearRlcData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 100
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 101
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 102
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 103
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    .line 108
    :cond_0
    return-void
.end method

.method private deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "objectBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 797
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 799
    .local v3, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 800
    :cond_0
    const/4 v3, 0x0

    .line 814
    .end local v3    # "ret":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3

    .line 804
    .restart local v3    # "ret":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 805
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 806
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 808
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 811
    const/16 v4, -0xa

    const-string v5, "Error deserialize"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 819
    const-string v3, "RlcManager"

    const-string v4, "getRlcVaultData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v2, 0x0

    .line 824
    .local v2, "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v0

    .line 825
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 826
    const/4 v3, -0x5

    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 828
    :cond_0
    array-length v3, v0

    if-nez v3, :cond_1

    .line 830
    const-string v3, "RlcManager"

    const-string v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v3, 0x0

    .line 841
    :goto_0
    return-object v3

    .line 834
    :cond_1
    const-class v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    check-cast v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    move-object v3, v2

    .line 841
    goto :goto_0

    .line 836
    .end local v0    # "bytes":[B
    .end local v2    # "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1
.end method

.method private makeDeviceMsg([B[B[B[B[B[B)[B
    .locals 7
    .param p1, "serverCert"    # [B
    .param p2, "rlcKey"    # [B
    .param p3, "rlcId"    # [B
    .param p4, "nonceSvr"    # [B
    .param p5, "nonceDev"    # [B
    .param p6, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "msgLength":I
    if-eqz p2, :cond_0

    array-length v5, p2

    add-int/2addr v3, v5

    .line 152
    :cond_0
    if-eqz p3, :cond_1

    array-length v5, p3

    add-int/2addr v3, v5

    .line 153
    :cond_1
    if-eqz p4, :cond_2

    array-length v5, p4

    add-int/2addr v3, v5

    .line 154
    :cond_2
    if-eqz p5, :cond_3

    array-length v5, p5

    add-int/2addr v3, v5

    .line 155
    :cond_3
    if-eqz p6, :cond_4

    array-length v5, p6

    add-int/2addr v3, v5

    .line 157
    :cond_4
    new-array v2, v3, [B

    .line 158
    .local v2, "msg":[B
    const/4 v0, 0x0

    .line 159
    .local v0, "deviceMsg":[B
    const/4 v4, 0x0

    .line 163
    .local v4, "offset":I
    if-eqz p2, :cond_5

    .line 165
    const/4 v5, 0x0

    :try_start_0
    array-length v6, p2

    invoke-static {p2, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 166
    array-length v5, p2

    add-int/2addr v4, v5

    .line 169
    :cond_5
    if-eqz p3, :cond_6

    .line 171
    const/4 v5, 0x0

    array-length v6, p3

    invoke-static {p3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 172
    array-length v5, p3

    add-int/2addr v4, v5

    .line 175
    :cond_6
    if-eqz p4, :cond_7

    .line 177
    const/4 v5, 0x0

    array-length v6, p4

    invoke-static {p4, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 178
    array-length v5, p4

    add-int/2addr v4, v5

    .line 181
    :cond_7
    if-eqz p5, :cond_8

    .line 183
    const/4 v5, 0x0

    array-length v6, p5

    invoke-static {p5, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 184
    array-length v5, p5

    add-int/2addr v4, v5

    .line 187
    :cond_8
    if-eqz p6, :cond_9

    .line 189
    const/4 v5, 0x0

    array-length v6, p6

    invoke-static {p6, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 190
    array-length v5, p6

    add-int/2addr v4, v5

    .line 193
    :cond_9
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->encryptData([B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1
.end method

.method private makeResultDev()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v8, 0x0

    .line 210
    .local v8, "resultDev":[B
    :try_start_0
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "state":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 212
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 214
    :cond_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 227
    .end local v9    # "state":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 217
    :catch_0
    move-exception v7

    .line 219
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7

    .line 221
    .end local v7    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catch_1
    move-exception v7

    .line 223
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    const/4 v0, -0x1

    const-string v1, "Exception"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private parameterChecking([B[B[B)V
    .locals 6
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x28

    const/16 v4, 0x20

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_4

    .line 122
    const-string v0, "serverCert is null"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 132
    :goto_0
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eq v0, v4, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nonceSvr size is wrong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), it should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-eq v0, v5, :cond_1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rlcId size is wrong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), it should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 139
    :cond_1
    if-eqz p2, :cond_2

    .line 140
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {p2, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 142
    :cond_2
    if-eqz p3, :cond_3

    .line 143
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {p3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 145
    :cond_3
    return-void

    .line 126
    :cond_4
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->verifyCertChain([B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 127
    const/4 v0, -0x3

    const-string v1, "Failed to verify Certificate Chain"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 129
    :cond_5
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    goto :goto_0
.end method

.method private serialize(Ljava/lang/Object;)[B
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 773
    const/4 v3, 0x0

    .line 775
    .local v3, "ret":[B
    if-nez p1, :cond_0

    .line 776
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 791
    :goto_0
    return-object v4

    .line 780
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 781
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 782
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 783
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_1
    move-object v4, v3

    .line 791
    goto :goto_0

    .line 785
    :catch_0
    move-exception v1

    .line 787
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 788
    const/16 v4, -0xa

    const-string v5, "Error serialize"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private setRemoteLockToLockscreen()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v8, -0x9

    .line 697
    const-string v4, "RlcManager"

    const-string v5, "setRemoteLockToLockscreen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :try_start_0
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v4, :cond_0

    .line 702
    const-string v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    .line 705
    .local v2, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v2, :cond_1

    .line 707
    const/16 v4, -0x9

    const-string v5, "getRlcVaultData return null"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 710
    :cond_1
    new-instance v4, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v5, 0x2

    const-string v6, "Locked"

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-direct {v4, v5, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    .line 719
    .local v1, "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 730
    .end local v1    # "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v2    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 724
    const-string v3, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v8, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    .line 726
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 728
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method private throwException(ILjava/lang/String;)V
    .locals 3
    .param p1, "rlcErrorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v0, "RlcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToLockScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 737
    .local v1, "ret":Z
    const-string v2, "RlcManager"

    const-string v3, "bindToLockScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :try_start_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v2, :cond_0

    .line 741
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 743
    :cond_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 744
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 754
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 748
    const/16 v2, -0x9

    const-string v3, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 752
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public completeCompleting(Z[B)[B
    .locals 6
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 370
    const-string v3, "RlcManager"

    const-string v4, "completeCompleting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    .line 375
    .local v1, "resultDev":[B
    if-nez p1, :cond_0

    .line 376
    const/4 v3, -0x6

    :try_start_0
    const-string v4, "resultSvr is fail"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 378
    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v4, "Completed"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 379
    .local v2, "vaultResult":I
    if-eqz v2, :cond_1

    .line 380
    const/4 v3, -0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error from VaultKeeper (write/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 395
    return-object v1

    .line 386
    .end local v2    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "noticeMsg"    # Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "requesterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 430
    const-string v3, "RlcManager"

    const-string v4, "completeLocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x0

    .line 435
    .local v1, "resultDev":[B
    if-nez p1, :cond_0

    .line 436
    const/4 v3, -0x6

    :try_start_0
    const-string v4, "resultSvr is fail"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 438
    :cond_0
    array-length v3, p2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 439
    const/4 v3, -0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "passcode hash length is wrong("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 441
    :cond_1
    if-nez p4, :cond_2

    .line 442
    const/4 v3, -0x2

    const-string v4, "noticeMsg is null"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 444
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 445
    const/4 v3, -0x2

    const-string v4, "noticeMsg has nothing"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 447
    :cond_3
    if-nez p5, :cond_4

    .line 448
    const/4 v3, -0x2

    const-string v4, "nophoneNumberticeMsg is null"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 450
    :cond_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 451
    const/4 v3, -0x2

    const-string v4, "phoneNumber has nothing"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 453
    :cond_5
    if-nez p6, :cond_6

    .line 454
    const/4 v3, -0x2

    const-string v4, "requesterName is null"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 456
    :cond_6
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 457
    const/4 v3, -0x2

    const-string v4, "requesterName has nothing"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 459
    :cond_7
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v4, "Locked"

    invoke-virtual {v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 460
    .local v2, "vaultResult":I
    if-eqz v2, :cond_8

    .line 461
    const/4 v3, -0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error from VaultKeeper (write with passcode/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 463
    :cond_8
    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 464
    const/4 v3, -0x5

    const-string v4, "setLockscreenData"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 466
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 479
    return-object v1

    .line 470
    .end local v2    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public completeRegistering(Z[B[B)[B
    .locals 10
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .param p3, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "RlcManager"

    const-string v1, "completeRegistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v8, 0x0

    .line 314
    .local v8, "resultDev":[B
    if-nez p1, :cond_0

    .line 315
    const/4 v0, -0x6

    :try_start_0
    const-string v1, "resultSvr is fail"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 317
    :cond_0
    const-string v0, "Normal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    new-array v7, v0, [B

    .line 318
    .local v7, "input":[B
    const-string v0, "Normal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Normal"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 319
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const-string v2, "Normal"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 321
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const-string v2, "Normal"

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->initialize([BLjava/lang/String;[B[B[B)I

    move-result v9

    .line 322
    .local v9, "vaultResult":I
    if-eqz v9, :cond_1

    .line 323
    const/4 v0, -0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from VaultKeeper (initialization/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 336
    return-object v8

    .line 327
    .end local v7    # "input":[B
    .end local v9    # "vaultResult":I
    :catch_0
    move-exception v6

    .line 329
    .local v6, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .end local v6    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v0
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .locals 11
    .param p1, "passcode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 545
    const-string v7, "RlcManager"

    const-string v8, "completeUnlocking(passcode)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, -0x1

    .line 550
    .local v1, "failureCount":I
    const/4 v7, 0x0

    :try_start_0
    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    .line 551
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getFailureCount()I

    move-result v1

    .line 553
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v4

    .line 554
    .local v4, "nonce":[B
    if-nez v4, :cond_0

    .line 555
    const/4 v7, -0x5

    const-string v8, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 557
    :cond_0
    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 559
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->sha256(Ljava/lang/String;)[B

    move-result-object v5

    .line 560
    .local v5, "secondaryKey":[B
    if-nez v5, :cond_1

    .line 561
    const/4 v7, -0x8

    const-string v8, "Fail to hash for passcode"

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 563
    :cond_1
    const-string v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x20

    new-array v3, v7, [B

    .line 564
    .local v3, "input":[B
    const-string v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "Normal"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v7, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 565
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v8, 0x0

    const-string v9, "Normal"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    const/16 v10, 0x20

    invoke-static {v7, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 566
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v2

    .line 568
    .local v2, "hmac":[B
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v8, "Normal"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v6

    .line 569
    .local v6, "vaultResult":I
    if-nez v6, :cond_3

    .line 571
    const/4 v1, 0x0

    .line 578
    :goto_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    .line 580
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setFailureCount(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 581
    const-string v7, "RlcManager"

    const-string v8, "Failed setFailureCount"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 593
    return v1

    .line 575
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 576
    :try_start_1
    const-string v7, "RlcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect passcode(VaultKeeper-write/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), current failure count ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    .end local v2    # "hmac":[B
    .end local v3    # "input":[B
    .end local v4    # "nonce":[B
    .end local v5    # "secondaryKey":[B
    .end local v6    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v7

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v7
.end method

.method public completeUnlocking(Z[B)[B
    .locals 6
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 513
    const-string v3, "RlcManager"

    const-string v4, "completeUnlocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v1, 0x0

    .line 518
    .local v1, "resultDev":[B
    if-nez p1, :cond_0

    .line 519
    const/4 v3, -0x6

    :try_start_0
    const-string v4, "resultSvr is fail"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 521
    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v4, "Normal"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 522
    .local v2, "vaultResult":I
    if-eqz v2, :cond_1

    .line 523
    const/4 v3, -0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error from VaultKeeper (write/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 525
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    .line 527
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 535
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 538
    return-object v1

    .line 529
    .end local v2    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public encryptData([B[B)[B
    .locals 12
    .param p1, "data"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 232
    const-string v7, "RlcManager"

    const-string v8, "encryptClientData"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "ciphertext":[B
    const/4 v1, 0x0

    .line 235
    .local v1, "cipherOfKeyAndIV":[B
    const/4 v0, 0x0

    .line 236
    .local v0, "cipherOfClientData":[B
    new-array v5, v9, [B

    .line 237
    .local v5, "key":[B
    new-array v4, v11, [B

    .line 238
    .local v4, "iv":[B
    const/16 v7, 0x30

    new-array v6, v7, [B

    .line 240
    .local v6, "keyAndIv":[B
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 241
    :cond_0
    const/4 v7, -0x2

    const-string v8, "Invalid clientData"

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 245
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p2, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 246
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    .line 247
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    .line 249
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-static {v5, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 250
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v9, 0x10

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 251
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v6, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithServerPubKey([B[B)[B

    move-result-object v1

    .line 252
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, p1, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithAES256CBC([B[B[B)[B

    move-result-object v0

    .line 254
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 255
    :cond_2
    const/4 v7, -0x8

    const-string v8, "encryptData"

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 257
    :cond_3
    array-length v7, v1

    array-length v8, v0

    add-int/2addr v7, v8

    new-array v2, v7, [B

    .line 258
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 259
    const/4 v7, 0x0

    array-length v8, v1

    array-length v9, v0

    invoke-static {v0, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 269
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 270
    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 273
    return-object v2

    .line 262
    :catch_0
    move-exception v3

    .line 264
    .local v3, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v3    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v7

    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 269
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 270
    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([BB)V

    throw v7
.end method

.method public getClientData()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 985
    const-string v4, "RlcManager"

    const-string v5, "getClientData"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v0, ""

    .line 990
    .local v0, "clientData":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 991
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 993
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1010
    .end local v0    # "clientData":Ljava/lang/String;
    .local v1, "clientData":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 997
    .end local v1    # "clientData":Ljava/lang/String;
    .restart local v0    # "clientData":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 999
    const-string v4, "RlcManager"

    const-string v5, "No client data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1000
    .end local v0    # "clientData":Ljava/lang/String;
    .restart local v1    # "clientData":Ljava/lang/String;
    goto :goto_0

    .line 1003
    .end local v1    # "clientData":Ljava/lang/String;
    .restart local v0    # "clientData":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1010
    .end local v0    # "clientData":Ljava/lang/String;
    .restart local v1    # "clientData":Ljava/lang/String;
    goto :goto_0

    .line 1005
    .end local v1    # "clientData":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v0    # "clientData":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v2
.end method

.method public getFailureCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1055
    const-string v4, "RlcManager"

    const-string v5, "getFailureCount"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v1, -0x1

    .line 1060
    .local v1, "failureCount":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 1061
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 1063
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v1, 0x0

    move v2, v1

    .line 1075
    .end local v1    # "failureCount":I
    .local v2, "failureCount":I
    :goto_0
    return v2

    .line 1068
    .end local v2    # "failureCount":I
    .restart local v1    # "failureCount":I
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getFailureCount()I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 1075
    .end local v1    # "failureCount":I
    .restart local v2    # "failureCount":I
    goto :goto_0

    .line 1070
    .end local v2    # "failureCount":I
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "failureCount":I
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 876
    const-string v4, "RlcManager"

    const-string v5, "getNoticeMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v1, ""

    .line 881
    .local v1, "noticeMsg":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 882
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 884
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 901
    .end local v1    # "noticeMsg":Ljava/lang/String;
    .local v2, "noticeMsg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 888
    .end local v2    # "noticeMsg":Ljava/lang/String;
    .restart local v1    # "noticeMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 890
    const-string v4, "RlcManager"

    const-string v5, "No notice message in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 891
    .end local v1    # "noticeMsg":Ljava/lang/String;
    .restart local v2    # "noticeMsg":Ljava/lang/String;
    goto :goto_0

    .line 894
    .end local v2    # "noticeMsg":Ljava/lang/String;
    .restart local v1    # "noticeMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 901
    .end local v1    # "noticeMsg":Ljava/lang/String;
    .restart local v2    # "noticeMsg":Ljava/lang/String;
    goto :goto_0

    .line 896
    .end local v2    # "noticeMsg":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "noticeMsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 846
    const-string v4, "RlcManager"

    const-string v5, "getPhoneNumber"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v1, ""

    .line 851
    .local v1, "phoneNumber":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 852
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 854
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 871
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .local v2, "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 858
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 860
    const-string v4, "RlcManager"

    const-string v5, "No phone number in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 861
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    goto :goto_0

    .line 864
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 871
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    goto :goto_0

    .line 866
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 906
    const-string v4, "RlcManager"

    const-string v5, "getRequesterName"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v1, ""

    .line 911
    .local v1, "requesterName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 912
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 914
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 931
    .end local v1    # "requesterName":Ljava/lang/String;
    .local v2, "requesterName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 918
    .end local v2    # "requesterName":Ljava/lang/String;
    .restart local v1    # "requesterName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 920
    const-string v4, "RlcManager"

    const-string v5, "No requester name in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 921
    .end local v1    # "requesterName":Ljava/lang/String;
    .restart local v2    # "requesterName":Ljava/lang/String;
    goto :goto_0

    .line 924
    .end local v2    # "requesterName":Ljava/lang/String;
    .restart local v1    # "requesterName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 931
    .end local v1    # "requesterName":Ljava/lang/String;
    .restart local v2    # "requesterName":Ljava/lang/String;
    goto :goto_0

    .line 926
    .end local v2    # "requesterName":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "requesterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public prepareCompleting([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 342
    const-string v0, "RlcManager"

    const-string v1, "requestCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v7, 0x0

    .line 347
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 349
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 350
    .local v9, "nonce":[B
    if-nez v9, :cond_0

    .line 351
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 353
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 355
    const/4 v2, 0x0

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 364
    return-object v7

    .line 358
    .end local v9    # "nonce":[B
    :catch_0
    move-exception v8

    .line 360
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 361
    throw v8
.end method

.method public prepareLocking([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 401
    const-string v0, "RlcManager"

    const-string v1, "requestLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v7, 0x0

    .line 406
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 408
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 409
    .local v9, "nonce":[B
    if-nez v9, :cond_0

    .line 410
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 412
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 414
    const/4 v2, 0x0

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 423
    return-object v7

    .line 417
    .end local v9    # "nonce":[B
    :catch_0
    move-exception v8

    .line 419
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 420
    throw v8
.end method

.method public prepareRegistering([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v0, "RlcManager"

    const-string v1, "requestRegistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v7, 0x0

    .line 284
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 286
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    .line 288
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 289
    .local v9, "nonce":[B
    if-nez v9, :cond_0

    .line 290
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 292
    :cond_0
    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    .line 294
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 303
    return-object v7

    .line 297
    .end local v9    # "nonce":[B
    :catch_0
    move-exception v8

    .line 299
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 300
    throw v8
.end method

.method public prepareUnlocking([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 485
    const-string v0, "RlcManager"

    const-string v1, "requestUnlocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v7, 0x0

    .line 490
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 492
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 493
    .local v9, "nonce":[B
    if-nez v9, :cond_0

    .line 494
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 496
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 498
    const/4 v2, 0x0

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 507
    return-object v7

    .line 501
    .end local v9    # "nonce":[B
    :catch_0
    move-exception v8

    .line 503
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 504
    throw v8
.end method

.method public query()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 628
    const-string v2, "RlcManager"

    const-string v3, "query(void)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v1, 0x0

    .line 633
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v1

    .line 634
    if-nez v1, :cond_0

    .line 635
    const/4 v2, -0x5

    const-string v3, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_0
    return-object v1

    .line 638
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public query([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 599
    const-string v0, "RlcManager"

    const-string v1, "query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v7, 0x0

    .line 604
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 606
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v9

    .line 607
    .local v9, "state":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 608
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 610
    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 622
    return-object v7

    .line 613
    .end local v9    # "state":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 615
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    .end local v8    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v0
.end method

.method public setClientData(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "clientData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1015
    const-string v1, "RlcManager"

    const-string v2, "setClientData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v8, ""

    .line 1021
    .local v8, "oldClientData":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 1023
    .local v6, "bytes":[B
    array-length v1, v6

    if-nez v1, :cond_1

    .line 1025
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 1039
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 1040
    .local v10, "vaultResult":I
    if-eqz v10, :cond_0

    .line 1041
    const/4 v1, -0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from VaultKeeper (write/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1049
    :cond_0
    return-object v8

    .line 1029
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_1
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 1030
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_2

    .line 1031
    const/16 v1, -0xa

    const-string v2, "Error deserialize"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1033
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v8

    .line 1034
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setClientData(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1044
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 1046
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method

.method public setFailureCount(I)Z
    .locals 11
    .param p1, "failureCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1080
    const-string v1, "RlcManager"

    const-string v2, "setFailureCount"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v8, 0x0

    .line 1086
    .local v8, "ret":Z
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 1088
    .local v6, "bytes":[B
    array-length v1, v6

    if-nez v1, :cond_2

    .line 1090
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setFailureCount(I)V

    .line 1101
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 1103
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 1104
    .local v10, "vaultResult":I
    if-eqz v10, :cond_1

    .line 1105
    const/4 v1, -0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from VaultKeeper (write/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1107
    :cond_1
    const/4 v8, 0x1

    .line 1114
    return v8

    .line 1094
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_2
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 1095
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_0

    .line 1096
    const/16 v1, -0xa

    const-string v2, "Error deserialize"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1109
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 1111
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method

.method public setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "noticeMsg"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "requesterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 935
    const-string v1, "RlcManager"

    const-string v2, "setLockscreenData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v8, 0x0

    .line 938
    .local v8, "ret":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 939
    const/4 v1, -0x2

    const-string v2, "One of paratemers should not be null"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 944
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 946
    .local v6, "bytes":[B
    array-length v1, v6

    if-nez v1, :cond_3

    .line 948
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v1, 0x0

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 968
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 969
    .local v10, "vaultResult":I
    if-eqz v10, :cond_2

    .line 970
    const/4 v1, -0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from VaultKeeper (write/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 972
    :cond_2
    const/4 v8, 0x1

    .line 980
    return v8

    .line 952
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_3
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 953
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_4

    .line 954
    const/16 v1, -0xa

    const-string v2, "Error deserialize"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 956
    :cond_4
    if-eqz p1, :cond_5

    .line 957
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setNoticeMessage(Ljava/lang/String;)V

    .line 959
    :cond_5
    if-eqz p2, :cond_6

    .line 960
    invoke-virtual {v0, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setPhoneNumber(Ljava/lang/String;)V

    .line 962
    :cond_6
    if-eqz p3, :cond_1

    .line 963
    invoke-virtual {v0, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setRequesterName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 975
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 977
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method
