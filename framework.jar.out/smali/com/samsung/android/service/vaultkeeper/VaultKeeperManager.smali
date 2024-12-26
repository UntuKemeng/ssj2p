.class public final Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
.super Ljava/lang/Object;
.source "VaultKeeperManager.java"


# static fields
.field public static final ERR_EXCEPTION:I = -0x3

.field public static final ERR_GENERAL_FAILED:I = -0x1

.field public static final ERR_INVALID_ARGUMENT:I = -0x2

.field public static final ERR_SERVICE_NOT_SUPPORT:I = -0x4

.field public static final MAX_LEN_VAULT_NAME:I = 0x20

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VaultKeeperManager"

.field public static final VAULT_HMAC_LEN:I = 0x20

.field public static final VAULT_KEY_LEN:I = 0x20


# instance fields
.field private mClientPkgName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

.field private mVaultName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "vaultName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v1, "VaultKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    .line 34
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .locals 6
    .param p0, "vaultName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 48
    if-nez p0, :cond_1

    .line 50
    const-string v2, "VaultKeeperManager"

    const-string/jumbo v3, "vaultName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 56
    :cond_2
    const-string v2, "VaultKeeperManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vaultName length is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). It should be less than ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_3
    new-instance v0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "vkm":Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    iget-object v2, v0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 70
    const-string v2, "VaultKeeperManager"

    const-string v3, "Unauthorized Pkg. Manager can\'t be provided."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public destroy([B)I
    .locals 4
    .param p1, "hmac"    # [B

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public getNonce()[B
    .locals 4

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->getNonce(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize([BLjava/lang/String;[B[B)I
    .locals 9
    .param p1, "key"    # [B
    .param p2, "initialState"    # Ljava/lang/String;
    .param p3, "cert"    # [B
    .param p4, "sig"    # [B

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v8

    .line 111
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public initialize([BLjava/lang/String;[B[B[B)I
    .locals 9
    .param p1, "key"    # [B
    .param p2, "initialState"    # Ljava/lang/String;
    .param p3, "initialData"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public initialize([B[B[B)I
    .locals 9
    .param p1, "key"    # [B
    .param p2, "cert"    # [B
    .param p3, "sig"    # [B

    .prologue
    .line 93
    :try_start_0
    const-string v0, "VaultKeeperManager"

    const-string v1, "initialize (byte[] key)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v8

    .line 98
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 4

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->isInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readData()[B
    .locals 4

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->readData(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->readState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public verifyCertificate([B)Z
    .locals 4
    .param p1, "cert"    # [B

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->verifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public verifyComplete([BLjava/lang/String;[B)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "newState"    # Ljava/lang/String;
    .param p3, "newData"    # [B

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->verifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v6

    .line 254
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public verifyRequest([B)[B
    .locals 4
    .param p1, "input"    # [B

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->verifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public write(Ljava/lang/String;[B[B)I
    .locals 8
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "passcode"    # [B
    .param p3, "hmac"    # [B

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 174
    :catch_0
    move-exception v7

    .line 176
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public write(Ljava/lang/String;[B[B[B)I
    .locals 8
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "passcode"    # [B
    .param p4, "hmac"    # [B

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v7

    .line 202
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public write([B[B[B)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "passcode"    # [B
    .param p3, "hmac"    # [B

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mClientPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 187
    :catch_0
    move-exception v7

    .line 189
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const/4 v0, -0x3

    goto :goto_0
.end method
