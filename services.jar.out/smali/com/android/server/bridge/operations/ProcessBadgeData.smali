.class public Lcom/android/server/bridge/operations/ProcessBadgeData;
.super Ljava/lang/Object;
.source "ProcessBadgeData.java"


# static fields
.field static final PkgCall:[Ljava/lang/String;

.field static final PkgCallShortcut:[Ljava/lang/String;

.field static final PkgCall_dcm:[Ljava/lang/String;

.field static final PkgEmail:[Ljava/lang/String;

.field static final PkgMessage:[Ljava/lang/String;

.field static final PkgMessageShortcut:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "ProcessBadgeData"


# instance fields
.field private ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

.field private final DELAY_IN_MILLISECONDS:J

.field badgeObserver:Landroid/database/ContentObserver;

.field mBadgeRunnable:Ljava/lang/Runnable;

.field private mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

.field private mCtx:Landroid/content/Context;

.field private mDelegateUserId:I

.field private mHandler:Landroid/os/Handler;

.field mOwnerCallBadgeCountSync:I

.field mOwnerMessageBadgeCountSync:I

.field private mPersonaBadgeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-static {v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "com.android.mms.ui.ConversationComposer"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.samsung.contacts"

    aput-object v1, v0, v3

    const-string v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    const-string v1, "com.android.email.activity.Welcome"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgEmail:[Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const-string v1, "com.sec.knox.shortcutsms.PhoneShortcut"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const-string v1, "com.sec.knox.shortcutsms.SMSShortcut"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/server/bridge/BridgeProxy;ILcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rcpContext"    # Landroid/content/Context;
    .param p3, "bridgeProxy"    # Lcom/android/server/bridge/BridgeProxy;
    .param p4, "userId"    # I
    .param p5, "info"    # Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 55
    iput v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    .line 57
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    .line 58
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    .line 62
    const-string v0, "com.sec.knox.action.badge_update"

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 66
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->DELAY_IN_MILLISECONDS:J

    .line 68
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/ProcessBadgeData$1;-><init>(Lcom/android/server/bridge/operations/ProcessBadgeData;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/ProcessBadgeData$2;-><init>(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->badgeObserver:Landroid/database/ContentObserver;

    .line 99
    iput-object p1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    .line 101
    iput p4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    .line 102
    iput-object p5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandler:Landroid/os/Handler;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->badgeObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/bridge/operations/ProcessBadgeData;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getPersonaIds()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/bridge/operations/ProcessBadgeData;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(Landroid/net/Uri;[I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverPersona(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/bridge/operations/ProcessBadgeData;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mFloatingConst"    # Ljava/lang/String;
    .param p1, "mDefaultPackageName"    # Ljava/lang/String;

    .prologue
    .line 489
    move-object v1, p1

    .line 491
    .local v1, "mPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 495
    :goto_0
    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "ProcessBadgeData"

    const-string v3, "No FloatingFeature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPersonaIds()[I
    .locals 7

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "ids":[I
    iget-object v5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .line 281
    .local v4, "pm":Landroid/os/PersonaManager;
    if-eqz v4, :cond_0

    .line 282
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 284
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 285
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [I

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 289
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 291
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    aput v5, v1, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "i":I
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_0
    return-object v1
.end method

.method private handleObserverOwner(Landroid/net/Uri;[I)V
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [I

    .prologue
    .line 203
    const/4 v9, 0x0

    .line 204
    .local v9, "count":I
    const/4 v10, 0x0

    .line 205
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 206
    .local v13, "pkgname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 207
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "badgecount"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "package"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    move-object v8, v7

    .line 215
    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v8, "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    if-eqz v10, :cond_6

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 216
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 217
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 219
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    if-eq v1, v9, :cond_0

    .line 226
    iput v9, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 248
    :goto_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :try_start_2
    const-string v1, "action"

    const-string v2, "UpdateBadgeCount"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, "pkg_name"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "count"

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge count updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "rcp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/RCPManager;

    .line 258
    .local v14, "rcpManager":Landroid/os/RCPManager;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v1, v0

    if-lez v1, :cond_5

    .line 259
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v12, v1, :cond_5

    .line 260
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync badge count for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    aget v2, p2, v12

    invoke-virtual {v14, v1, v2, v7}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 227
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v12    # "i":I
    .end local v14    # "rcpManager":Landroid/os/RCPManager;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_3
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    if-eq v1, v9, :cond_0

    .line 234
    iput v9, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 265
    :catch_0
    move-exception v11

    move-object v7, v8

    .line 266
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .local v11, "e":Landroid/os/RemoteException;
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 268
    if-eqz v10, :cond_2

    .line 269
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_2
    const/4 v10, 0x0

    .line 273
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void

    .line 235
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_3
    :try_start_5
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    if-eq v1, v9, :cond_0

    .line 242
    iput v9, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 268
    :catchall_0
    move-exception v1

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :goto_5
    if-eqz v10, :cond_4

    .line 269
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_4
    const/4 v10, 0x0

    throw v1

    .restart local v14    # "rcpManager":Landroid/os/RCPManager;
    :cond_5
    move-object v8, v7

    .line 264
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 268
    .end local v14    # "rcpManager":Landroid/os/RCPManager;
    :cond_6
    if-eqz v10, :cond_7

    .line 269
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_7
    const/4 v10, 0x0

    move-object v7, v8

    .line 272
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_4

    .line 268
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 265
    :catch_1
    move-exception v11

    goto :goto_3
.end method

.method private handleObserverPersona(Landroid/net/Uri;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 301
    const/16 v16, 0x0

    .line 302
    .local v16, "i":I
    const/4 v14, 0x0

    .line 304
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 305
    .local v9, "bundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 306
    .local v8, "KnoxName":Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v19, "pkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v12, "clsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v13, "count":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v20, "|"

    .line 312
    .local v20, "separator":Ljava/lang/String;
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v2}, Lcom/android/server/bridge/BridgeProxy;->getBadgeMap()Ljava/util/Map;

    move-result-object v21

    .line 317
    .local v21, "updateBadgeCountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleObserverPersona() and the USER ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "badgecount"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "package"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "class"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v11

    .line 325
    .local v11, "bundle_knoxinfo":Landroid/os/Bundle;
    :goto_0
    if-eqz v11, :cond_0

    .line 326
    const-string/jumbo v2, "user_name"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 329
    :cond_0
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash map count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    :goto_1
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 341
    .local v18, "packageClassApended":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string/jumbo v3, "package"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string/jumbo v3, "package"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 352
    :cond_2
    const-string v2, "badgecount"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string/jumbo v2, "package"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v2, "class"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v2, "badgecount"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v3, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "badge count updated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 324
    .end local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .end local v18    # "packageClassApended":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 379
    .restart local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    :cond_5
    if-lez v16, :cond_6

    .line 381
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v17, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v9    # "bundle":Landroid/os/Bundle;
    .local v10, "bundle":Landroid/os/Bundle;
    :try_start_1
    const-string v2, "action"

    const-string v3, "UpdateBadgeCount"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string/jumbo v3, "pkg_names"

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 387
    const-string v3, "class_names"

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 389
    const-string v2, "counts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/bridge/operations/ProcessBadgeData;->arrayListToIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 390
    const-string v2, "KnoxName"

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v2, "UserId"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v2, "com.sec.knox.bridge.BadgeData"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 401
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :cond_6
    if-eqz v14, :cond_7

    .line 402
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_7
    const/4 v14, 0x0

    .line 406
    .end local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    :goto_2
    return-void

    .line 398
    :catch_0
    move-exception v15

    .line 399
    .local v15, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    if-eqz v14, :cond_8

    .line 402
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_8
    const/4 v14, 0x0

    .line 405
    goto :goto_2

    .line 401
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v14, :cond_9

    .line 402
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_9
    const/4 v14, 0x0

    throw v2

    .line 401
    .end local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    .restart local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .restart local v17    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    goto :goto_4

    .line 398
    .end local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    goto :goto_3
.end method

.method private updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "badgeCount"    # I

    .prologue
    .line 113
    const-string v5, "ProcessBadgeData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBadgeCount : badgeCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    .line 116
    .local v1, "mWhereValues":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 117
    const/4 v5, 0x1

    aput-object p2, v1, v5

    .line 119
    iget-object v5, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    .line 121
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 122
    const-string v5, "badgecount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string/jumbo v5, "package=? AND class=?"

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, "updateCount":I
    if-nez v2, :cond_0

    .line 126
    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v5, "class"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public arrayListToIntArray(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 464
    const/4 v0, 0x0

    .line 474
    :cond_0
    return-object v0

    .line 467
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 468
    .local v0, "arr":[I
    const/4 v2, 0x0

    .line 469
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 470
    .local v1, "elem":I
    aput v1, v0, v2

    .line 471
    add-int/lit8 v2, v2, 0x1

    .line 472
    goto :goto_0
.end method

.method public clear(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 478
    const-string v0, "ProcessBadgeData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterBadgeObserver, mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->badgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 480
    return-void
.end method

.method public getBadgeInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 15
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v14, 0x0

    .line 411
    .local v14, "ret":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 412
    .local v10, "count":I
    const/4 v11, 0x0

    .line 413
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 414
    .local v13, "pkgname":Ljava/lang/String;
    const/4 v9, 0x0

    .line 415
    .local v9, "clsName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 417
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBadgeInfoByPkgName() /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "badgecount"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "class"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 425
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 429
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 430
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 436
    :cond_1
    if-eqz v13, :cond_2

    .line 437
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v8, "bundle":Landroid/os/Bundle;
    :try_start_1
    const-string v1, "action"

    const-string v2, "UpdateBadgeCount"

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v1, "pkg_names"

    invoke-virtual {v8, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v1, "class_names"

    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v1, "counts"

    invoke-virtual {v8, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    const-string v1, "UserId"

    iget v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 447
    move-object v14, v8

    move-object v7, v8

    .line 453
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :cond_2
    if-eqz v11, :cond_3

    .line 454
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_3
    const/4 v11, 0x0

    .line 459
    :goto_0
    return-object v14

    .line 450
    :catch_0
    move-exception v12

    .line 451
    .local v12, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    if-eqz v11, :cond_4

    .line 454
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_4
    const/4 v11, 0x0

    .line 457
    goto :goto_0

    .line 453
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v11, :cond_5

    .line 454
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_5
    const/4 v11, 0x0

    throw v1

    .line 453
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_2

    .line 450
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public requestTrySync(I)V
    .locals 5
    .param p1, "userid"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ProcessBadgeData"

    const-string/jumbo v4, "requestTrySync() START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "action"

    const-string v4, "RequestUpdateBadgeCount"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v3, "userid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    .line 193
    .local v2, "rcpManager":Landroid/os/RCPManager;
    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "rcpManager":Landroid/os/RCPManager;
    :cond_0
    :goto_0
    const-string v3, "ProcessBadgeData"

    const-string/jumbo v4, "requestTrySync() END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public trySync(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 169
    const-string/jumbo v1, "userid"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "userid":I
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trySync() START "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput v4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerCallBadgeCountSync:I

    .line 174
    iput v4, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mOwnerMessageBadgeCountSync:I

    .line 176
    sget-object v1, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(Landroid/net/Uri;[I)V

    .line 178
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "trySync() END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public updateShortcutBadgeCount(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 136
    :cond_0
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "updateShortcutBadgeCount fails, null param"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "updateShortcutBadgeCount()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 144
    .local v0, "pm":Landroid/os/PersonaManager;
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_3
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 152
    :cond_4
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCall_dcm:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 157
    :cond_5
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgCallShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 160
    :cond_6
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessage:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    sget-object v1, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->PkgMessageShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
