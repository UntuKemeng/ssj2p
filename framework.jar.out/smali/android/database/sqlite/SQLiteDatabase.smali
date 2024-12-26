.class public final Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuardLocked:Ldalvik/system/CloseGuard;

.field private final mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mCorrupt_code:I

.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mHasAttachedDbsLocked:Z

.field private mIntegrityErrorString:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 188
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v2

    const-string v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " OR REPLACE "

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 83
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 119
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorrupt_code:I

    .line 261
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 262
    if-eqz p4, :cond_0

    .end local p4    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    :goto_0
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 263
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 264
    return-void

    .line 262
    .restart local p4    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    :cond_0
    new-instance p4, Landroid/database/DefaultDatabaseErrorHandler;

    .end local p4    # "errorHandler":Landroid/database/DatabaseErrorHandler;
    invoke-direct {p4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    goto :goto_0
.end method

.method public static backupDatabase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 2190
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->native_backup(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .locals 5
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 510
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p1, v3, v4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 521
    return-void

    .line 510
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 517
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2226
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2227
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    .line 2230
    :cond_0
    monitor-exit v1

    .line 2231
    return-void

    .line 2230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static convert2PlainDB(Ljava/io/File;[BLjava/io/File;)V
    .locals 8
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "password"    # [B
    .param p2, "destDbFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 775
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {v3, v7, v6, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 776
    .local v1, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 778
    .local v2, "sourceDbVer":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 779
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x10000000

    new-instance v5, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {v3, v7, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 780
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "attach database \'%s\' as secureDb key x\'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->convertByte2HexString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    const-string/jumbo v3, "secureDb"

    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 782
    const-string v3, "detach database secureDb"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 784
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 788
    return-void

    .line 786
    .end local v0    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDbVer":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Source DB not found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V
    .locals 8
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 792
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {v3, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 793
    .local v1, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 794
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 795
    .local v2, "sourceDbVer":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 796
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x10000000

    new-instance v5, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {v3, v7, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 797
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "attach database \'%s\' as plainDb key \'\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 798
    const-string/jumbo v3, "plainDb"

    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 799
    const-string v3, "detach database plainDb"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 801
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 805
    return-void

    .line 803
    .end local v0    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDbVer":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Source DB not found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static convertByte2HexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "password"    # [B

    .prologue
    .line 761
    const-string v1, ""

    .line 762
    .local v1, "rst":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 764
    aget-byte v2, p0, v0

    if-ltz v2, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 976
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p1, "password"    # [B

    .prologue
    .line 991
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    new-instance v2, Landroid/database/DefaultSecureDatabaseErrorHandler;

    invoke-direct {v2}, Landroid/database/DefaultSecureDatabaseErrorHandler;-><init>()V

    invoke-static {v0, p0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 832
    if-nez p0, :cond_0

    .line 833
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "file must not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 836
    :cond_0
    const/4 v1, 0x0

    .line 837
    .local v1, "deleted":Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v1, v8

    .line 838
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-journal"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v1, v8

    .line 839
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-shm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v1, v8

    .line 840
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-wal"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v1, v8

    .line 842
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 843
    .local v2, "dir":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 844
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-mj"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 845
    .local v7, "prefix":Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteDatabase$2;

    invoke-direct {v8, v7}, Landroid/database/sqlite/SQLiteDatabase$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 851
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 852
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 853
    .local v6, "masterJournal":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v1, v8

    .line 852
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "masterJournal":Ljava/io/File;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static deleteDatabaseFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 2445
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2446
    .local v0, "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2448
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    .line 2449
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2450
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2451
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2453
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2454
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2455
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2457
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2458
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2459
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2462
    :cond_2
    return v1
.end method

.method private dispose(Z)V
    .locals 3
    .param p1, "finalized"    # Z

    .prologue
    .line 282
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_1

    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 287
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 290
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 291
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 292
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-nez p1, :cond_2

    .line 295
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 296
    :try_start_1
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->close()V

    .line 303
    :cond_2
    return-void

    .line 292
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 297
    .restart local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private dump(Landroid/util/Printer;Z)V
    .locals 2
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 2252
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2253
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    .line 2254
    const-string v0, ""

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;Z)V

    .line 2257
    :cond_0
    monitor-exit v1

    .line 2258
    return-void

    .line 2257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll(Landroid/util/Printer;Z)V
    .locals 3
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "verbose"    # Z

    .prologue
    .line 2246
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 2247
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->dump(Landroid/util/Printer;Z)V

    goto :goto_0

    .line 2249
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1823
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1825
    :try_start_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1826
    const/4 v0, 0x0

    .line 1827
    .local v0, "disableWal":Z
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1828
    :try_start_1
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_0

    .line 1829
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    .line 1830
    const/4 v0, 0x1

    .line 1832
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1833
    if-eqz v0, :cond_1

    .line 1834
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 1838
    .end local v0    # "disableWal":Z
    :cond_1
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1840
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v2

    .line 1842
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1845
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v2

    .line 1832
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "disableWal":Z
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1845
    .end local v0    # "disableWal":Z
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v2

    .line 1842
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private exportDB(Ljava/lang/String;)V
    .locals 2
    .param p1, "attachedDB"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 959
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->exportDB(Ljava/lang/String;)V

    .line 960
    monitor-exit v1

    .line 961
    return-void

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tables"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1127
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1128
    .local v1, "spacepos":I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1130
    .local v0, "commapos":I
    if-lez v1, :cond_2

    if-lt v1, v0, :cond_0

    if-gez v0, :cond_2

    .line 1131
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1135
    .end local p0    # "tables":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 1132
    .restart local p0    # "tables":Ljava/lang/String;
    :cond_2
    if-lez v0, :cond_1

    if-lt v0, v1, :cond_3

    if-gez v1, :cond_1

    .line 1133
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1137
    .end local v0    # "commapos":I
    .end local v1    # "spacepos":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2235
    .local v0, "databases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 2236
    :try_start_0
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2237
    monitor-exit v2

    .line 2238
    return-object v0

    .line 2237
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2219
    .local v1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 2220
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2222
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-object v1
.end method

.method private static isMainThread()Z
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 396
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isReadOnlyLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1861
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private open()V
    .locals 4

    .prologue
    .line 895
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 905
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 898
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 900
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v0

    .line 901
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 903
    throw v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 707
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V

    .line 708
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 709
    return-object v0
.end method

.method private openInner()V
    .locals 3

    .prologue
    .line 932
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 936
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 934
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 935
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 936
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 939
    :try_start_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    monitor-exit v1

    .line 941
    return-void

    .line 940
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private openInnerSecureDatabase([B)V
    .locals 3
    .param p1, "password"    # [B

    .prologue
    .line 944
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 945
    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 948
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 946
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;[B)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 947
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 948
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 951
    :try_start_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    monitor-exit v1

    .line 953
    return-void

    .line 952
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 716
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 723
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 731
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "password"    # [B

    .prologue
    .line 754
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V

    .line 755
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase([B)V

    .line 756
    return-object v0
.end method

.method private openSecureDatabase([B)V
    .locals 5
    .param p1, "password"    # [B

    .prologue
    .line 908
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 913
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 915
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    :try_start_1
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 929
    :goto_0
    return-void

    .line 915
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 922
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 924
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v0

    .line 925
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 927
    throw v0
.end method

.method public static releaseMemory()I
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method public static renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 2430
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2431
    .local v0, "fi":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2433
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2434
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2435
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2437
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-shm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2438
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2439
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2440
    :cond_1
    return-void
.end method

.method private throwIfNotOpenLocked()V
    .locals 3

    .prologue
    .line 2396
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-nez v0, :cond_0

    .line 2397
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2400
    :cond_0
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 4
    .param p1, "throwIfUnsafe"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 650
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, p1, v2}, Landroid/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 655
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 653
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "function"    # Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .prologue
    .line 1007
    new-instance v1, Landroid/database/sqlite/SQLiteCustomFunction;

    invoke-direct {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteCustomFunction;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 1009
    .local v1, "wrapper":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1010
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1012
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :try_start_2
    monitor-exit v3

    .line 1020
    return-void

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1017
    throw v0

    .line 1019
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 422
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 446
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 475
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 504
    return-void
.end method

.method public changeDBPassword([B)I
    .locals 3
    .param p1, "newPassword"    # [B

    .prologue
    .line 809
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DB is not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 814
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteSession;->changePassword([B)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    const/4 v1, 0x0

    .line 820
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v1

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 818
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method public closeAndDiscardNonPrimaryConnections(Z)V
    .locals 2
    .param p1, "needDiscard"    # Z

    .prologue
    .line 2384
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2385
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2386
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAndDiscardNonPrimaryConnections(Z)V

    .line 2387
    monitor-exit v1

    .line 2388
    return-void

    .line 2387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1158
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method createSession()Landroid/database/sqlite/SQLiteSession;
    .locals 3

    .prologue
    .line 369
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 371
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 372
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    new-instance v1, Landroid/database/sqlite/SQLiteSession;

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteSession;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    return-object v1

    .line 372
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1658
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1660
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1663
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1665
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1668
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v1

    .line 1660
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :try_start_3
    const-string v1, ""

    goto :goto_0

    .line 1665
    .restart local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1668
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method public disableWriteAheadLogging()V
    .locals 7

    .prologue
    const/high16 v6, 0x20000000

    .line 2149
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2150
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2151
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 2153
    .local v0, "enableWALExplicitly":Z
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/2addr v2, v6

    if-nez v2, :cond_0

    .line 2154
    monitor-exit v3

    .line 2167
    :goto_0
    return-void

    .line 2157
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v5, -0x20000001

    and-int/2addr v4, v5

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2158
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2166
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "enableWALExplicitly":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2161
    .restart local v0    # "enableWALExplicitly":Z
    :catch_0
    move-exception v1

    .line 2162
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v4, v6

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2163
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean v0, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 2164
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public enableWriteAheadLogging()Z
    .locals 7

    .prologue
    const/high16 v6, 0x20000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2092
    const/4 v0, 0x0

    .line 2093
    .local v0, "enabledAutomatically":Z
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2094
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2096
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 2097
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    if-eqz v5, :cond_0

    .line 2098
    monitor-exit v4

    .line 2136
    :goto_0
    return v2

    .line 2100
    :cond_0
    const/4 v0, 0x1

    .line 2103
    :cond_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2106
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 2109
    :cond_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2110
    const-string v2, "SQLiteDatabase"

    const-string v5, "can\'t enable WAL for memory databases."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 2116
    :cond_3
    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-eqz v5, :cond_5

    .line 2117
    const-string v2, "SQLiteDatabase"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2118
    const-string v2, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "this database: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_4
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 2124
    :cond_5
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v5, v6

    iput v5, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2125
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2135
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2128
    :catch_0
    move-exception v1

    .line 2129
    .local v1, "ex":Ljava/lang/RuntimeException;
    if-nez v0, :cond_6

    .line 2130
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v5, -0x20000001

    and-int/2addr v3, v5

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2132
    :cond_6
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 2133
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public endTransaction()V
    .locals 3

    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 530
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 537
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 533
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1769
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1770
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1816
    if-nez p2, :cond_0

    .line 1817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1819
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1820
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2269
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2270
    :try_start_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-nez v4, :cond_0

    .line 2271
    monitor-exit v3

    move-object v0, v2

    .line 2311
    .end local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    return-object v0

    .line 2274
    .restart local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_1

    .line 2284
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v4, "main"

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    monitor-exit v3

    goto :goto_0

    .line 2289
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2288
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2289
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2293
    const/4 v1, 0x0

    .line 2295
    .local v1, "c":Landroid/database/Cursor;
    :try_start_2
    const-string/jumbo v2, "pragma database_list;"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2296
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2302
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2305
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_2

    .line 2306
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2311
    :catchall_2
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v2

    .line 2305
    :cond_3
    if-eqz v1, :cond_4

    .line 2306
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2311
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    goto :goto_0
.end method

.method public getCorruptCode()I
    .locals 1

    .prologue
    .line 2200
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorrupt_code:I

    return v0
.end method

.method public getIntegrityErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2376
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    return-object v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 4

    .prologue
    .line 1046
    const-string v2, "PRAGMA max_page_count;"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1047
    .local v0, "pageCount":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .locals 2

    .prologue
    .line 1075
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1903
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1904
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 665
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method getThreadDefaultConnectionFlags(Z)I
    .locals 2
    .param p1, "readOnly"    # Z

    .prologue
    .line 384
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 386
    .local v0, "flags":I
    :goto_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    or-int/lit8 v0, v0, 0x4

    .line 389
    :cond_0
    return v0

    .line 384
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getThreadSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteSession;

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 1028
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 565
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasTransaction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 567
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1505
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1508
    :goto_0
    return-wide v2

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1508
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    .prologue
    .line 1603
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1605
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1606
    .local v6, "sql":Ljava/lang/StringBuilder;
    const-string v8, "INSERT"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    sget-object v8, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    const-string v8, " INTO "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    const/16 v8, 0x28

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1612
    const/4 v0, 0x0

    .line 1613
    .local v0, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v5

    .line 1615
    .local v5, "size":I
    :goto_0
    if-lez v5, :cond_4

    .line 1616
    new-array v0, v5, [Ljava/lang/Object;

    .line 1617
    const/4 v2, 0x0

    .line 1618
    .local v2, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1619
    .local v1, "colName":Ljava/lang/String;
    if-lez v3, :cond_1

    const-string v8, ","

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v3

    move v3, v2

    .line 1622
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1613
    .end local v1    # "colName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "size":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1619
    .restart local v1    # "colName":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "size":I
    :cond_1
    const-string v8, ""

    goto :goto_2

    .line 1623
    .end local v1    # "colName":Ljava/lang/String;
    :cond_2
    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1624
    const-string v8, " VALUES ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const/4 v2, 0x0

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v5, :cond_5

    .line 1626
    if-lez v2, :cond_3

    const-string v8, ",?"

    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1626
    :cond_3
    const-string v8, "?"

    goto :goto_4

    .line 1629
    .end local v2    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") VALUES (NULL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    :cond_5
    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1633
    new-instance v7, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1635
    .local v7, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 1637
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1640
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-wide v8

    .line 1637
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1640
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v5    # "size":I
    .end local v6    # "sql":Ljava/lang/StringBuilder;
    .end local v7    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v8

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v8
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 2329
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2331
    const/4 v0, 0x0

    .line 2333
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 2334
    if-nez v0, :cond_0

    .line 2335
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "databaselist for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " couldn\'t "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "be retrieved. probably because the database is closed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2338
    :catch_0
    move-exception v2

    move-object v1, v0

    .line 2340
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v1, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2341
    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_2
    new-instance v8, Landroid/util/Pair;

    const-string/jumbo v10, "main"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2344
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 2345
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2346
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2348
    .local v6, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PRAGMA "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".integrity_check(1);"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 2350
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForIntegrityCheck()Ljava/lang/String;

    move-result-object v7

    .line 2351
    .local v7, "rslt":Ljava/lang/String;
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 2352
    if-eqz v7, :cond_2

    const-string/jumbo v8, "ok"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2354
    iput-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 2355
    const-string v10, "SQLiteDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PRAGMA integrity_check on "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " returned: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2362
    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2366
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    move v8, v9

    .line 2368
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .end local v7    # "rslt":Ljava/lang/String;
    :goto_1
    return v8

    .line 2362
    .restart local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local v7    # "rslt":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2344
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2358
    .end local v7    # "rslt":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2359
    .local v3, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_6
    const-string v8, "false"

    iput-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2362
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2366
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    move v8, v9

    goto :goto_1

    .line 2362
    .end local v3    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2366
    .end local v4    # "i":I
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v8

    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v8

    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2368
    const/4 v8, 0x1

    goto :goto_1

    .line 2366
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i":I
    .restart local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_2
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 586
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 588
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public isInMemoryDatabase()Z
    .locals 2

    .prologue
    .line 1871
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1872
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1873
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 1882
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1883
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    .line 1855
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1856
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1857
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 3

    .prologue
    .line 2178
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2179
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2181
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1100
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1116
    return-void
.end method

.method public needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I

    .prologue
    .line 1894
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V

    .line 278
    return-void
.end method

.method onCorruption()V
    .locals 2

    .prologue
    .line 342
    const v0, 0x124fc

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 343
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    return-void
.end method

.method onCorruption(I)V
    .locals 2
    .param p1, "error_code"    # I

    .prologue
    .line 2207
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorrupt_code:I

    .line 2209
    const v0, 0x124fc

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2210
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2211
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 1366
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 1404
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 1198
    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1239
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .prologue
    .line 1279
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1322
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1324
    :try_start_0
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    .local v2, "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1330
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1419
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v1, 0x0

    .line 1437
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    .prologue
    .line 1455
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1476
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1478
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 1480
    .local v0, "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    if-eqz p1, :cond_0

    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :goto_0
    invoke-interface {v0, p1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1483
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v1

    .line 1480
    .restart local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1483
    .end local v0    # "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v1
.end method

.method public reopenReadWrite()V
    .locals 5

    .prologue
    .line 872
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 873
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 875
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    monitor-exit v3

    .line 890
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 881
    .local v1, "oldOpenFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v4, v4, -0x2

    or-int/lit8 v4, v4, 0x0

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "oldOpenFlags":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 885
    .restart local v1    # "oldOpenFlags":I
    :catch_0
    move-exception v0

    .line 886
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 887
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1551
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1555
    :goto_0
    return-wide v2

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1555
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1577
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 2000
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2001
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2003
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2004
    monitor-exit v2

    .line 2015
    :goto_0
    return-void

    .line 2007
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2014
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 2012
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2011
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1919
    if-nez p1, :cond_0

    .line 1920
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "locale must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1923
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1924
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1926
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 1927
    .local v1, "oldLocale":Ljava/util/Locale;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1934
    :try_start_2
    monitor-exit v3

    .line 1935
    return-void

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 1932
    throw v0

    .line 1934
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .param p1, "lockingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 5
    .param p1, "cacheSize"    # I

    .prologue
    .line 1951
    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1952
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "expected value between 0 and 100"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1956
    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1957
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1959
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 1960
    .local v1, "oldMaxSqlCacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1967
    :try_start_2
    monitor-exit v3

    .line 1968
    return-void

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 1965
    throw v0

    .line 1967
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldMaxSqlCacheSize":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setMaximumSize(J)J
    .locals 11
    .param p1, "numBytes"    # J

    .prologue
    .line 1058
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 1059
    .local v4, "pageSize":J
    div-long v2, p1, v4

    .line 1061
    .local v2, "numPages":J
    rem-long v6, p1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1062
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 1064
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA max_page_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1066
    .local v0, "newPageCount":J
    mul-long v6, v0, v4

    return-wide v6
.end method

.method public setPageSize(J)V
    .locals 3
    .param p1, "numBytes"    # J

    .prologue
    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 551
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 555
    return-void

    .line 553
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v0
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1686
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    .prologue
    .line 1705
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 1706
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Empty values"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1709
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1711
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x78

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1712
    .local v7, "sql":Ljava/lang/StringBuilder;
    const-string v9, "UPDATE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    sget-object v9, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v9, v9, p5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    const-string v9, " SET "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v6

    .line 1719
    .local v6, "setValuesSize":I
    if-nez p4, :cond_2

    move v1, v6

    .line 1720
    .local v1, "bindArgsSize":I
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 1721
    .local v0, "bindArgs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1722
    .local v3, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1723
    .local v2, "colName":Ljava/lang/String;
    if-lez v4, :cond_3

    const-string v9, ","

    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v0, v4

    .line 1726
    const-string v9, "=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1727
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 1719
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v2    # "colName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    array-length v9, p4

    add-int v1, v6, v9

    goto :goto_0

    .line 1723
    .restart local v0    # "bindArgs":[Ljava/lang/Object;
    .restart local v1    # "bindArgsSize":I
    .restart local v2    # "colName":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v9, ""

    goto :goto_2

    .line 1728
    .end local v2    # "colName":Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_5

    .line 1729
    move v3, v6

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_6

    .line 1730
    sub-int v9, v3, v6

    aget-object v9, p4, v9

    aput-object v9, v0, v3

    .line 1729
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_5
    move v3, v4

    .line 1733
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1734
    const-string v9, " WHERE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    :cond_7
    new-instance v8, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1740
    .local v8, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 1742
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1745
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v9

    .line 1742
    :catchall_0
    move-exception v9

    :try_start_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1745
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "setValuesSize":I
    .end local v7    # "sql":Ljava/lang/StringBuilder;
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw v9
.end method

.method public yieldIfContended()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 616
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 4

    .prologue
    .line 629
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J

    .prologue
    .line 644
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
