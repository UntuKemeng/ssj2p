.class Landroid/content/pm/AMSLogger$AMSHandler;
.super Ljava/util/logging/Handler;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AMSLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Landroid/content/pm/AMSLogger;


# direct methods
.method public constructor <init>(Landroid/content/pm/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p2, "newLogFile"    # Ljava/lang/String;
    .param p3, "oldLogFile"    # Ljava/lang/String;
    .param p4, "maxSize"    # J

    .prologue
    iput-object p1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->this$0:Landroid/content/pm/AMSLogger;

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    const/4 v0, 0x0

    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    iput-object p2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    iput-wide p4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->maxSize:J

    invoke-direct {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v6, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v6, 0x0

    :cond_3
    :goto_3
    return-void

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_4
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "buf":[B
    .end local v5    # "len":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "ie":Ljava/io/IOException;
    # getter for: Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Couldn\'t close FileInputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    # getter for: Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Couldn\'t close FileInputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_1

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->maxSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_1

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v2

    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/content/pm/AMSLogger$AMSHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "oldFile":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v1    # "oldFile":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/pm/AMSLogger$AMSHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->flush()V

    goto :goto_0
.end method
