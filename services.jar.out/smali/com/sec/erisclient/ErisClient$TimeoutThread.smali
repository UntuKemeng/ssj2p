.class Lcom/sec/erisclient/ErisClient$TimeoutThread;
.super Ljava/lang/Thread;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutThread"
.end annotation


# instance fields
.field private connection:Lcom/sec/erisclient/IPSecConnection;

.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;

.field private timeout:J


# direct methods
.method public constructor <init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IPSecConnection;J)V
    .locals 1
    .param p2, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p3, "timeout"    # J

    .prologue
    .line 758
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 759
    iput-wide p3, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->timeout:J

    .line 760
    iput-object p2, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->connection:Lcom/sec/erisclient/IPSecConnection;

    .line 761
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 765
    monitor-enter p0

    .line 767
    const-wide/16 v2, 0x3e8

    :try_start_0
    iget-wide v4, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->timeout:J

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 768
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    new-instance v3, Lcom/sec/erisclient/ErisEventData;

    iget-object v4, p0, Lcom/sec/erisclient/ErisClient$TimeoutThread;->connection:Lcom/sec/erisclient/IPSecConnection;

    sget-object v5, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    # invokes: Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    invoke-static {v1, v2, v3}, Lcom/sec/erisclient/ErisClient;->access$500(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :try_start_1
    monitor-exit p0

    .line 774
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/InterruptedException;
    monitor-exit p0

    goto :goto_0

    .line 773
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
