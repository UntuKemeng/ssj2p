.class public Lcom/samsung/cpp/CPPDbAdapter;
.super Ljava/lang/Object;
.source "CPPDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPDbAdapter$GeoDbHelper;,
        Lcom/samsung/cpp/CPPDbAdapter$DbHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_GEO_CREATE:Ljava/lang/String; = "CREATE TABLE Geo_Table (_geo_id integer primary key autoincrement,geo_lat REAL,geo_lon REAL,geo_mode INTEGER,geo_radius INTEGER,geo_period INTEGER);"

.field private static final DATABASE_GEO_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS data Geo_Table"

.field private static final DATABASE_NAME:Ljava/lang/String; = "cellDB.db"

.field private static final DATABASE_PATCH_CREATE:Ljava/lang/String; = "CREATE TABLE Patch_Table (_patch_id integer primary key autoincrement,req_id INTEGER,version INTEGER,latIndex INTEGER, lonIndex INTEGER,patch_fcn INTEGER);"

.field private static final DATABASE_PATCH_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS data Patch_Table"

.field private static final DATABASE_REQ_CREATE:Ljava/lang/String; = "CREATE TABLE Request_Table (_req_id integer primary key autoincrement,RAT INTEGER,MODE INTEGER,LATENCY INTEGER,db_req_sn INTEGER,req_type INTEGER,db_type INTEGER,patch_class INTEGER,mcc INTEGER,mnc INTEGER,tac INTEGER,gci INTEGER,pci INTEGER,fcn INTEGER,encryption_key INTEGER,is_sending INTEGER);"

.field private static final DATABASE_REQ_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS data Request_Table"

.field private static final DATABASE_RESP_PATCH_CREATE:Ljava/lang/String; = "CREATE TABLE Resp_Patch_Table (_d_patch_id integer primary key autoincrement,rat_d INTEGER,sn_d INTEGER,up_d INTEGER,patch_class_d INTEGER,patch_ver_d INTEGER,patch_lat_index_d INTEGER,patch_lon_index_d INTEGER,fcn_d INTEGER,req_id_d INTEGER,numcell_d INTEGER,patch_length_d INTEGER,cell_data_d BLOB);"

.field private static final DATABASE_RESP_PATCH_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS data Resp_Patch_Table"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DB_PATH:Ljava/lang/String; = "/data/system/cellDB.db"

.field private static final GEO_DATABASE_NAME:Ljava/lang/String; = "geoDB.db"

.field private static final GEO_TABLE:Ljava/lang/String; = "Geo_Table"

.field public static final KEY_CELL_DATA_D:Ljava/lang/String; = "cell_data_d"

.field public static final KEY_DB_TYPE:Ljava/lang/String; = "db_type"

.field public static final KEY_ENC_KEY:Ljava/lang/String; = "encryption_key"

.field public static final KEY_FCN:Ljava/lang/String; = "fcn"

.field public static final KEY_FCN_D:Ljava/lang/String; = "fcn_d"

.field public static final KEY_GCI:Ljava/lang/String; = "gci"

.field public static final KEY_GEO_LAT:Ljava/lang/String; = "geo_lat"

.field public static final KEY_GEO_LON:Ljava/lang/String; = "geo_lon"

.field public static final KEY_GEO_MODE:Ljava/lang/String; = "geo_mode"

.field public static final KEY_GEO_PERIOD:Ljava/lang/String; = "geo_period"

.field public static final KEY_GEO_RADIUS:Ljava/lang/String; = "geo_radius"

.field public static final KEY_ID_GEO:Ljava/lang/String; = "_geo_id"

.field public static final KEY_ID_PATCH:Ljava/lang/String; = "_patch_id"

.field public static final KEY_ID_PATCH_D:Ljava/lang/String; = "_d_patch_id"

.field public static final KEY_ID_REQ:Ljava/lang/String; = "_req_id"

.field public static final KEY_IS_SENDING:Ljava/lang/String; = "is_sending"

.field public static final KEY_LATENCY:Ljava/lang/String; = "LATENCY"

.field public static final KEY_LATINDEX:Ljava/lang/String; = "latIndex"

.field public static final KEY_LONINDEX:Ljava/lang/String; = "lonIndex"

.field public static final KEY_MCC:Ljava/lang/String; = "mcc"

.field public static final KEY_MNC:Ljava/lang/String; = "mnc"

.field public static final KEY_MODE:Ljava/lang/String; = "MODE"

.field public static final KEY_NUMCELL_D:Ljava/lang/String; = "numcell_d"

.field public static final KEY_PATCH_CLASS:Ljava/lang/String; = "patch_class"

.field public static final KEY_PATCH_CLASS_D:Ljava/lang/String; = "patch_class_d"

.field public static final KEY_PATCH_FCN:Ljava/lang/String; = "patch_fcn"

.field public static final KEY_PATCH_LAT_INDEX_D:Ljava/lang/String; = "patch_lat_index_d"

.field public static final KEY_PATCH_LENGTH_D:Ljava/lang/String; = "patch_length_d"

.field public static final KEY_PATCH_LON_INDEX_D:Ljava/lang/String; = "patch_lon_index_d"

.field public static final KEY_PATCH_VER_D:Ljava/lang/String; = "patch_ver_d"

.field public static final KEY_PCI:Ljava/lang/String; = "pci"

.field public static final KEY_RAT:Ljava/lang/String; = "RAT"

.field public static final KEY_RAT_D:Ljava/lang/String; = "rat_d"

.field public static final KEY_REQ_ID:Ljava/lang/String; = "req_id"

.field public static final KEY_REQ_ID_D:Ljava/lang/String; = "req_id_d"

.field public static final KEY_REQ_TYPE:Ljava/lang/String; = "req_type"

.field public static final KEY_SN:Ljava/lang/String; = "db_req_sn"

.field public static final KEY_SN_D:Ljava/lang/String; = "sn_d"

.field public static final KEY_TAC:Ljava/lang/String; = "tac"

.field public static final KEY_UP_D:Ljava/lang/String; = "up_d"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final PATCH_TABLE:Ljava/lang/String; = "Patch_Table"

.field private static final REQ_TABLE:Ljava/lang/String; = "Request_Table"

.field private static final RESP_PATCH_TABLE:Ljava/lang/String; = "Resp_Patch_Table"

.field private static final TAG:Ljava/lang/String; = "CPPDbAdapter"


# instance fields
.field private DBfile:Ljava/io/File;

.field public arrayUtc:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public arrayUtcKey:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private mDbHelper:Lcom/samsung/cpp/CPPDbAdapter$DbHelper;

.field private mGeoDbHelper:Lcom/samsung/cpp/CPPDbAdapter$GeoDbHelper;

.field private mdb:Landroid/database/sqlite/SQLiteDatabase;

.field private mgdb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/samsung/cpp/CPPDbAdapter;->context:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/samsung/cpp/CPPDbAdapter$DbHelper;

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/cpp/CPPDbAdapter$DbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mDbHelper:Lcom/samsung/cpp/CPPDbAdapter$DbHelper;

    .line 156
    new-instance v0, Lcom/samsung/cpp/CPPDbAdapter$GeoDbHelper;

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/cpp/CPPDbAdapter$GeoDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mGeoDbHelper:Lcom/samsung/cpp/CPPDbAdapter$GeoDbHelper;

    .line 157
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->arrayUtc:Landroid/util/LongSparseArray;

    .line 158
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->arrayUtcKey:Landroid/util/LongSparseArray;

    .line 159
    return-void
.end method

.method public static intToReverseByte(I)[B
    .locals 3
    .param p0, "iData"    # I

    .prologue
    .line 1016
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1017
    .local v0, "bData":[B
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method private joinReqTables(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 2
    .param p1, "sqb"    # Landroid/database/sqlite/SQLiteQueryBuilder;

    .prologue
    .line 1006
    const-string v0, "CPPDbAdapter"

    const-string v1, "joinReqTables()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v0, "Request_Table LEFT OUTER JOIN Patch_Table ON (Request_Table._req_id = Patch_Table.req_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1009
    return-void
.end method


# virtual methods
.method public checkExistedGciReq(IJII)Z
    .locals 10
    .param p1, "rat"    # I
    .param p2, "gci"    # J
    .param p4, "pci"    # I
    .param p5, "fcn"    # I

    .prologue
    .line 632
    const/4 v9, 0x0

    .line 633
    .local v9, "mCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 635
    .local v8, "exist":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fcn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gci"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pci"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Request_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 640
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 646
    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const/4 v8, 0x1

    .line 649
    :cond_0
    if-eqz v9, :cond_1

    .line 650
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_1
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExistedGciReq() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return v8

    .line 642
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 649
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_2

    .line 650
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public checkExistedLargeResp(IIIIII)Z
    .locals 11
    .param p1, "rat"    # I
    .param p2, "lat1"    # I
    .param p3, "lat2"    # I
    .param p4, "lon1"    # I
    .param p5, "lon2"    # I
    .param p6, "fcn"    # I

    .prologue
    .line 694
    const/4 v10, 0x0

    .line 695
    .local v10, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 697
    .local v9, "exist":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rat_d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fcn_d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_lat_index_d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_lat_index_d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_lon_index_d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_lon_index_d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "_selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Resp_Patch_Table"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 703
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 709
    if-eqz v10, :cond_0

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 711
    const/4 v9, 0x1

    .line 714
    :cond_0
    if-eqz v10, :cond_1

    .line 715
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_1
    if-nez v9, :cond_2

    .line 718
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 720
    :try_start_2
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Resp_Patch_Table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 721
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 723
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 726
    :cond_2
    const-string v1, "CPPDbAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExistedLargeResp() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v9

    .line 705
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 714
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_3

    .line 715
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 723
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public checkExistedPatchReq(IIII)Z
    .locals 10
    .param p1, "rat"    # I
    .param p2, "lat"    # I
    .param p3, "lon"    # I
    .param p4, "patch_fcn"    # I

    .prologue
    const/4 v1, 0x0

    .line 658
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 659
    .local v0, "sqb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {p0, v0}, Lcom/samsung/cpp/CPPDbAdapter;->joinReqTables(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 660
    const/4 v8, 0x0

    .line 661
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 663
    .local v7, "exist":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request_Table.RAT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Patch_Table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "latIndex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Patch_Table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lonIndex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Patch_Table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "patch_fcn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_selection":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 667
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 669
    .local v9, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 672
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 678
    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const/4 v7, 0x1

    .line 681
    :cond_0
    if-eqz v8, :cond_1

    .line 682
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_1
    const-string v1, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkExistedPatchReq() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return v7

    .line 674
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 681
    :catchall_1
    move-exception v1

    if-eqz v8, :cond_2

    .line 682
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public checkExistedPatchResp(JIIIIIJ)J
    .locals 26
    .param p1, "reqId"    # J
    .param p3, "rat"    # I
    .param p4, "sN"    # I
    .param p5, "lat"    # I
    .param p6, "lon"    # I
    .param p7, "fcn"    # I
    .param p8, "version"    # J

    .prologue
    .line 732
    move-wide/from16 v24, p8

    .line 734
    .local v24, "value":J
    new-instance v12, Ljava/util/GregorianCalendar;

    invoke-direct {v12}, Ljava/util/GregorianCalendar;-><init>()V

    .line 735
    .local v12, "gc":Ljava/util/GregorianCalendar;
    const-string v2, "%d%02d%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-virtual {v12, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x5

    invoke-virtual {v12, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 736
    .local v15, "str":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 738
    .local v20, "today":J
    const/4 v14, 0x0

    .line 740
    .local v14, "mCursor":Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resp_Patch_Table.rat_d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resp_Patch_Table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "patch_lat_index_d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resp_Patch_Table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "patch_lon_index_d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resp_Patch_Table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fcn_d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, "_selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 746
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Resp_Patch_Table"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 753
    if-eqz v14, :cond_0

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 756
    const-string v2, "up_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v10, v2

    .line 757
    .local v10, "expireDate":J
    const-string v2, "patch_ver_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 759
    .local v18, "patchVer":J
    cmp-long v2, v20, v10

    if-lez v2, :cond_4

    .line 760
    cmp-long v2, p8, v18

    if-lez v2, :cond_2

    .line 762
    move-wide/from16 v24, p8

    .line 763
    const-string v2, "CPPDbAdapter"

    const-string v3, "checkExistedPatchResp() Send request to server"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    .line 792
    .end local v10    # "expireDate":J
    .end local v13    # "i":I
    .end local v18    # "patchVer":J
    :cond_0
    if-eqz v14, :cond_1

    .line 793
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 795
    :cond_1
    return-wide v24

    .line 749
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 766
    .restart local v10    # "expireDate":J
    .restart local v13    # "i":I
    .restart local v18    # "patchVer":J
    :cond_2
    move-wide/from16 v24, v18

    .line 767
    :try_start_2
    const-string v2, "CPPDbAdapter"

    const-string v3, "checkExistedPatchResp() Change version and send request to server"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 792
    .end local v10    # "expireDate":J
    .end local v13    # "i":I
    .end local v18    # "patchVer":J
    :catchall_1
    move-exception v2

    if-eqz v14, :cond_3

    .line 793
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 771
    .restart local v10    # "expireDate":J
    .restart local v13    # "i":I
    .restart local v18    # "patchVer":J
    :cond_4
    :try_start_3
    const-string v2, "_d_patch_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 772
    .local v16, "patchId":J
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 773
    .local v22, "updateInfo":Landroid/content/ContentValues;
    const-string v2, "req_id_d"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 774
    const-string v2, "sn_d"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 778
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Resp_Patch_Table"

    const-string v4, "_d_patch_id= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 779
    .local v23, "updated":I
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkExistedPatchResp() updated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 782
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 784
    const-wide/16 v24, 0x0

    goto/16 :goto_1

    .line 782
    .end local v23    # "updated":I
    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 755
    .end local v16    # "patchId":J
    .end local v22    # "updateInfo":Landroid/content/ContentValues;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "CPPDbAdapter"

    const-string v1, "Close mdb!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 173
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    return-void
.end method

.method public deleteAllReq()V
    .locals 4

    .prologue
    .line 841
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Request_Table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Patch_Table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 848
    const-string v0, "CPPDbAdapter"

    const-string v1, "deleteAllReq()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void

    .line 846
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public deleteExistedDb(IIII)V
    .locals 5
    .param p1, "rat"    # I
    .param p2, "lat"    # I
    .param p3, "lon"    # I
    .param p4, "fcn"    # I

    .prologue
    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resp_Patch_Table.rat_d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resp_Patch_Table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "patch_lat_index_d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resp_Patch_Table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "patch_lon_index_d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resp_Patch_Table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fcn_d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "_selection":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 945
    :try_start_0
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Resp_Patch_Table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 946
    .local v1, "deleted":I
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteExistedDb() deleted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 951
    return-void

    .line 949
    .end local v1    # "deleted":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public deleteGeoById(I)V
    .locals 5
    .param p1, "geoId"    # I

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1096
    :try_start_0
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Geo_Table"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_geo_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1097
    .local v0, "_tempGeo":I
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1102
    const-string v1, "CPPDbAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteGeoById() geoId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deleted row in Geo_Table : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1099
    .end local v0    # "_tempGeo":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public deleteReqById(J)V
    .locals 7
    .param p1, "reqId"    # J

    .prologue
    .line 855
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 857
    :try_start_0
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Patch_Table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "req_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 858
    .local v0, "_tempPatch":I
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Request_Table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_req_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 859
    .local v1, "_tempRequest":I
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    iget-object v2, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 864
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteReqById() reqId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleted row in Patch_Table : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / in Request_Table : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void

    .line 861
    .end local v0    # "_tempPatch":I
    .end local v1    # "_tempRequest":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public deleteReqByValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 868
    const-wide/16 v14, 0x0

    .line 869
    .local v14, "reqId":J
    const/4 v12, 0x0

    .line 870
    .local v12, "mCursor":Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 874
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Request_Table"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 881
    if-eqz v12, :cond_2

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    const-string v2, "req_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 885
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Patch_Table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "req_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 886
    .local v10, "_tempPatch":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Request_Table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_req_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 887
    .local v11, "_tempRequest":I
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteReqByValue() reqId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleted patch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleted req : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 890
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 895
    .end local v10    # "_tempPatch":I
    .end local v11    # "_tempRequest":I
    :goto_0
    if-eqz v12, :cond_0

    .line 896
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 898
    :cond_0
    return-void

    .line 877
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 890
    :catchall_1
    move-exception v2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 895
    :catchall_2
    move-exception v2

    if-eqz v12, :cond_1

    .line 896
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 893
    :cond_2
    :try_start_5
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteReqByValue() reqId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delete nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0
.end method

.method public deleteReqId(J)V
    .locals 13
    .param p1, "reqId"    # J

    .prologue
    .line 901
    const/4 v10, 0x0

    .line 902
    .local v10, "mCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 903
    .local v8, "deleted":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "req_id_d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Resp_Patch_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 908
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 914
    if-eqz v10, :cond_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 916
    .local v11, "updateInfo":Landroid/content/ContentValues;
    const-string v0, "req_id_d"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v0, "sn_d"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 921
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Resp_Patch_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v11, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 923
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 928
    :try_start_3
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 932
    .end local v9    # "i":I
    .end local v11    # "updateInfo":Landroid/content/ContentValues;
    :cond_1
    if-eqz v10, :cond_2

    .line 933
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_2
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteReqById() reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deleted patches in Resp_Patch_Table : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void

    .line 910
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 921
    .restart local v9    # "i":I
    .restart local v11    # "updateInfo":Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 928
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 932
    .end local v9    # "i":I
    .end local v11    # "updateInfo":Landroid/content/ContentValues;
    :catchall_2
    move-exception v0

    if-eqz v10, :cond_4

    .line 933
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getGeoLat(J)Ljava/lang/Double;
    .locals 11
    .param p1, "geoId"    # J

    .prologue
    .line 1040
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 1041
    .local v8, "lat":Ljava/lang/Double;
    const/4 v9, 0x0

    .line 1042
    .local v9, "mCursor":Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_geo_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1044
    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Geo_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1047
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1053
    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    const-string v0, "geo_lat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 1057
    :cond_0
    if-eqz v9, :cond_1

    .line 1058
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1060
    :cond_1
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGeoLat() geoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v4, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1049
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1057
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_2

    .line 1058
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getGeoLon(J)Ljava/lang/Double;
    .locals 11
    .param p1, "geoId"    # J

    .prologue
    .line 1066
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 1067
    .local v8, "lon":Ljava/lang/Double;
    const/4 v9, 0x0

    .line 1068
    .local v9, "mCursor":Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_geo_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1070
    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Geo_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1073
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1079
    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const-string v0, "geo_lon"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 1083
    :cond_0
    if-eqz v9, :cond_1

    .line 1084
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1086
    :cond_1
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGeoLat() geoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v4, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1075
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1083
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_2

    .line 1084
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getPatch(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "reqId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 397
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatch() reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "req_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Patch_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 404
    .local v8, "mCursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 408
    return-object v8

    .line 406
    .end local v8    # "mCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getReq(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 382
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReq() key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Request_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 389
    .local v8, "mCursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 393
    return-object v8

    .line 391
    .end local v8    # "mCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getRespForCp(J)[B
    .locals 23
    .param p1, "reqId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRespForCp() reqId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v2, 0x8

    new-array v13, v2, [B

    fill-array-data v13, :array_0

    .line 552
    .local v13, "init":[B
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    .line 553
    .local v21, "zeroUtc":[B
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    .line 554
    .local v20, "zeroOtk":[B
    const/16 v17, 0x0

    .line 557
    .local v17, "result":[B
    const/4 v14, 0x0

    .line 559
    .local v14, "mC1":Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "req_id_d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "q1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 562
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Resp_Patch_Table"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 570
    :goto_0
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 572
    const/high16 v2, 0x80000

    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 573
    .local v10, "bb":Ljava/nio/ByteBuffer;
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRespForCp() mC1.getCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 577
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 579
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 581
    const-string v2, "rat_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 582
    .local v16, "rat":I
    move/from16 v0, v16

    int-to-byte v2, v0

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 584
    const-string v2, "sn_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 586
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 588
    const-string v2, "up_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 591
    .local v15, "numPatch":I
    int-to-short v2, v15

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 593
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v15, :cond_0

    .line 594
    const-string v2, "CPPDbAdapter"

    const-string v3, "Get Patch Table Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v2, "patch_class_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 596
    const-string v2, "patch_ver_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 597
    const-string v2, "patch_lat_index_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 598
    const-string v2, "patch_lon_index_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 599
    const-string v2, "fcn_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 600
    const-string v2, "numcell_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 601
    const-string v2, "patch_length_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 602
    const-string v2, "cell_data_d"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 604
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    :cond_0
    const-string v2, "CPPDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRespForCp() size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    .line 610
    .local v18, "size":I
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 611
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 612
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 616
    .end local v10    # "bb":Ljava/nio/ByteBuffer;
    .end local v12    # "i":I
    .end local v15    # "numPatch":I
    .end local v16    # "rat":I
    .end local v18    # "size":I
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 623
    const-string v2, "CPPDbAdapter"

    const-string v3, "getRespForCp() Finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v17

    .line 624
    :goto_3
    return-object v2

    .line 564
    :catch_0
    move-exception v19

    .line 565
    .local v19, "sq":Landroid/database/SQLException;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v19    # "sq":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 593
    .restart local v10    # "bb":Ljava/nio/ByteBuffer;
    .restart local v12    # "i":I
    .restart local v15    # "numPatch":I
    .restart local v16    # "rat":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 613
    .end local v10    # "bb":Ljava/nio/ByteBuffer;
    .end local v12    # "i":I
    .end local v15    # "numPatch":I
    .end local v16    # "rat":I
    :catch_1
    move-exception v11

    .line 614
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 618
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v14, :cond_3

    .line 619
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 551
    nop

    :array_0
    .array-data 1
        0x22t
        0x56t
        0x61t
        0x6ct
        0x75t
        0x65t
        0x22t
        0x3at
    .end array-data

    .line 552
    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 553
    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public insertGeoReq(Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;)I
    .locals 6
    .param p1, "input"    # Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;

    .prologue
    .line 1021
    const-wide/16 v0, 0x0

    .line 1022
    .local v0, "geoId":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1023
    .local v2, "geoValues":Landroid/content/ContentValues;
    const-string v3, "geo_lat"

    iget-wide v4, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1024
    const-string v3, "geo_lon"

    iget-wide v4, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1025
    const-string v3, "geo_mode"

    iget v4, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mGeoMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    const-string v3, "geo_radius"

    iget v4, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mRadius:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string v3, "geo_period"

    iget v4, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mPeriod:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    iget-object v3, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1031
    :try_start_0
    iget-object v3, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Geo_Table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1032
    iget-object v3, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    iget-object v3, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1036
    long-to-int v3, v0

    return v3

    .line 1034
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public insertReq([B)J
    .locals 42
    .param p1, "data"    # [B

    .prologue
    .line 215
    const-string v4, "CPPDbAdapter"

    const-string v10, "insertReq() Start"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-wide/16 v32, 0x0

    .line 219
    .local v32, "reqId":J
    const/16 v21, 0x0

    .line 220
    .local v21, "existedPatch":I
    const/16 v20, 0x0

    .line 221
    .local v20, "existedLarge":I
    const/4 v15, 0x0

    .local v15, "lon2":I
    move v14, v15

    .local v14, "lon1":I
    move v13, v15

    .local v13, "lat2":I
    move v12, v15

    .line 222
    .local v12, "lat1":I
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v35, "reqValues":Landroid/content/ContentValues;
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v31, "patchValues":Landroid/content/ContentValues;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 228
    .local v17, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 229
    .local v5, "rat":I
    const-string v4, "RAT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v28

    .line 231
    .local v28, "mode":I
    const-string v4, "MODE"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v24

    .line 233
    .local v24, "latency":I
    const-string v4, "LATENCY"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v36

    .line 235
    .local v36, "sN":I
    const-string v4, "db_req_sn"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v34

    .line 237
    .local v34, "reqType":I
    const-string v4, "req_type"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v18

    .line 239
    .local v18, "dbType":I
    const-string v4, "db_type"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v30

    .line 241
    .local v30, "patchClass":I
    const-string v4, "patch_class"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v26

    .line 243
    .local v26, "mcc":I
    const-string v4, "mcc"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    .line 245
    .local v27, "mnc":I
    const-string v4, "mnc"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v10, 0xffff

    and-int v37, v4, v10

    .line 247
    .local v37, "tac":I
    const-string v4, "tac"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v10, v4

    const-wide v40, 0xffffffffL

    and-long v6, v10, v40

    .line 249
    .local v6, "gci":J
    const-string v4, "gci"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 251
    .local v8, "pci":I
    const-string v4, "pci"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v10, 0xffff

    and-int v9, v4, v10

    .line 253
    .local v9, "fcn":I
    const-string v4, "fcn"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->get()B

    move-result v29

    .line 255
    .local v29, "numPatch":I
    const-string v4, "is_sending"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v4, "CPPDbAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertReq() rat : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", latency : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v4, "CPPDbAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertReq() sN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", reqType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dbType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", patchClass : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mcc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mnc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", tac : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v37

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gci : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pci : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", fcn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", numPatch : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-lez v4, :cond_0

    move-object/from16 v4, p0

    .line 263
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/cpp/CPPDbAdapter;->checkExistedGciReq(IJII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    const-string v4, "CPPDbAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertReq() : [GCI-request] checkExistedGciReq = already in req_table, send it to server : (reqId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-wide/16 v10, 0x0

    .line 378
    .end local v5    # "rat":I
    .end local v6    # "gci":J
    .end local v8    # "pci":I
    .end local v9    # "fcn":I
    .end local v17    # "bb":Ljava/nio/ByteBuffer;
    .end local v18    # "dbType":I
    .end local v24    # "latency":I
    .end local v26    # "mcc":I
    .end local v27    # "mnc":I
    .end local v28    # "mode":I
    .end local v29    # "numPatch":I
    .end local v30    # "patchClass":I
    .end local v34    # "reqType":I
    .end local v36    # "sN":I
    .end local v37    # "tac":I
    :goto_0
    return-wide v10

    .line 269
    .restart local v5    # "rat":I
    .restart local v6    # "gci":J
    .restart local v8    # "pci":I
    .restart local v9    # "fcn":I
    .restart local v17    # "bb":Ljava/nio/ByteBuffer;
    .restart local v18    # "dbType":I
    .restart local v24    # "latency":I
    .restart local v26    # "mcc":I
    .restart local v27    # "mnc":I
    .restart local v28    # "mode":I
    .restart local v29    # "numPatch":I
    .restart local v30    # "patchClass":I
    .restart local v34    # "reqType":I
    .restart local v36    # "sN":I
    .restart local v37    # "tac":I
    :cond_0
    if-nez v28, :cond_1

    .line 270
    const-string v4, "MODE"

    const-string v10, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqByValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "Request_Table"

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v4, v10, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v32

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 282
    const-string v4, "CPPDbAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertReq() reqId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    if-lez v29, :cond_2

    .line 285
    packed-switch v28, :pswitch_data_0

    .line 377
    .end local v5    # "rat":I
    .end local v6    # "gci":J
    .end local v8    # "pci":I
    .end local v9    # "fcn":I
    .end local v17    # "bb":Ljava/nio/ByteBuffer;
    .end local v18    # "dbType":I
    .end local v24    # "latency":I
    .end local v26    # "mcc":I
    .end local v27    # "mnc":I
    .end local v28    # "mode":I
    .end local v29    # "numPatch":I
    .end local v30    # "patchClass":I
    .end local v34    # "reqType":I
    .end local v36    # "sN":I
    .end local v37    # "tac":I
    :cond_2
    :goto_1
    const-string v4, "CPPDbAdapter"

    const-string v10, "insertReq() End"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v10, v32

    .line 378
    goto :goto_0

    .line 279
    .restart local v5    # "rat":I
    .restart local v6    # "gci":J
    .restart local v8    # "pci":I
    .restart local v9    # "fcn":I
    .restart local v17    # "bb":Ljava/nio/ByteBuffer;
    .restart local v18    # "dbType":I
    .restart local v24    # "latency":I
    .restart local v26    # "mcc":I
    .restart local v27    # "mnc":I
    .restart local v28    # "mode":I
    .restart local v29    # "numPatch":I
    .restart local v30    # "patchClass":I
    .restart local v34    # "reqType":I
    .restart local v36    # "sN":I
    .restart local v37    # "tac":I
    :catchall_0
    move-exception v4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 374
    .end local v5    # "rat":I
    .end local v6    # "gci":J
    .end local v8    # "pci":I
    .end local v9    # "fcn":I
    .end local v17    # "bb":Ljava/nio/ByteBuffer;
    .end local v18    # "dbType":I
    .end local v24    # "latency":I
    .end local v26    # "mcc":I
    .end local v27    # "mnc":I
    .end local v28    # "mode":I
    .end local v29    # "numPatch":I
    .end local v30    # "patchClass":I
    .end local v34    # "reqType":I
    .end local v36    # "sN":I
    .end local v37    # "tac":I
    :catch_0
    move-exception v19

    .line 375
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v5    # "rat":I
    .restart local v6    # "gci":J
    .restart local v8    # "pci":I
    .restart local v9    # "fcn":I
    .restart local v17    # "bb":Ljava/nio/ByteBuffer;
    .restart local v18    # "dbType":I
    .restart local v24    # "latency":I
    .restart local v26    # "mcc":I
    .restart local v27    # "mnc":I
    .restart local v28    # "mode":I
    .restart local v29    # "numPatch":I
    .restart local v30    # "patchClass":I
    .restart local v34    # "reqType":I
    .restart local v36    # "sN":I
    .restart local v37    # "tac":I
    :pswitch_0
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 289
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 290
    .local v38, "version":J
    rem-int/lit8 v4, v22, 0x2

    if-nez v4, :cond_4

    .line 291
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 292
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    .line 297
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v10, 0xffff

    and-int v16, v4, v10

    .line 299
    .local v16, "patch_fcn":I
    const/4 v4, 0x1

    rem-int/lit8 v10, v22, 0x2

    if-ne v4, v10, :cond_5

    move-object/from16 v10, p0

    move v11, v5

    invoke-virtual/range {v10 .. v16}, Lcom/samsung/cpp/CPPDbAdapter;->checkExistedLargeResp(IIIIII)Z

    move-result v4

    if-nez v4, :cond_5

    .line 300
    const-string v4, "req_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    const-string v4, "version"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    const-string v4, "latIndex"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v4, "lonIndex"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v4, "patch_fcn"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 308
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "Patch_Table"

    const/4 v11, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v10, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 311
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 313
    const-string v4, "CPPDbAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertReq() req_id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", patch["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v22, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v38

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lat1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lon1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", patch_fcn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v4, "latIndex"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v4, "lonIndex"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 321
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "Patch_Table"

    const/4 v11, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v10, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 324
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 327
    const-string v4, "CPPDbAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertReq() req_id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", patch["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v38

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lat2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lon2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", patch_fcn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 294
    .end local v16    # "patch_fcn":I
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    .line 295
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    goto/16 :goto_3

    .line 311
    .restart local v16    # "patch_fcn":I
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 324
    :catchall_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 329
    :cond_5
    const/4 v4, 0x1

    rem-int/lit8 v10, v22, 0x2

    if-ne v4, v10, :cond_3

    move-object/from16 v10, p0

    move v11, v5

    invoke-virtual/range {v10 .. v16}, Lcom/samsung/cpp/CPPDbAdapter;->checkExistedLargeResp(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    add-int/lit8 v20, v20, 0x1

    .line 331
    div-int/lit8 v4, v29, 0x2

    move/from16 v0, v20

    if-ne v4, v0, :cond_3

    .line 332
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqById(J)V

    .line 333
    const-wide/16 v10, 0x0

    goto/16 :goto_0

    .line 341
    .end local v16    # "patch_fcn":I
    .end local v22    # "i":I
    .end local v38    # "version":J
    :pswitch_1
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 342
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 343
    .restart local v38    # "version":J
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v23

    .line 344
    .local v23, "latIndex":I
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v25

    .line 345
    .local v25, "lonIndex":I
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v10, 0xffff

    and-int v16, v4, v10

    .line 347
    .restart local v16    # "patch_fcn":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v16

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/samsung/cpp/CPPDbAdapter;->checkExistedPatchReq(IIII)Z

    move-result v4

    if-nez v4, :cond_7

    .line 348
    const-string v4, "req_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const-string v4, "version"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    const-string v4, "latIndex"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v4, "lonIndex"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v4, "patch_fcn"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 356
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "Patch_Table"

    const/4 v11, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v10, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 359
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 361
    const-string v4, "CPPDbAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertReq() req_id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", patch["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v38

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", latIndex : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lonIndex : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", patch_fcn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 359
    :catchall_3
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 364
    :cond_7
    add-int/lit8 v21, v21, 0x1

    .line 365
    move/from16 v0, v29

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 366
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqById(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 367
    const-wide/16 v10, 0x0

    goto/16 :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertResp([BIIJ)V
    .locals 30
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "rat"    # I
    .param p4, "reqId"    # J

    .prologue
    .line 438
    const-string v23, "CPPDbAdapter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insertResp() data : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", size : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", rat : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", reqId : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v12, 0x0

    .local v12, "latIndex":I
    const/4 v14, 0x0

    .line 445
    .local v14, "lonIndex":I
    const/4 v11, 0x0

    .line 447
    .local v11, "isDbFull":Z
    new-instance v23, Ljava/io/File;

    const-string v26, "/data/system/cellDB.db"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/cpp/CPPDbAdapter;->DBfile:Ljava/io/File;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->DBfile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 449
    .local v4, "DBSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v26

    sub-long v26, v26, v4

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v23, v26, v28

    if-gtz v23, :cond_0

    .line 450
    const/4 v11, 0x1

    .line 452
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->arrayUtc:Landroid/util/LongSparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 453
    .local v18, "objUtc":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->arrayUtcKey:Landroid/util/LongSparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 455
    .local v19, "objUtcKey":Ljava/lang/Integer;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v21, "patchValues":Landroid/content/ContentValues;
    const-string v23, "CPPDbAdapter"

    const-string v26, "insertResp() Start"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v18, :cond_1

    if-nez v19, :cond_2

    .line 461
    :cond_1
    const-string v23, "CPPDbAdapter"

    const-string v26, "insertResp() objUtc or objUtcKey is null, end insert"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_0
    return-void

    .line 466
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v23

    sget-object v26, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 468
    .local v6, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    .line 470
    .local v22, "sN":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 471
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 472
    .local v24, "uP":J
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v17

    .line 473
    .local v17, "numPatch":I
    const-string v23, "CPPDbAdapter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insertResp() reqId : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", sN : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", uP : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", numPatch : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-nez v17, :cond_3

    .line 476
    const-string v23, "CPPDbAdapter"

    const-string v26, "insertResp() numPatch == 0, end insert"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v17    # "numPatch":I
    .end local v22    # "sN":I
    .end local v24    # "uP":J
    :catch_0
    move-exception v8

    .line 543
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v23, "CPPDbAdapter"

    const-string v26, "insertResp() Finish"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    .restart local v6    # "bb":Ljava/nio/ByteBuffer;
    .restart local v17    # "numPatch":I
    .restart local v22    # "sN":I
    .restart local v24    # "uP":J
    :cond_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 482
    :try_start_1
    const-string v23, "CPPDbAdapter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insertResp() insert patch["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v23, "rat_d"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v23, "sn_d"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v23, "up_d"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 490
    const-string v23, "req_id_d"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    const-string v23, "patch_class_d"

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 494
    const-string v23, "patch_ver_d"

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v23

    const v26, 0xffff

    and-int v13, v23, v26

    .line 497
    .local v13, "latTemp":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v23

    xor-int v12, v13, v23

    .line 498
    const-string v23, "patch_lat_index_d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v23

    const v26, 0xffff

    and-int v15, v23, v26

    .line 501
    .local v15, "lonTemp":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v23

    xor-int v14, v15, v23

    .line 502
    const-string v23, "patch_lon_index_d"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    if-eqz v11, :cond_5

    .line 505
    const-string v23, "CPPDbAdapter"

    const-string v26, "insertResp() isDbFull"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/samsung/cpp/CPPDbAdapter;->reduceDbVol(II)V

    .line 541
    .end local v13    # "latTemp":I
    .end local v15    # "lonTemp":I
    :cond_4
    const-string v23, "CPPDbAdapter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insertResp() End Position : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 510
    .restart local v13    # "latTemp":I
    .restart local v15    # "lonTemp":I
    :cond_5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v23

    const v26, 0xffff

    and-int v9, v23, v26

    .line 511
    .local v9, "fcn":I
    const-string v23, "fcn_d"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v16

    .line 514
    .local v16, "numCells":I
    const-string v23, "numcell_d"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 517
    .local v20, "patchLength":I
    const-string v23, "patch_length_d"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v23, "CPPDbAdapter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insertResp() latIndex : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", lonIndex : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", fcn : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", numCells : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", patchLength : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const v23, 0x13880

    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_6

    .line 522
    move/from16 v0, v20

    new-array v7, v0, [B

    .line 523
    .local v7, "cellData":[B
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v6, v7, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 524
    const-string v23, "cell_data_d"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 526
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v12, v14, v9}, Lcom/samsung/cpp/CPPDbAdapter;->deleteExistedDb(IIII)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v26, "Resp_Patch_Table"

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 481
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 533
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v23

    .line 536
    .end local v7    # "cellData":[B
    :cond_6
    const-string v23, "CPPDbAdapter"

    const-string v26, "insertResp() patchLength is over 80000"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v23, "CPPDbAdapter"

    const-string v26, "insertResp() Finish"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public isLargeReq(J)Z
    .locals 11
    .param p1, "reqId"    # J

    .prologue
    .line 412
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLargeReq() reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v8, 0x0

    .line 414
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 416
    .local v9, "reqType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_req_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Request_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 420
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 426
    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "req_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    .line 429
    :cond_0
    if-eqz v8, :cond_1

    .line 430
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_1
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLargeReq() reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-lez v9, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 422
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 429
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_2

    .line 430
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 434
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()Lcom/samsung/cpp/CPPDbAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 162
    const-string v0, "CPPDbAdapter"

    const-string v1, "DbAdapter.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mDbHelper:Lcom/samsung/cpp/CPPDbAdapter$DbHelper;

    invoke-virtual {v0}, Lcom/samsung/cpp/CPPDbAdapter$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    .line 164
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/32 v2, 0x1e00000

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    .line 165
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mGeoDbHelper:Lcom/samsung/cpp/CPPDbAdapter$GeoDbHelper;

    invoke-virtual {v0}, Lcom/samsung/cpp/CPPDbAdapter$GeoDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mgdb:Landroid/database/sqlite/SQLiteDatabase;

    .line 166
    const-string v0, "CPPDbAdapter"

    const-string v1, "DbAdapter.open() -- completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object p0
.end method

.method public reduceDbVol(II)V
    .locals 16
    .param p1, "latIndex"    # I
    .param p2, "lonIndex"    # I

    .prologue
    .line 954
    const-string v11, "CPPDbAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reduceDbVol() latIndex : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", lonIndex : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    add-int/lit8 v8, p1, -0x32

    .line 956
    .local v8, "latUnder":I
    add-int/lit8 v7, p1, 0x32

    .line 957
    .local v7, "latOver":I
    add-int/lit8 v10, p2, -0x32

    .line 958
    .local v10, "lonUnder":I
    add-int/lit8 v9, p2, 0x32

    .line 960
    .local v9, "lonOver":I
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/cellDB.db"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->DBfile:Ljava/io/File;

    .line 963
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v11, 0x5

    if-ge v6, v11, :cond_0

    .line 964
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Resp_Patch_Table.patch_lat_index_d<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " OR "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Resp_Patch_Table"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "patch_lat_index_d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " OR "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Resp_Patch_Table"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "patch_lon_index_d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " OR "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Resp_Patch_Table"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "patch_lon_index_d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 968
    .local v4, "_selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 970
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "Resp_Patch_Table"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 971
    .local v5, "deleted":I
    const-string v11, "CPPDbAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reduceDbVol() deleted : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 977
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->DBfile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 978
    .local v2, "DBSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v12

    div-long v12, v2, v12

    long-to-double v12, v12

    const-wide v14, 0x3fe999999999999aL    # 0.8

    cmpg-double v11, v12, v14

    if-gtz v11, :cond_1

    .line 979
    const-string v11, "CPPDbAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reduceDbVol() DBSize : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .end local v2    # "DBSize":J
    .end local v4    # "_selection":Ljava/lang/String;
    .end local v5    # "deleted":I
    :cond_0
    const-string v11, "CPPDbAdapter"

    const-string v12, "reduceDbVol() Finish"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void

    .line 974
    .restart local v4    # "_selection":Ljava/lang/String;
    :catchall_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11

    .line 981
    .restart local v2    # "DBSize":J
    .restart local v5    # "deleted":I
    :cond_1
    const/4 v11, 0x4

    if-ne v6, v11, :cond_2

    .line 982
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 984
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "Resp_Patch_Table"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 985
    const-string v11, "CPPDbAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reduceDbVol() deleted All : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 988
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 963
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 988
    :catchall_1
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11

    .line 991
    :cond_2
    add-int/lit8 v8, v8, 0xa

    .line 992
    add-int/lit8 v7, v7, -0xa

    .line 993
    add-int/lit8 v10, v10, 0xa

    .line 994
    add-int/lit8 v9, v9, -0xa

    goto :goto_1
.end method

.method public updateSending(JZ)V
    .locals 11
    .param p1, "reqId"    # J
    .param p3, "isSending"    # Z

    .prologue
    .line 803
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSending() reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSending : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v8, 0x0

    .line 805
    .local v8, "mCursor":Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 806
    .local v9, "updateInfo":Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_req_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Request_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 810
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 816
    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    if-eqz p3, :cond_2

    .line 818
    const-string v0, "is_sending"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    :goto_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 824
    :try_start_2
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Request_Table"

    const-string v2, "_req_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 827
    :try_start_3
    iget-object v0, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 831
    :cond_0
    if-eqz v8, :cond_1

    .line 832
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_1
    return-void

    .line 812
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 820
    :cond_2
    :try_start_4
    const-string v0, "is_sending"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 831
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_3

    .line 832
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 827
    :catchall_2
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/cpp/CPPDbAdapter;->mdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method
