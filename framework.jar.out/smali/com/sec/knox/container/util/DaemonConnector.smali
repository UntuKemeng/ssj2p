.class public Lcom/sec/knox/container/util/DaemonConnector;
.super Ljava/lang/Object;
.source "DaemonConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;,
        Lcom/sec/knox/container/util/DaemonConnector$Command;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x15f90

.field private static final LOGD:Z = true

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "callbacks"    # Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->BUFFER_SIZE:I

    iput-object p1, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    iput-object p2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-direct {v0, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p4, :cond_0

    .end local p4    # "logTag":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    return-void

    .restart local p4    # "logTag":Ljava/lang/String;
    :cond_0
    const-string p4, "ECS_DaemonConnector"

    goto :goto_0
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v1, 0x1

    .local v1, "hasSpaces":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-ne v0, v5, :cond_2

    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "c":C
    .end local v1    # "hasSpaces":Z
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "c":C
    .restart local v1    # "hasSpaces":Z
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_3

    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method private listenToSocket()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .local v12, "socket":Landroid/net/LocalSocket;
    const/16 v15, 0x1000

    new-array v3, v15, [B

    .local v3, "buffer":[B
    const/4 v14, 0x0

    .local v14, "start":I
    :try_start_0
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v12    # "socket":Landroid/net/LocalSocket;
    .local v13, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v16, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v2, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v13, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v13}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .local v9, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    invoke-interface {v15}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onDaemonConnected()V

    :cond_0
    :goto_0
    rsub-int v15, v14, 0x1000

    invoke-virtual {v9, v3, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "count":I
    if-gez v4, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " reading with start = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v15, :cond_1

    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closing stream for "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_1
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v13, :cond_2

    :try_start_7
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v15, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_3
    return-void

    .end local v4    # "count":I
    :catchall_0
    move-exception v15

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v15
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v12, v13

    .end local v13    # "socket":Landroid/net/LocalSocket;
    .local v7, "ex":Ljava/io/IOException;
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    :goto_3
    :try_start_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Communications error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v7    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v17, :cond_4

    :try_start_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "closing stream for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_5
    const/16 v17, 0x0

    :try_start_d
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_4
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v12, :cond_5

    :try_start_e
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_5
    :goto_6
    throw v15

    .end local v12    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "count":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    :cond_6
    add-int/2addr v4, v14

    const/4 v14, 0x0

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    if-ge v8, v4, :cond_9

    :try_start_f
    aget-byte v15, v3, v8

    if-nez v15, :cond_7

    new-instance v10, Ljava/lang/String;

    sub-int v15, v8, v14

    const-string v16, "UTF-8"

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v3, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v10, "rawEvent":Ljava/lang/String;
    const-string v15, "RCV <-"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-static {v10}, Lcom/sec/knox/container/util/DaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v6

    .local v6, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v17

    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v6    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :goto_8
    add-int/lit8 v14, v8, 0x1

    .end local v10    # "rawEvent":Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .restart local v6    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    .restart local v10    # "rawEvent":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->getCmdNumber()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->add(ILcom/sec/knox/container/util/DaemonEvent;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_8

    .end local v6    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_11
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem parsing message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    goto :goto_8

    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "count":I
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "rawEvent":Ljava/lang/String;
    :catchall_2
    move-exception v15

    move-object v12, v13

    .end local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    goto/16 :goto_4

    .end local v12    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    :cond_9
    if-nez v14, :cond_a

    new-instance v10, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-direct {v10, v3, v14, v4, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .restart local v10    # "rawEvent":Ljava/lang/String;
    const-string v15, "RCV incomplete <-"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    .end local v10    # "rawEvent":Ljava/lang/String;
    :cond_a
    if-eq v14, v4, :cond_b

    rsub-int v11, v14, 0x1000

    .local v11, "remaining":I
    const/4 v15, 0x0

    invoke-static {v3, v14, v3, v15, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v14, v11

    goto/16 :goto_0

    .end local v11    # "remaining":I
    :cond_b
    const/4 v14, 0x0

    if-eqz v3, :cond_0

    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v15, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_0

    .end local v8    # "i":I
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    :try_start_12
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing output stream: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v15

    monitor-exit v16
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v15

    :catch_3
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed closing socket: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "count":I
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_13
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed closing output stream: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v15

    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v15

    :catch_5
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing socket: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v7    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v7

    goto/16 :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lcom/sec/knox/container/util/DaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "rawEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    .local v2, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    move-object v0, v2

    .local v0, "arr$":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_0
    return-object v5
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expectedCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    .local v2, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    aget-object v1, v2, v4

    .local v1, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    .local v0, "code":I
    if-ne v0, p2, :cond_0

    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected list response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "code":I
    .end local v1    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_1
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v2, v6

    .local v3, "finalEvent":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v3}, Lcom/sec/knox/container/util/DaemonEvent;->isClassOk()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected final event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public execute(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/sec/knox/container/util/DaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$000(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$100(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    .local v0, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public varargs execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .locals 20
    .param p1, "timeout"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/knox/container/util/DaemonEvent;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    .local v12, "sequenceNumber":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "cmdBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .local v14, "startTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/knox/container/util/DaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "logCmd":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v13, v0

    if-lez v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SND -> {"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "sentCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v13, :cond_1

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string v17, "missing output stream"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13

    :catchall_0
    move-exception v13

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    const-string v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    .local v8, "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    move/from16 v0, p1

    invoke-virtual {v13, v12, v0, v11}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v13, "timed-out waiting for response"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    .end local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string v17, "problem sending command"

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v5}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_3
    const-string v13, "RMV <-"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassContinue()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "endTime":J
    sub-long v16, v6, v14

    const-wide/16 v18, 0x1f4

    cmp-long v13, v16, v18

    if-lez v13, :cond_4

    :cond_4
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassClientError()Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    :cond_5
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassServerError()Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/sec/knox/container/util/DaemonEvent;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/sec/knox/container/util/DaemonEvent;

    return-object v13
.end method

.method public executeForList(Lcom/sec/knox/container/util/DaemonConnector$Command;)[Lcom/sec/knox/container/util/DaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/sec/knox/container/util/DaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$000(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$100(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    const v0, 0x15f90

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "event":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/knox/container/util/DaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Unhandled event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error handling \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public monitor()V
    .locals 0

    .prologue
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/util/DaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in DaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
