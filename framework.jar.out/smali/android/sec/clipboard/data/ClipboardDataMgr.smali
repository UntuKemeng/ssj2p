.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataMgr"


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mCurrentListOwnerUid:I

.field private mDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Landroid/sec/clipboard/data/file/FileManager;

.field private mIsShared:Z

.field private mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

.field private final mMaxSize:I

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Z)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "shared"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 162
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/sec/clipboard/data/ClipboardDataMgr$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 169
    iput v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 171
    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    .line 174
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 175
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    .line 176
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    .line 177
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    .line 181
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 182
    iput-object p2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    .line 183
    iput-boolean p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    .line 184
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    .line 185
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    .line 186
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(I)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/ClipboardDataMgr;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/ClipboardDataMgr;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaPolicyManager;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/ClipboardDataMgr;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/os/PersonaPolicyManager;)Landroid/os/PersonaPolicyManager;
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/data/ClipboardDataMgr;
    .param p1, "x1"    # Landroid/os/PersonaPolicyManager;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    return-object p1
.end method

.method static synthetic access$200(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/ClipboardDataMgr;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .locals 6
    .param p1, "cat"    # I

    .prologue
    const/4 v5, 0x0

    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    add-int/lit16 v3, p1, -0x3e8

    invoke-static {v3}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 410
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 411
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    .line 453
    :goto_0
    return-object v3

    .line 413
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/clipboard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v5, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 416
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    .line 417
    goto :goto_0

    .line 420
    .end local v1    # "index":I
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 421
    .restart local v1    # "index":I
    if-ltz v1, :cond_2

    .line 422
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0

    .line 425
    :cond_2
    const/16 v3, 0x66

    if-ne p1, v3, :cond_4

    .line 426
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 428
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserDBAndConnect, good container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    invoke-static {v2}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-object v3, v0

    .line 431
    goto :goto_0

    .line 432
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_4
    const/16 v3, 0xc9

    if-lt p1, v3, :cond_6

    const/16 v3, 0x1f4

    if-gt p1, v3, :cond_6

    .line 433
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 435
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserDBAndConnect, third party container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    move-object v3, v0

    .line 438
    goto/16 :goto_0

    .line 441
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_6
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 443
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    if-nez v3, :cond_7

    .line 446
    const/16 v3, 0x44c

    if-gt v3, p1, :cond_7

    const/16 v3, 0x4aa

    if-gt p1, v3, :cond_7

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 450
    :cond_7
    if-eqz p1, :cond_8

    add-int/lit16 v3, p1, -0x3e8

    invoke-virtual {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_8
    move-object v3, v0

    .line 453
    goto/16 :goto_0
.end method

.method private getAllSEContainerCategory()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 472
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v7, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object v7

    .line 477
    :cond_1
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 478
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getAllSEContainerCategory"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 479
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 481
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 483
    :cond_2
    const-string v0, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllSEContainerCategory, cat result from query:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getAllSEContainerCategory"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "getAllSEContainerCategory"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 487
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 496
    const-string v0, "ClipboardDataMgr"

    const-string v2, "getAllSEContainerCategory success, return res"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 490
    :cond_3
    const-string v0, "ClipboardDataMgr"

    const-string v2, "getAllSEContainerCategory query error, return -1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz v6, :cond_0

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getFileManagerIndexById(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 526
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    add-int/lit16 v2, p1, 0x3e8

    if-ne v1, v2, :cond_0

    .line 527
    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", i :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 525
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find index of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getPersonaManager()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return v1

    .line 198
    :cond_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "ClipboardDataMgr"

    const-string/jumbo v2, "personaManager is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    .line 203
    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 208
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 209
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 211
    const-string v2, "ClipboardDataMgr"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return v1
.end method

.method private initializeClipboardDataMgr(I)V
    .locals 13
    .param p1, "size"    # I

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x0

    .line 261
    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 263
    new-instance v6, Ljava/io/File;

    const-string v8, "/data/clipboard"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v6, "rootPath":Ljava/io/File;
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClipboardDefine.SUPPORT_KNOX :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v2, "clips.info"

    .line 270
    .local v2, "clipFile":Ljava/lang/String;
    new-instance v8, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v11, v10}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iput-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 271
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    if-eqz v8, :cond_4

    .line 277
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 278
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 279
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 280
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_1

    .line 282
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    .line 283
    .local v5, "id":I
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add multi user db...id :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "cat":I
    if-lt v5, v12, :cond_2

    const/16 v8, 0xc2

    if-gt v5, v8, :cond_2

    .line 286
    add-int/lit16 v0, v5, 0x3e8

    .line 287
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RS:add multi user db...cat :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 279
    .end local v0    # "cat":I
    .end local v5    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    .restart local v0    # "cat":I
    .restart local v5    # "id":I
    :cond_2
    if-eqz v5, :cond_1

    if-ge v5, v12, :cond_1

    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v5}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 291
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "secondary user usecase :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_3
    add-int/lit16 v0, v5, 0x3e8

    .line 293
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_1

    .line 299
    .end local v0    # "cat":I
    .end local v3    # "i":I
    .end local v5    # "id":I
    :cond_4
    const/4 v1, 0x0

    .line 300
    .local v1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 303
    .restart local v3    # "i":I
    invoke-direct {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_2

    .line 306
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized addData(Landroid/sec/clipboard/data/ClipboardData;I)Z
    .locals 14
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "callingId"    # I

    .prologue
    const/16 v13, 0x64

    const/4 v11, 0x0

    .line 677
    monitor-enter p0

    const/4 v1, 0x1

    .line 678
    .local v1, "Result":Z
    :try_start_0
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 679
    .local v6, "iSize":I
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    const/4 v12, 0x2

    if-ne v10, v12, :cond_0

    .line 680
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 681
    .local v9, "textValue":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    move v10, v11

    .line 726
    .end local v9    # "textValue":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v10

    .line 687
    :cond_0
    const/4 v8, -0x1

    .line 688
    .local v8, "index":I
    :try_start_1
    iget v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v6, v10, :cond_5

    .line 689
    add-int/lit8 v5, v6, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 690
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v5}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 691
    .local v3, "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v3, :cond_4

    .line 692
    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 693
    const-string v10, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[addData] deleteData.GetProtectState() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1
    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v10

    if-nez v10, :cond_4

    .line 696
    move v8, v5

    .line 701
    .end local v3    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    if-ltz v8, :cond_3

    .line 702
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v8}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v10

    iput-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 703
    invoke-virtual {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 704
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    .end local v5    # "i":I
    :cond_3
    :goto_2
    move v10, v1

    .line 726
    goto :goto_0

    .line 689
    .restart local v3    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 707
    .end local v3    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v5    # "i":I
    :cond_5
    const/4 v2, 0x0

    .line 708
    .local v2, "cat":I
    move/from16 v0, p2

    if-lt v0, v13, :cond_6

    const/16 v10, 0xc2

    move/from16 v0, p2

    if-gt v0, v10, :cond_6

    .line 709
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0x3e8

    .line 716
    :goto_3
    invoke-virtual {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v7

    .line 717
    .local v7, "idx":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_8

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_8

    .line 718
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    goto :goto_2

    .line 710
    .end local v7    # "idx":I
    :cond_6
    if-eqz p2, :cond_7

    move/from16 v0, p2

    if-ge v0, v13, :cond_7

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 711
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0x3e8

    goto :goto_3

    .line 713
    :cond_7
    move/from16 v2, p2

    goto :goto_3

    .line 720
    .restart local v7    # "idx":I
    :cond_8
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_2

    .line 723
    .end local v2    # "cat":I
    .end local v7    # "idx":I
    :catch_0
    move-exception v4

    .line 724
    .local v4, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 677
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "iSize":I
    .end local v8    # "index":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public findFileManagerIndex(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 309
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 313
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 314
    .restart local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 315
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 312
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "i":I
    :cond_1
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find file manager. id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCurrentListOwnerUid()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    return v0
.end method

.method public getFileManagerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 613
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 614
    .local v6, "myListSize":I
    const/4 v0, 0x0

    .line 615
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-ge p1, v6, :cond_1

    .line 616
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v8, v0

    .line 651
    :goto_1
    return-object v8

    .line 618
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 619
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v8}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v2

    .line 621
    .local v2, "ids":[I
    if-eqz v2, :cond_0

    array-length v8, v2

    if-lez v8, :cond_0

    .line 622
    const/4 v4, 0x0

    .line 623
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    const/4 v1, 0x0

    .line 624
    .local v1, "fileManagerIndex":I
    move v7, v6

    .local v7, "totalSize":I
    const/4 v5, 0x0

    .local v5, "listSize":I
    const/4 v3, 0x0

    .local v3, "idsIndex":I
    :goto_2
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 625
    array-length v8, v2

    if-ge v3, v8, :cond_5

    .line 626
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v9, v2, v3

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 627
    aget v8, v2, v3

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v1

    .line 628
    if-gez v1, :cond_2

    .line 624
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 631
    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 632
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 633
    add-int v8, v7, v5

    if-ge p1, v8, :cond_3

    .line 634
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "return : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v10, p1, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/ClipboardData;

    goto :goto_1

    .line 637
    :cond_3
    add-int/2addr v7, v5

    .line 638
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "next : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 641
    :cond_4
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not allow! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 644
    :cond_5
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "overflow! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getPersonaId()I
    .locals 2

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_1

    .line 219
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 222
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 225
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 655
    const/4 v1, 0x0

    .line 657
    .local v1, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v4

    .line 658
    .local v4, "userId":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v3, "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v4}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 660
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v3    # "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    .end local v4    # "userId":I
    :goto_0
    return-object v1

    .line 661
    :catch_0
    move-exception v2

    .line 662
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTopItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v11, 0x0

    .line 829
    const/4 v4, 0x0

    .line 830
    .local v4, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    const-wide/16 v6, 0x0

    .line 831
    .local v6, "timestamp":J
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 832
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 833
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v6

    .line 834
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in own condtn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v8}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v2

    .line 837
    .local v2, "ids":[I
    if-eqz v2, :cond_3

    .line 838
    const/4 v5, 0x0

    .line 839
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    const/4 v3, 0x0

    .line 840
    .local v3, "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v0, -0x1

    .line 841
    .local v0, "fileManagerIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_3

    .line 842
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v9, v2, v1

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 843
    aget v8, v2, v1

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v0

    .line 844
    if-gez v0, :cond_2

    .line 841
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 848
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 849
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    check-cast v3, Landroid/sec/clipboard/data/ClipboardData;

    .line 850
    .restart local v3    # "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "knoxdata"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_1

    .line 852
    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v6

    .line 853
    move-object v4, v3

    .line 854
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in knox condtn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 860
    .end local v0    # "fileManagerIndex":I
    .end local v1    # "i":I
    .end local v3    # "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    :cond_3
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "before return latestdatal"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return-object v4
.end method

.method public getdeletedItem()Landroid/sec/clipboard/data/ClipboardData;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public isManagedProfile(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 235
    const-wide/16 v2, -0x1

    .line 236
    .local v2, "origId":J
    const/4 v1, 0x0

    .line 238
    .local v1, "isManagedProfile":Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 239
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 240
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    .line 241
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManagedProfile for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 248
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManagedProfile for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ClipboardDataMgr"

    const-string v6, "isManagedProfile() Exception!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    const/4 v1, 0x0

    .line 247
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 248
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 247
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    cmp-long v6, v2, v8

    if-eqz v6, :cond_1

    .line 248
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    throw v5
.end method

.method public loadSEContainerDB(I)V
    .locals 4
    .param p1, "category"    # I

    .prologue
    .line 458
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSEContainerDB, category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previous category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 460
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 461
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 462
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 463
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 469
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void

    .line 465
    .restart local v0    # "index":I
    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSEContainerDB, findFileManagerIndex returned -1, create db, category :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_3
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x64

    const/4 v6, -0x1

    .line 360
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentListIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "cat":I
    if-lt p1, v7, :cond_1

    const/16 v3, 0xc2

    if-gt p1, v3, :cond_1

    .line 365
    add-int/lit16 v0, p1, 0x3e8

    .line 371
    :goto_0
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 372
    const-string v3, "ADDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 403
    :cond_0
    :goto_1
    return-void

    .line 366
    :cond_1
    if-eqz p1, :cond_2

    if-ge p1, v7, :cond_2

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 367
    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    .line 369
    :cond_2
    move v0, p1

    goto :goto_0

    .line 374
    :cond_3
    const-string v3, "REMOVED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 375
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 376
    .local v1, "deleteIndex":I
    if-eq v1, v6, :cond_4

    .line 377
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    .line 378
    .local v2, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 380
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    goto :goto_1

    .line 384
    .end local v2    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_4
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 386
    .end local v1    # "deleteIndex":I
    :cond_5
    const-string v3, "SWITCHED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 387
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-ne v0, v3, :cond_6

    .line 388
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_SWITCHED, but same user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentListIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 391
    :cond_6
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 392
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-eq v3, v6, :cond_7

    .line 393
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 394
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RS, multiUserMode, findFileManagerIndex returned index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now getting relevant datalist with handleid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 396
    :cond_7
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_1

    .line 400
    :cond_8
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called wrong mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public reAddForKnox(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 6
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 815
    const-string v3, "ClipboardDataMgr"

    const-string/jumbo v4, "reAddForKnox"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, "listData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    .line 818
    .local v0, "dataListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 819
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 820
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 821
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->reAddForKnox(I)V

    .line 822
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    return-void

    .line 818
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    .line 356
    :cond_0
    return-void
.end method

.method public removeAll()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 730
    const-string v10, "ClipboardDataMgr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inside remove all method in data mgr mshared is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "bRes":Z
    const/4 v9, 0x0

    .line 733
    .local v9, "ownRes":Z
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v10

    if-nez v10, :cond_2

    move v6, v11

    .line 735
    .local v6, "isOwner":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    .line 736
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v10}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 737
    .local v3, "ids":[I
    if-eqz v3, :cond_4

    .line 738
    const/4 v8, 0x0

    .line 739
    .local v8, "listSize":I
    const/4 v2, 0x0

    .line 740
    .local v2, "fileManagerIndex":I
    const/4 v7, 0x0

    .line 741
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v4, 0x0

    .local v4, "idsIndex":I
    :goto_1
    array-length v10, v3

    if-ge v4, v10, :cond_4

    .line 742
    aget v10, v3, v4

    invoke-direct {p0, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v2

    .line 743
    const/4 v7, 0x0

    .line 744
    if-ltz v2, :cond_0

    .line 745
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 747
    :cond_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 748
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 749
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_2
    if-ge v5, v8, :cond_3

    .line 750
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v10

    invoke-virtual {v10}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v10

    if-nez v10, :cond_1

    .line 751
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 752
    const/4 v9, 0x1

    .line 749
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2    # "fileManagerIndex":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v5    # "index":I
    .end local v6    # "isOwner":Z
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v8    # "listSize":I
    :cond_2
    move v6, v12

    .line 733
    goto :goto_0

    .line 741
    .restart local v2    # "fileManagerIndex":I
    .restart local v3    # "ids":[I
    .restart local v4    # "idsIndex":I
    .restart local v6    # "isOwner":Z
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .restart local v8    # "listSize":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 759
    .end local v2    # "fileManagerIndex":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v8    # "listSize":I
    :cond_4
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v13, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    if-nez v13, :cond_6

    :goto_3
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/data/file/FileManager;->removeAll(ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 763
    :goto_4
    if-eqz v6, :cond_5

    if-eqz v9, :cond_5

    .line 764
    const/4 v0, 0x1

    .line 766
    :cond_5
    return v0

    :cond_6
    move v11, v12

    .line 759
    goto :goto_3

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public removeData(I)Z
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 776
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inside removeData method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :try_start_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 780
    .local v6, "size":I
    if-ge p1, v6, :cond_2

    .line 781
    iget-object v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    if-nez v8, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v8, v12, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(ZII)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    if-eqz v8, :cond_1

    move v8, v9

    .line 811
    .end local v6    # "size":I
    :goto_1
    return v8

    .restart local v6    # "size":I
    :cond_0
    move v8, v10

    .line 781
    goto :goto_0

    :cond_1
    move v8, v10

    goto :goto_1

    .line 783
    :cond_2
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 784
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v8}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v2

    .line 785
    .local v2, "ids":[I
    if-eqz v2, :cond_5

    array-length v8, v2

    if-lez v8, :cond_5

    .line 786
    const/4 v4, 0x0

    .line 787
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v1, 0x0

    .line 788
    .local v1, "fileManagerIndex":I
    const/4 v3, 0x0

    .local v3, "idsIndex":I
    move v7, v6

    .local v7, "totalSize":I
    const/4 v5, 0x0

    .local v5, "listSize":I
    :goto_2
    array-length v8, v2

    if-ge v3, v8, :cond_5

    .line 789
    aget v8, v2, v3

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v1

    .line 790
    if-gez v1, :cond_3

    .line 788
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 794
    :cond_3
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 795
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 796
    add-int v8, v7, v5

    if-ge p1, v8, :cond_4

    .line 797
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "return : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-int v12, p1, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    move v8, v9

    .line 799
    goto :goto_1

    .line 801
    :cond_4
    add-int/2addr v7, v5

    .line 802
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "next : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v2, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 808
    .end local v1    # "fileManagerIndex":I
    .end local v2    # "ids":[I
    .end local v3    # "idsIndex":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v5    # "listSize":I
    .end local v6    # "size":I
    .end local v7    # "totalSize":I
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move v8, v10

    .line 811
    goto/16 :goto_1
.end method

.method public removeScrapData(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V
    .locals 9
    .param p1, "dataList"    # Landroid/sec/clipboard/data/ClipboardDataMgr;
    .param p2, "userId"    # I

    .prologue
    const/16 v8, 0x64

    const/4 v7, -0x1

    .line 325
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : userId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "cat":I
    if-lt p2, v8, :cond_1

    const/16 v4, 0xc2

    if-gt p2, v4, :cond_1

    .line 328
    add-int/lit16 v0, p2, 0x3e8

    .line 334
    :goto_0
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    .line 335
    .local v3, "targetId":I
    if-eq v3, v7, :cond_0

    if-eqz p1, :cond_0

    .line 336
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : targetId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v2

    .line 338
    .local v2, "sourceId":I
    if-eq v2, v7, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 340
    .local v1, "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 343
    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 346
    .end local v1    # "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
    .end local v2    # "sourceId":I
    :cond_0
    return-void

    .line 329
    .end local v3    # "targetId":I
    :cond_1
    if-eqz p2, :cond_2

    if-ge p2, v8, :cond_2

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 330
    add-int/lit16 v0, p2, 0x3e8

    goto :goto_0

    .line 332
    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public scrapSize()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public secontainerClipboardMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "category"    # I

    .prologue
    .line 501
    const-string v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 504
    .local v0, "deleteIndex":I
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 505
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 508
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 509
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 510
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 512
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 513
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    .line 522
    .end local v0    # "deleteIndex":I
    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_1
    :goto_0
    return-void

    .line 516
    .restart local v0    # "deleteIndex":I
    :cond_2
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    .end local v0    # "deleteIndex":I
    :cond_3
    const-string v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action secontainer added for category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", creating clipboard db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public setdeletedItem(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 890
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 891
    return-void
.end method

.method public sharedSize()I
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v0

    .line 577
    .local v0, "userId":I
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingPersonalDataToKnox(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    const-string v1, "ClipboardDataMgr"

    const-string/jumbo v2, "not allowed sharing personal data to knox"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 580
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 9

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 541
    .local v1, "finalSize":I
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v6

    if-nez v6, :cond_3

    .line 542
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v6}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v4

    .line 543
    .local v4, "ids":[I
    if-eqz v4, :cond_3

    .line 544
    const/4 v2, 0x0

    .line 545
    .local v2, "fm":Landroid/sec/clipboard/data/file/FileManager;
    const/4 v0, -0x1

    .line 546
    .local v0, "fileManagerIndex":I
    const/4 v5, 0x0

    .line 547
    .local v5, "isAllowed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_3

    .line 548
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v5

    .line 549
    const-string v6, "ClipboardDataMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "policy is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eqz v5, :cond_0

    .line 551
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_2

    .line 552
    aget v6, v4, v3

    invoke-direct {p0, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v0

    .line 553
    if-gez v0, :cond_1

    .line 547
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    :cond_1
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    .line 558
    .restart local v2    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v2, :cond_0

    .line 559
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_1

    .line 562
    :cond_2
    const-string v6, "ClipboardDataMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data list is less than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 569
    .end local v0    # "fileManagerIndex":I
    .end local v2    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    .end local v3    # "i":I
    .end local v4    # "ids":[I
    .end local v5    # "isAllowed":Z
    :cond_3
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v6, :cond_4

    .line 570
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    add-int/2addr v1, v6

    .line 572
    .end local v1    # "finalSize":I
    :cond_4
    return v1
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x0

    .line 866
    if-eqz p2, :cond_1

    .line 867
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 876
    :cond_0
    :goto_0
    return v1

    .line 869
    :cond_1
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 870
    const-string v2, "ClipboardDataMgr"

    const-string/jumbo v3, "updateData-ClipboardData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFotaClips(ILjava/util/ArrayList;)V
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    .line 589
    .local v0, "fmg":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v3

    .line 591
    .local v3, "size":I
    const/4 v4, 0x0

    .line 592
    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const-string v2, ""

    .line 593
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 594
    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v4

    .line 595
    if-eqz v4, :cond_0

    .line 596
    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 593
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "i":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "size":I
    .end local v4    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-void
.end method

.method public updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
