.class Lcom/android/server/LockSettingsService$KeystoreUtil;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeystoreUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/LockSettingsService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$KeystoreUtil;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService$KeystoreUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService$KeystoreUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private doMDFPPKeystoreMigration(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "password"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "userHandle"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z
    invoke-static {v1, p1, p2, v4}, Lcom/android/server/LockSettingsService;->access$300(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZ)Z

    move-result v0

    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration - Result from MDFPP keystore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method private doUnlock(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of keystore unlock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private doUpdate(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isUninitialized(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->onUserAdded(I)V

    :cond_0
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of keystore update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method adjustPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyAdjustment(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method adjustPasswordHash(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashAdjustment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method adjustPattern(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyAdjustment(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method adjustPatternHash(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashAdjustment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method doBruteForceHashAdjustment(Ljava/lang/String;II)Z
    .locals 12
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "credential"

    aput-object v9, v8, v7

    aput-object p1, v8, v6

    const-string/jumbo v9, "userId"

    aput-object v9, v8, v11

    const/4 v9, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "lockType"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v3, 0x0

    .local v3, "result":Z
    const/4 v2, 0x0

    .local v2, "matched":Z
    const/4 v1, 0x0

    .local v1, "hash":[B
    const/4 v0, 0x0

    .local v0, "encodedCredential":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    invoke-static {v8, p2, p3}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v4

    .local v4, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v8, v8

    if-nez v8, :cond_1

    :cond_0
    const-string v6, "Adjustment - Failed to read hash..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adjustment - Result of forced adjustment : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v6, "Adjustment - Empty credential..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p3, v6, :cond_5

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget-object v8, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_4
    if-nez v2, :cond_6

    const-string v6, "Adjustment - Credential mismatch..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne p3, v11, :cond_3

    iget-object v8, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v8, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v8, "Adjustment - Credential matched..."

    invoke-static {v8}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v8

    if-eqz v8, :cond_7

    if-ne p3, v6, :cond_9

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "zeroBased":Ljava/lang/String;
    invoke-direct {p0, v5, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .end local v5    # "zeroBased":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v8

    if-nez v8, :cond_a

    move v3, v6

    :goto_3
    goto :goto_0

    .restart local v5    # "zeroBased":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v8, v5, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v5    # "zeroBased":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "_nullPassword012"

    invoke-direct {p0, v8, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "Adjustment - Unlock failed..."

    invoke-static {v8}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    const-string v8, "Adjustment - Resetting the keystore..."

    invoke-static {v8}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    goto :goto_2

    :cond_a
    move v3, v7

    goto :goto_3
.end method

.method doBruteForceHashMigration(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "credential"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, "Migration - Failed to retrieve hash..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration - Result of forced migration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "Migration - Passward has been hashed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Migration - Recovery failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method doBruteForceKeyAdjustment(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "credential"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, "Adjustment - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration - Result of forced adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "Adjustment - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Adjustment - Unlock failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    const-string v2, "Adjustment - Resetting the keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    goto :goto_1
.end method

.method doBruteForceKeyMigration(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "credential"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, "Migration - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration - Result of forced migration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "Migration - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Migration - Recovery failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    const-string v2, "Migration - Removing the old keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->resetMDFPP(I)Z

    goto :goto_1
.end method

.method isLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    sget-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUninitialized(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    sget-object v0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    sget-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method migratePassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyMigration(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method migratePasswordHash(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashMigration(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method migratePattern(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyMigration(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method migratePatternHash(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashMigration(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method
