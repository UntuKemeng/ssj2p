.class public Lcom/samsung/android/rlc/db/MGRegDBHandler;
.super Ljava/lang/Object;
.source "MGRegDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    .line 26
    return-void
.end method

.method private close(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 22
    return-void
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "pushReg"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "dlvUrl"    # Ljava/lang/String;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 32
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pushreg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v3, "pushtype"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v3, "dlvurl"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v3, "rmmreg"

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 38
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 46
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v4, "DB insert fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "pushType"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 70
    :try_start_0
    const-string v1, "rmmreg"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 71
    .local v8, "c":Landroid/database/Cursor;
    const-string v10, ""

    .line 72
    .local v10, "selectedPush":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "pushtype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v8, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "selectedPush":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v9

    .line 79
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v1, "DB insert fail"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, v11

    .line 82
    goto :goto_0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .param p1, "pushReg"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 53
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pushreg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v3, "rmmreg"

    const-string v4, "pushtype=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p3, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v4, "DB insert fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method


# virtual methods
.method public declared-synchronized getDeliveryURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 98
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    const-string v2, "dlvurl"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-object v1

    .line 96
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 88
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 89
    const-string v2, "pushreg"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-object v1

    .line 86
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateRegStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pushReg"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "dlvUrl"    # Ljava/lang/String;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "pushreg"

    invoke-direct {p0, p2, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "savedPush":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "Insert new row"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update row : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "savedPush":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method