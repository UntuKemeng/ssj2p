.class public Landroid/media/MediaScanner$BulkInserter;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BulkInserter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$BulkInserter$FileInserter;
    }
.end annotation


# instance fields
.field private mFileInserter:Landroid/media/MediaScanner$BulkInserter$FileInserter;

.field private mFilesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volumeName"    # Ljava/lang/String;
    .param p5, "mediaBufferSizePerUri"    # I
    .param p6, "fileBufferSize"    # I

    .prologue
    .line 2656
    iput-object p1, p0, Landroid/media/MediaScanner$BulkInserter;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2657
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mFilesUri:Landroid/net/Uri;

    .line 2658
    new-instance v0, Landroid/media/MediaInserter;

    invoke-direct {v0, p2, p3, p5}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2659
    new-instance v0, Landroid/media/MediaScanner$BulkInserter$FileInserter;

    iget-object v4, p0, Landroid/media/MediaScanner$BulkInserter;->mFilesUri:Landroid/net/Uri;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner$BulkInserter$FileInserter;-><init>(Landroid/media/MediaScanner$BulkInserter;Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;I)V

    iput-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mFileInserter:Landroid/media/MediaScanner$BulkInserter$FileInserter;

    .line 2660
    return-void
.end method

.method static synthetic access$5000(Landroid/media/MediaScanner$BulkInserter;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner$BulkInserter;

    .prologue
    .line 2651
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v0}, Landroid/media/MediaInserter;->clear()V

    .line 2681
    return-void
.end method

.method public flushAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2671
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v0}, Landroid/media/MediaInserter;->flushAll()V

    .line 2672
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mFileInserter:Landroid/media/MediaScanner$BulkInserter$FileInserter;

    invoke-virtual {v0}, Landroid/media/MediaScanner$BulkInserter$FileInserter;->flushAll()V

    .line 2673
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2663
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2664
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mFileInserter:Landroid/media/MediaScanner$BulkInserter$FileInserter;

    invoke-virtual {v0, p2}, Landroid/media/MediaScanner$BulkInserter$FileInserter;->insert(Landroid/content/ContentValues;)V

    .line 2668
    :goto_0
    return-void

    .line 2666
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2676
    iget-object v0, p0, Landroid/media/MediaScanner$BulkInserter;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2677
    return-void
.end method
