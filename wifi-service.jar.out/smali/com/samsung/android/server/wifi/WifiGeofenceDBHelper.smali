.class public Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiGeofenceDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;
    }
.end annotation


# static fields
.field public static final DATABASE_MAX_SIZE:I = 0x64

.field private static final DATABASE_NAME:Ljava/lang/String; = "wifigeofence.db"

.field public static final KEY_BSSID:Ljava/lang/String; = "bssid"

.field public static final KEY_CONFIG_KEY:Ljava/lang/String; = "config_key"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_LOCATIONID:Ljava/lang/String; = "location_id"

.field public static final KEY_NETWORKID:Ljava/lang/String; = "network_id"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final TABLE_NAME:Ljava/lang/String; = "geofence_wifi"

.field private static final TAG:Ljava/lang/String; = "WifiGeofenceDBHelper"

.field private static final mDBVersion:I = 0x1


# instance fields
.field mDataList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v0, "wifigeofence.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method private getLocationId(Ljava/lang/String;)I
    .locals 6
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v3, -0x1

    .line 148
    .local v3, "locationId":I
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 150
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select * from geofence_wifi"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 154
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 162
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_2
    return v3
.end method


# virtual methods
.method public delete(I)V
    .locals 4
    .param p1, "locationId"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 139
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "WifiGeofenceDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiGeofenceDBHelper delete - location Id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 142
    const-string v1, "geofence_wifi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getLocationId(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, "locationId":I
    const-string v2, "WifiGeofenceDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiGeofenceDBHelper delete - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", location Id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 131
    const-string v2, "geofence_wifi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 241
    const-string v2, "Dump of WifiGeofenceDB :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 246
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 248
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->printDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public find(I)I
    .locals 5
    .param p1, "locationid"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 172
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from geofence_wifi"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 174
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 176
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 179
    .local v0, "_locationid":I
    if-ne v0, p1, :cond_0

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 189
    .end local v0    # "_locationid":I
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLocationIdFromOldTime()I
    .locals 5

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 224
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, -0x1

    .line 226
    .local v2, "locationId":I
    const-string v3, "select location_id from geofence_wifi order by time"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 228
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 234
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_1
    return v2
.end method

.method public insert(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .param p1, "locationID"    # I
    .param p2, "networkID"    # I
    .param p3, "configKey"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;
    .param p5, "time"    # J

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 92
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v10, "data":Landroid/content/ContentValues;
    const-string v3, "location_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v3, "network_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v3, "config_key"

    move-object/from16 v0, p3

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "bssid"

    move-object/from16 v0, p4

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "time"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v3, "geofence_wifi"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 100
    const-string v3, "WifiGeofenceDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert() - locationID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", configKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BSSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v2, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;-><init>(Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;IILjava/lang/String;Ljava/lang/String;J)V

    .line 103
    .local v2, "geofenceData":Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    const-string v0, "CREATE TABLE geofence_wifi(_id INTEGER PRIMARY KEY AUTOINCREMENT,location_id INTEGER DEFAULT 0,network_id INTEGER DEFAULT 0,config_key STRING,bssid STRING,time LONG NOT NULL)"

    .line 73
    .local v0, "CREATE_WIFI_GEOFENCE_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v1, "WifiGeofenceDBHelper"

    const-string v2, "onCreate() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onRemove(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 86
    const-string v0, "WifiGeofenceDBHelper"

    const-string v1, "onRemove() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "DROP TABLE IF EXISTS geofence_wifi"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 79
    const-string v0, "WifiGeofenceDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade() - oldVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->onRemove(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void
.end method

.method public select()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 195
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select * from geofence_wifi"

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 199
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 201
    .local v2, "_locationid":I
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 202
    .local v3, "_networkid":I
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "_configKey":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "_bssid":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 206
    .local v6, "_time":J
    new-instance v0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;-><init>(Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;IILjava/lang/String;Ljava/lang/String;J)V

    .line 207
    .local v0, "gf":Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "WifiGeofenceDBHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiGeofenceDBHelper select - *"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v0    # "gf":Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;
    .end local v2    # "_locationid":I
    .end local v3    # "_networkid":I
    .end local v4    # "_configKey":Ljava/lang/String;
    .end local v5    # "_bssid":Ljava/lang/String;
    .end local v6    # "_time":J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    return-object v1
.end method

.method public update(IJ)V
    .locals 6
    .param p1, "locationID"    # I
    .param p2, "time"    # J

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->find(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, "data":Landroid/content/ContentValues;
    const-string v3, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v3, "geofence_wifi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;->mDataList:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    .line 117
    .local v2, "geofenceData":Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;
    if-eqz v2, :cond_0

    .line 118
    const-string v3, "WifiGeofenceDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->setLastConnectedTime(J)V

    .line 122
    .end local v0    # "data":Landroid/content/ContentValues;
    .end local v2    # "geofenceData":Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;
    :cond_0
    return-void
.end method
