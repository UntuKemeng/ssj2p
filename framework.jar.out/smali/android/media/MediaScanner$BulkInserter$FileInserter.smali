.class public Landroid/media/MediaScanner$BulkInserter$FileInserter;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner$BulkInserter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInserter"
.end annotation


# instance fields
.field private final mBufferSize:I

.field private final mFlushSize:I

.field private final mPackageName:Ljava/lang/String;

.field private final mProvider:Landroid/content/IContentProvider;

.field private mValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field tableUri:Landroid/net/Uri;

.field final synthetic this$1:Landroid/media/MediaScanner$BulkInserter;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner$BulkInserter;Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mFilesUri"    # Landroid/net/Uri;
    .param p5, "BufferSize"    # I

    .prologue
    iput-object p1, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->this$1:Landroid/media/MediaScanner$BulkInserter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mValuesList:Ljava/util/List;

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mFlushSize:I

    iput-object p2, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mProvider:Landroid/content/IContentProvider;

    iput-object p3, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mPackageName:Ljava/lang/String;

    iput p5, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mBufferSize:I

    iput-object p4, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->tableUri:Landroid/net/Uri;

    return-void
.end method

.method private flush(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-direct {v4, v3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .local v2, "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "valuesArray":[Landroid/content/ContentValues;
    check-cast v2, [Landroid/content/ContentValues;

    .restart local v2    # "valuesArray":[Landroid/content/ContentValues;
    iget-object v3, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->tableUri:Landroid/net/Uri;

    invoke-interface {v3, v4, v5, v2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .end local v2    # "valuesArray":[Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .restart local v2    # "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "valuesArray":[Landroid/content/ContentValues;
    check-cast v2, [Landroid/content/ContentValues;

    .restart local v2    # "valuesArray":[Landroid/content/ContentValues;
    iget-object v3, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->tableUri:Landroid/net/Uri;

    invoke-interface {v3, v4, v5, v2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .end local v2    # "valuesArray":[Landroid/content/ContentValues;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .end local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/ContentValues;>;"
    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    return-void
.end method

.method private flushPart(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v7, 0x1f4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-direct {v5, v4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .local v3, "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "valuesArray":[Landroid/content/ContentValues;
    check-cast v3, [Landroid/content/ContentValues;

    .restart local v3    # "valuesArray":[Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->tableUri:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_1

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/ContentValues;>;"
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "valuesArray":[Landroid/content/ContentValues;
    :cond_1
    return-void
.end method


# virtual methods
.method public flushAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mValuesList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/media/MediaScanner$BulkInserter$FileInserter;->flush(Ljava/util/List;)V

    return-void
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mValuesList:Ljava/util/List;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mBufferSize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->this$1:Landroid/media/MediaScanner$BulkInserter;

    # getter for: Landroid/media/MediaScanner$BulkInserter;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner$BulkInserter;->access$5000(Landroid/media/MediaScanner$BulkInserter;)Landroid/media/MediaInserter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaInserter;->flushAll()V

    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter$FileInserter;->mValuesList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/media/MediaScanner$BulkInserter$FileInserter;->flushPart(Ljava/util/List;)V

    :cond_0
    return-void
.end method
