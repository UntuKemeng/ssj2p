.class Landroid/sec/clipboard/data/file/FileManager$1;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/data/file/FileManager;->clearDeleteList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/data/file/FileManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/data/file/FileManager;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Landroid/sec/clipboard/data/file/FileManager$1;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 802
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$1;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/sec/clipboard/data/file/FileManager;->access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 803
    .local v2, "size":I
    const/4 v0, 0x0

    .line 804
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 805
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$1;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/sec/clipboard/data/file/FileManager;->access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Ljava/io/File;
    check-cast v0, Ljava/io/File;

    .line 806
    .restart local v0    # "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 807
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$1;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    # invokes: Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z
    invoke-static {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->access$800(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 808
    const-string v3, "Clipboard.FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "successed remove in clearDeleteList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$1;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/sec/clipboard/data/file/FileManager;->access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 810
    add-int/lit8 v1, v1, -0x1

    .line 811
    add-int/lit8 v2, v2, -0x1

    .line 804
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    :cond_1
    const-string v3, "Clipboard.FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed remove in clearDeleteList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 817
    :cond_2
    const-string v3, "Clipboard.FileManager"

    const-string v4, "finish clearDeleteList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void
.end method