.class public Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1242
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->reset()V

    .line 1243
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V
    .locals 0
    .param p2, "txPkts"    # J
    .param p4, "rxPkts"    # J

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    iput-wide p2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1247
    iput-wide p4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 1248
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V
    .locals 2
    .param p2, "sum"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1251
    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1252
    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 1253
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1256
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1257
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 1258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTcpTxRxSum()V
    .locals 2

    .prologue
    .line 1305
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1306
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 1307
    return-void
.end method

.method public updateTxRxSum()V
    .locals 4

    .prologue
    .line 1276
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1277
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1278
    .local v0, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1280
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$400(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 1281
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$400(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1282
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1285
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    invoke-static {v0}, Landroid/net/TrafficStats;->getMobileMeteredTxPackets(Ljava/util/HashSet;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1287
    invoke-static {v0}, Landroid/net/TrafficStats;->getMobileMeteredRxPackets(Ljava/util/HashSet;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    .line 1302
    .end local v0    # "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 1288
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1289
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mExcludeImsPacketCount:Z

    if-eqz v2, :cond_3

    .line 1290
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mImsMobileInterface:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1291
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mImsMobileInterface:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/TrafficStats;->getMobileTxPacketsExcept(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1292
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mImsMobileInterface:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/TrafficStats;->getMobileRxPacketsExcept(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    goto :goto_1

    .line 1295
    :cond_3
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1296
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    goto :goto_1

    .line 1299
    :cond_4
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    .line 1300
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    goto :goto_1
.end method
