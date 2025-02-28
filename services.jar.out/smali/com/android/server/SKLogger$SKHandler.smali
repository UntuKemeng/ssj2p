.class Lcom/android/server/SKLogger$SKHandler;
.super Ljava/util/logging/Handler;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SKLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SKHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/SKLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/SKLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p2, "newLogFile"    # Ljava/lang/String;
    .param p3, "oldLogFile"    # Ljava/lang/String;
    .param p4, "maxSize"    # J

    .prologue
    iput-object p1, p0, Lcom/android/server/SKLogger$SKHandler;->this$0:Lcom/android/server/SKLogger;

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    const/4 v0, 0x0

    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    iput-object p2, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    invoke-direct {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()Ljava/io/PrintWriter;

    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .local v5, "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .local v0, "buf":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .end local v4    # "len":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    const/4 v5, 0x0

    :cond_2
    return-void

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_3
    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "len":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    const/4 v5, 0x0

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_1

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/SKLogger$SKHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "oldFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v2    # "oldFile":Ljava/io/File;
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
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
    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

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
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/SKLogger$SKHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->flush()V

    goto :goto_0
.end method
