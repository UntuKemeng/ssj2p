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

    .line 662
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

    .line 662
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
    .locals 8
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
    .line 809
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 810
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 811
    .local v3, "ois":Ljava/io/ObjectInputStream;
    const/4 v5, 0x0

    .line 813
    .local v5, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_2

    .line 814
    :cond_0
    const/4 v5, 0x0

    .line 833
    .end local v5    # "ret":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return-object v5

    .line 818
    .restart local v5    # "ret":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 820
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 829
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 830
    :cond_3
    :goto_1
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 822
    :catch_1
    move-exception v2

    .line 824
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 825
    const/16 v6, -0xa

    const-string v7, "Error deserialize"

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 829
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 830
    :cond_4
    :goto_3
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    .line 829
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 830
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_6
    throw v6

    .line 829
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v6

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 830
    :catch_6
    move-exception v7

    goto :goto_6

    .line 829
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 822
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :cond_7
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
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
    .line 838
    const-string v3, "RlcManager"

    const-string v4, "getRlcVaultData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v2, 0x0

    .line 843
    .local v2, "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v0

    .line 844
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 845
    const/4 v3, -0x5

    const-string v4, "Error from VaultKeeper (readData)"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 847
    :cond_0
    array-length v3, v0

    if-nez v3, :cond_1

    .line 849
    const-string v3, "RlcManager"

    const-string v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v3, 0x0

    .line 860
    :goto_0
    return-object v3

    .line 853
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

    .line 860
    goto :goto_0

    .line 855
    .end local v0    # "bytes":[B
    .end local v2    # "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v1

    .line 857
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
    const-string/jumbo v0, "serverCert is null"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 132
    :goto_0
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eq v0, v4, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nonceSvr size is wrong("

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

    const-string/jumbo v1, "rlcId size is wrong("

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
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 779
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    const/4 v5, 0x0

    .line 781
    .local v5, "ret":[B
    if-nez p1, :cond_0

    .line 782
    const/4 v6, 0x0

    new-array v6, v6, [B

    .line 803
    :goto_0
    return-object v6

    .line 786
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 788
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 789
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 798
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 799
    :cond_1
    :goto_1
    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_2
    move-object v6, v5

    .line 803
    goto :goto_0

    .line 799
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 791
    :catch_1
    move-exception v2

    .line 793
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 794
    const/16 v6, -0xa

    const-string v7, "Error serialize"

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 798
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 799
    :cond_3
    :goto_4
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    .line 798
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 799
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_7
    throw v6

    .line 798
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v6

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    goto :goto_6

    .line 799
    :catch_6
    move-exception v7

    goto :goto_7

    .line 798
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 791
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :cond_6
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
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

    .line 701
    const-string v4, "RlcManager"

    const-string/jumbo v5, "setRemoteLockToLockscreen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :try_start_0
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v4, :cond_0

    .line 706
    const-string v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    .line 709
    .local v2, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v2, :cond_1

    .line 711
    const/16 v4, -0x9

    const-string v5, "getRlcVaultData return null"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 714
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

    .line 723
    .local v1, "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 734
    .end local v1    # "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v2    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 728
    const-string v3, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v8, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    .line 730
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 732
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
    .line 739
    const/4 v1, 0x0

    .line 741
    .local v1, "ret":Z
    const-string v2, "RlcManager"

    const-string v3, "bindToLockScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :try_start_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v2, :cond_0

    .line 745
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 747
    :cond_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 748
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 758
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 752
    const/16 v2, -0x9

    const-string v3, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    .line 754
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 756
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
    .line 374
    const-string v3, "RlcManager"

    const-string v4, "completeCompleting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x0

    .line 379
    .local v1, "resultDev":[B
    if-nez p1, :cond_0

    .line 380
    const/4 v3, -0x6

    :try_start_0
    const-string/jumbo v4, "resultSvr is fail"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 382
    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v4, "Completed"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 383
    .local v2, "vaultResult":I
    if-eqz v2, :cond_1

    .line 384
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

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 399
    return-object v1

    .line 390
    .end local v2    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
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
    .line 434
    const-string v3, "RlcManager"

    const-string v4, "completeLocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x0

    .line 439
    .local v1, "resultDev":[B
    if-nez p1, :cond_0

    .line 440
    const/4 v3, -0x6

    :try_start_0
    const-string/jumbo v4, "resultSvr is fail"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 442
    :cond_0
    array-length v3, p2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 443
    const/4 v3, -0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "passcode hash length is wrong("

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

    .line 445
    :cond_1
    if-nez p4, :cond_2

    .line 446
    const/4 v3, -0x2

    const-string/jumbo v4, "noticeMsg is null"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 448
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 449
    const/4 v3, -0x2

    const-string/jumbo v4, "noticeMsg has nothing"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 451
    :cond_3
    if-nez p5, :cond_4

    .line 452
    const/4 v3, -0x2

    const-string/jumbo v4, "nophoneNumberticeMsg is null"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 454
    :cond_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 455
    const/4 v3, -0x2

    const-string/jumbo v4, "phoneNumber has nothing"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 457
    :cond_5
    if-nez p6, :cond_6

    .line 458
    const/4 v3, -0x2

    const-string/jumbo v4, "requesterName is null"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 460
    :cond_6
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 461
    const/4 v3, -0x2

    const-string/jumbo v4, "requesterName has nothing"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 463
    :cond_7
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v4, "Locked"

    invoke-virtual {v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 464
    .local v2, "vaultResult":I
    if-eqz v2, :cond_8

    .line 465
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

    .line 467
    :cond_8
    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 468
    const/4 v3, -0x5

    const-string/jumbo v4, "setLockscreenData"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 470
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 483
    return-object v1

    .line 474
    .end local v2    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public completeRegistering(Z[B[B)[B
    .locals 9
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
    const-string v5, "RlcManager"

    const-string v6, "completeRegistering"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v3, 0x0

    .line 314
    .local v3, "resultDev":[B
    if-nez p1, :cond_0

    .line 315
    const/4 v5, -0x6

    :try_start_0
    const-string/jumbo v6, "resultSvr is fail"

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 317
    :cond_0
    const-string v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x20

    new-array v2, v5, [B

    .line 318
    .local v2, "input":[B
    const-string v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "Normal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 319
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v6, 0x0

    const-string v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/16 v8, 0x20

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 321
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v5, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v1

    .line 322
    .local v1, "hmac":[B
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 323
    const/4 v5, -0x4

    const-string v6, "Invalid token"

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 325
    :cond_1
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const-string v7, "Normal"

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-virtual {v5, v6, v7, v8, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->initialize([BLjava/lang/String;[B[B)I

    move-result v4

    .line 326
    .local v4, "vaultResult":I
    if-eqz v4, :cond_2

    .line 327
    const/4 v5, -0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error from VaultKeeper (initialization/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 340
    return-object v3

    .line 331
    .end local v1    # "hmac":[B
    .end local v2    # "input":[B
    .end local v4    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v5
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
    .line 549
    const-string v7, "RlcManager"

    const-string v8, "completeUnlocking(passcode)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v1, -0x1

    .line 554
    .local v1, "failureCount":I
    const/4 v7, 0x0

    :try_start_0
    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getFailureCount()I

    move-result v1

    .line 557
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v4

    .line 558
    .local v4, "nonce":[B
    if-nez v4, :cond_0

    .line 559
    const/4 v7, -0x5

    const-string v8, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 561
    :cond_0
    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 563
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->sha256(Ljava/lang/String;)[B

    move-result-object v5

    .line 564
    .local v5, "secondaryKey":[B
    if-nez v5, :cond_1

    .line 565
    const/4 v7, -0x8

    const-string v8, "Fail to hash for passcode"

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 567
    :cond_1
    const-string v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x20

    new-array v3, v7, [B

    .line 568
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

    .line 569
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v8, 0x0

    const-string v9, "Normal"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    const/16 v10, 0x20

    invoke-static {v7, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 570
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v2

    .line 572
    .local v2, "hmac":[B
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v8, "Normal"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v6

    .line 573
    .local v6, "vaultResult":I
    if-nez v6, :cond_3

    .line 575
    const/4 v1, 0x0

    .line 582
    :goto_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    .line 584
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setFailureCount(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 585
    const-string v7, "RlcManager"

    const-string v8, "Failed setFailureCount"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 597
    return v1

    .line 579
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 580
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

    .line 588
    .end local v2    # "hmac":[B
    .end local v3    # "input":[B
    .end local v4    # "nonce":[B
    .end local v5    # "secondaryKey":[B
    .end local v6    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
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
    .line 517
    const-string v3, "RlcManager"

    const-string v4, "completeUnlocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v1, 0x0

    .line 522
    .local v1, "resultDev":[B
    if-nez p1, :cond_0

    .line 523
    const/4 v3, -0x6

    :try_start_0
    const-string/jumbo v4, "resultSvr is fail"

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 525
    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string v4, "Normal"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 526
    .local v2, "vaultResult":I
    if-eqz v2, :cond_1

    .line 527
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

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 542
    return-object v1

    .line 533
    .end local v2    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
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
    .line 1004
    const-string v4, "RlcManager"

    const-string v5, "getClientData"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v0, ""

    .line 1009
    .local v0, "clientData":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 1010
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 1012
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1029
    .end local v0    # "clientData":Ljava/lang/String;
    .local v1, "clientData":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1016
    .end local v1    # "clientData":Ljava/lang/String;
    .restart local v0    # "clientData":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1018
    const-string v4, "RlcManager"

    const-string v5, "No client data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1019
    .end local v0    # "clientData":Ljava/lang/String;
    .restart local v1    # "clientData":Ljava/lang/String;
    goto :goto_0

    .line 1022
    .end local v1    # "clientData":Ljava/lang/String;
    .restart local v0    # "clientData":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1029
    .end local v0    # "clientData":Ljava/lang/String;
    .restart local v1    # "clientData":Ljava/lang/String;
    goto :goto_0

    .line 1024
    .end local v1    # "clientData":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v0    # "clientData":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1026
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
    .line 1074
    const-string v4, "RlcManager"

    const-string v5, "getFailureCount"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v1, -0x1

    .line 1079
    .local v1, "failureCount":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 1080
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 1082
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/4 v1, 0x0

    move v2, v1

    .line 1094
    .end local v1    # "failureCount":I
    .local v2, "failureCount":I
    :goto_0
    return v2

    .line 1087
    .end local v2    # "failureCount":I
    .restart local v1    # "failureCount":I
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getFailureCount()I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 1094
    .end local v1    # "failureCount":I
    .restart local v2    # "failureCount":I
    goto :goto_0

    .line 1089
    .end local v2    # "failureCount":I
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "failureCount":I
    :catch_0
    move-exception v0

    .line 1091
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
    .line 895
    const-string v4, "RlcManager"

    const-string v5, "getNoticeMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v1, ""

    .line 900
    .local v1, "noticeMsg":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 901
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 903
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 920
    .end local v1    # "noticeMsg":Ljava/lang/String;
    .local v2, "noticeMsg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 907
    .end local v2    # "noticeMsg":Ljava/lang/String;
    .restart local v1    # "noticeMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 909
    const-string v4, "RlcManager"

    const-string v5, "No notice message in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 910
    .end local v1    # "noticeMsg":Ljava/lang/String;
    .restart local v2    # "noticeMsg":Ljava/lang/String;
    goto :goto_0

    .line 913
    .end local v2    # "noticeMsg":Ljava/lang/String;
    .restart local v1    # "noticeMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 920
    .end local v1    # "noticeMsg":Ljava/lang/String;
    .restart local v2    # "noticeMsg":Ljava/lang/String;
    goto :goto_0

    .line 915
    .end local v2    # "noticeMsg":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "noticeMsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 917
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
    .line 865
    const-string v4, "RlcManager"

    const-string v5, "getPhoneNumber"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v1, ""

    .line 870
    .local v1, "phoneNumber":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 871
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 873
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 890
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .local v2, "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 877
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 879
    const-string v4, "RlcManager"

    const-string v5, "No phone number in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 880
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    goto :goto_0

    .line 883
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 890
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    goto :goto_0

    .line 885
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 887
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
    .line 925
    const-string v4, "RlcManager"

    const-string v5, "getRequesterName"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v1, ""

    .line 930
    .local v1, "requesterName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 931
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_0

    .line 933
    const-string v4, "RlcManager"

    const-string v5, "No data in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 950
    .end local v1    # "requesterName":Ljava/lang/String;
    .local v2, "requesterName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 937
    .end local v2    # "requesterName":Ljava/lang/String;
    .restart local v1    # "requesterName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 939
    const-string v4, "RlcManager"

    const-string v5, "No requester name in Vault"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 940
    .end local v1    # "requesterName":Ljava/lang/String;
    .restart local v2    # "requesterName":Ljava/lang/String;
    goto :goto_0

    .line 943
    .end local v2    # "requesterName":Ljava/lang/String;
    .restart local v1    # "requesterName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 950
    .end local v1    # "requesterName":Ljava/lang/String;
    .restart local v2    # "requesterName":Ljava/lang/String;
    goto :goto_0

    .line 945
    .end local v2    # "requesterName":Ljava/lang/String;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .restart local v1    # "requesterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 947
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
    .line 346
    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v7, 0x0

    .line 351
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 353
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 354
    .local v9, "nonce":[B
    if-nez v9, :cond_0

    .line 355
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 357
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 359
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

    .line 368
    return-object v7

    .line 362
    .end local v9    # "nonce":[B
    :catch_0
    move-exception v8

    .line 364
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 365
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
    .line 405
    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v7, 0x0

    .line 410
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 412
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 413
    .local v9, "nonce":[B
    if-nez v9, :cond_0

    .line 414
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 416
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 418
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

    .line 427
    return-object v7

    .line 421
    .end local v9    # "nonce":[B
    :catch_0
    move-exception v8

    .line 423
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 424
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

    const-string/jumbo v1, "requestRegistering"

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
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

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
    .line 489
    const-string v0, "RlcManager"

    const-string/jumbo v1, "requestUnlocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v7, 0x0

    .line 494
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 496
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 497
    .local v9, "nonce":[B
    if-nez v9, :cond_0

    .line 498
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (getNonce)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 500
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 502
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

    .line 511
    return-object v7

    .line 505
    .end local v9    # "nonce":[B
    :catch_0
    move-exception v8

    .line 507
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 508
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
    .line 632
    const-string v2, "RlcManager"

    const-string/jumbo v3, "query(void)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v1, 0x0

    .line 637
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v1

    .line 638
    if-nez v1, :cond_0

    .line 639
    const/4 v2, -0x5

    const-string v3, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_0
    return-object v1

    .line 642
    :catch_0
    move-exception v0

    .line 644
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
    .line 603
    const-string v0, "RlcManager"

    const-string/jumbo v1, "query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v7, 0x0

    .line 608
    .local v7, "deviceMsg":[B
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 610
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v9

    .line 611
    .local v9, "state":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 612
    const/4 v0, -0x5

    const-string v1, "Error from VaultKeeper (readState)"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 614
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

    .line 623
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 626
    return-object v7

    .line 617
    .end local v9    # "state":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 619
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
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
    .line 1034
    const-string v1, "RlcManager"

    const-string/jumbo v2, "setClientData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v8, ""

    .line 1040
    .local v8, "oldClientData":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 1042
    .local v6, "bytes":[B
    array-length v1, v6

    if-nez v1, :cond_1

    .line 1044
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 1058
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 1059
    .local v10, "vaultResult":I
    if-eqz v10, :cond_0

    .line 1060
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

    .line 1068
    :cond_0
    return-object v8

    .line 1048
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_1
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 1049
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_2

    .line 1050
    const/16 v1, -0xa

    const-string v2, "Error deserialize"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1052
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v8

    .line 1053
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setClientData(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1063
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 1065
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
    .line 1099
    const-string v1, "RlcManager"

    const-string/jumbo v2, "setFailureCount"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v8, 0x0

    .line 1105
    .local v8, "ret":Z
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 1107
    .local v6, "bytes":[B
    array-length v1, v6

    if-nez v1, :cond_2

    .line 1109
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setFailureCount(I)V

    .line 1120
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 1122
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 1123
    .local v10, "vaultResult":I
    if-eqz v10, :cond_1

    .line 1124
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

    .line 1126
    :cond_1
    const/4 v8, 0x1

    .line 1133
    return v8

    .line 1113
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_2
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 1114
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_0

    .line 1115
    const/16 v1, -0xa

    const-string v2, "Error deserialize"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 1130
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
    .line 954
    const-string v1, "RlcManager"

    const-string/jumbo v2, "setLockscreenData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v8, 0x0

    .line 957
    .local v8, "ret":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 958
    const/4 v1, -0x2

    const-string v2, "One of paratemers should not be null"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 963
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 965
    .local v6, "bytes":[B
    array-length v1, v6

    if-nez v1, :cond_3

    .line 967
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const/4 v1, 0x0

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 987
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 988
    .local v10, "vaultResult":I
    if-eqz v10, :cond_2

    .line 989
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

    .line 991
    :cond_2
    const/4 v8, 0x1

    .line 999
    return v8

    .line 971
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_3
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 972
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_4

    .line 973
    const/16 v1, -0xa

    const-string v2, "Error deserialize"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 975
    :cond_4
    if-eqz p1, :cond_5

    .line 976
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setNoticeMessage(Ljava/lang/String;)V

    .line 978
    :cond_5
    if-eqz p2, :cond_6

    .line 979
    invoke-virtual {v0, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setPhoneNumber(Ljava/lang/String;)V

    .line 981
    :cond_6
    if-eqz p3, :cond_1

    .line 982
    invoke-virtual {v0, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setRequesterName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 996
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method
