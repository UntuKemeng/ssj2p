.class public Lcom/samsung/cpp/CPPCertDbAdapter;
.super Ljava/lang/Object;
.source "CPPCertDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPCertDbAdapter$CertDbHelper;
    }
.end annotation


# static fields
.field private static final CERT_DATABASE_NAME:Ljava/lang/String; = "certDB.db"

.field private static final CERT_TABLE:Ljava/lang/String; = "Cert_Table"

.field private static final DATABASE_CERT_CREATE:Ljava/lang/String; = "CREATE TABLE Cert_Table (_cert_id integer primary key autoincrement,cert_ca BLOB,cert_url BLOB);"

.field private static final DATABASE_CERT_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS data Cert_Table"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final KEY_CA:Ljava/lang/String; = "cert_ca"

.field public static final KEY_ID_CERT:Ljava/lang/String; = "_cert_id"

.field public static final KEY_URL:Ljava/lang/String; = "cert_url"

.field private static final TAG:Ljava/lang/String; = "CPPCertDbAdapter"


# instance fields
.field private cdb:Landroid/database/sqlite/SQLiteDatabase;

.field private final context:Landroid/content/Context;

.field private mCertDbHelper:Lcom/samsung/cpp/CPPCertDbAdapter$CertDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->context:Landroid/content/Context;

    new-instance v0, Lcom/samsung/cpp/CPPCertDbAdapter$CertDbHelper;

    iget-object v1, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/cpp/CPPCertDbAdapter$CertDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->mCertDbHelper:Lcom/samsung/cpp/CPPCertDbAdapter$CertDbHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const-string v0, "CPPCertDbAdapter"

    const-string v1, "Close cdb!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v0, "CPPCertDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCA() url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, "mCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .local v8, "ca":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cert_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Cert_Table"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    iget-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cert_ca"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "CPPCertDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCA() CA : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public open()Lcom/samsung/cpp/CPPCertDbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const-string v0, "CPPCertDbAdapter"

    const-string v1, "CPPCertDbAdapter.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->mCertDbHelper:Lcom/samsung/cpp/CPPCertDbAdapter$CertDbHelper;

    invoke-virtual {v0}, Lcom/samsung/cpp/CPPCertDbAdapter$CertDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CPPCertDbAdapter"

    const-string v1, "CPPCertDbAdapter.open() -- completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public updateCert([B)V
    .locals 17
    .param p1, "cert"    # [B

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "Cert_Table"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v13, "CPPCertDbAdapter"

    const-string v14, "updateCert() Old cert deletion"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v11, "result":Lorg/json/JSONObject;
    const-string v13, "data"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .local v5, "data":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_0

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v13, "CA"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .local v1, "CAs":Lorg/json/JSONArray;
    const-string v13, "URL"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .local v2, "URLs":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_2

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "ca":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_1

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "url":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "certValues":Landroid/content/ContentValues;
    const-string v13, "cert_ca"

    invoke-virtual {v4, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "cert_url"

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "Cert_Table"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v1    # "CAs":Lorg/json/JSONArray;
    .end local v2    # "URLs":Lorg/json/JSONArray;
    .end local v3    # "ca":Ljava/lang/String;
    .end local v4    # "certValues":Landroid/content/ContentValues;
    .end local v5    # "data":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "k":I
    .end local v11    # "result":Lorg/json/JSONObject;
    .end local v12    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v13

    .restart local v1    # "CAs":Lorg/json/JSONArray;
    .restart local v2    # "URLs":Lorg/json/JSONArray;
    .restart local v3    # "ca":Ljava/lang/String;
    .restart local v4    # "certValues":Landroid/content/ContentValues;
    .restart local v5    # "data":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "k":I
    .restart local v11    # "result":Lorg/json/JSONObject;
    .restart local v12    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v13

    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPCertDbAdapter;->cdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v1    # "CAs":Lorg/json/JSONArray;
    .end local v2    # "URLs":Lorg/json/JSONArray;
    .end local v3    # "ca":Ljava/lang/String;
    .end local v4    # "certValues":Landroid/content/ContentValues;
    .end local v5    # "data":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "k":I
    .end local v11    # "result":Lorg/json/JSONObject;
    .end local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .end local v6    # "e":Lorg/json/JSONException;
    :cond_0
    return-void

    .restart local v1    # "CAs":Lorg/json/JSONArray;
    .restart local v2    # "URLs":Lorg/json/JSONArray;
    .restart local v3    # "ca":Ljava/lang/String;
    .restart local v5    # "data":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "k":I
    .restart local v11    # "result":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v3    # "ca":Ljava/lang/String;
    .end local v10    # "k":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
