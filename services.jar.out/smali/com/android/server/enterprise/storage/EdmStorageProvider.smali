.class public Lcom/android/server/enterprise/storage/EdmStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
.source "EdmStorageProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAdminLUidListAsUser(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "adminId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "fieldResult"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-super {p0, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)[B

    move-result-object v1

    return-object v1
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "fieldValue"    # Ljava/lang/String;
    .param p4, "fieldResult"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "cvWhereValues"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "Admin"    # I
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "Admin"    # I
    .param p3, "field"    # Ljava/lang/String;
    .param p4, "fieldValue"    # Ljava/lang/String;
    .param p5, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "ReturnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "Admin"    # I
    .param p3, "field"    # Ljava/lang/String;
    .param p4, "fieldValue"    # Ljava/lang/String;
    .param p5, "fieldToReturnValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLongListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "fieldValue"    # Ljava/lang/String;
    .param p4, "fieldResult"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "Admin"    # I
    .param p3, "field"    # Ljava/lang/String;
    .param p4, "fieldValue"    # Ljava/lang/String;
    .param p5, "fieldToReturnValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "returnColumns"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStringListAsUser(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "returnColumns"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(IILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 8
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-super/range {v1 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putLong(IILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "admin"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "cvUpdateValues"    # Landroid/content/ContentValues;
    .param p3, "cvWhereValues"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "Admin"    # I
    .param p3, "sColumn"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeByAdmin(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "adminId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "Admin"    # I
    .param p3, "sColumn"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v0

    return v0
.end method

.method public removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p2, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "whereParameters"    # Landroid/content/ContentValues;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "whereParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "adminId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/String;
    .param p4, "fieldData"    # [B

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->updateBlob(IILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
