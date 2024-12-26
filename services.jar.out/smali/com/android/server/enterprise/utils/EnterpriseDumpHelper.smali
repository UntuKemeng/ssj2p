.class public Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
.super Ljava/lang/Object;
.source "EnterpriseDumpHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 60
    return-void
.end method

.method private readColumns(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 94
    iget-object v8, p0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 95
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 98
    .local v2, "cv":Landroid/content/ContentValues;
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 99
    .local v1, "column":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "column":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 108
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method


# virtual methods
.method public dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " table]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v6, "generic"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    const/4 v6, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "value"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "containerID"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "userID"

    aput-object v7, v2, v6

    .line 81
    .local v2, "genericColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 82
    .local v5, "selectionValues":Landroid/content/ContentValues;
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 83
    .local v1, "column":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    .end local v5    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .restart local v5    # "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->readColumns(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "column":Ljava/lang/String;
    .end local v2    # "genericColumns":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "selectionValues":Landroid/content/ContentValues;
    :cond_0
    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->readColumns(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 90
    :cond_1
    return-void
.end method
