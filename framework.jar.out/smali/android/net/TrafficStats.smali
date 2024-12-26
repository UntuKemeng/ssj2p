.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final PB_IN_BYTES:J = 0x4000000000000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final TB_IN_BYTES:J = 0x10000000000L

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UID_VIDEOCALL:I = -0x64

.field public static final UNSUPPORTED:I = -0x1

.field private static mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 200
    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 224
    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .locals 2
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 316
    if-eqz p0, :cond_0

    .line 318
    :try_start_0
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 321
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getClatIfaces()Ljava/lang/String;
    .locals 6

    .prologue
    .line 909
    const/4 v1, 0x0

    .line 910
    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 911
    .local v3, "iface":Ljava/lang/String;
    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 912
    move-object v1, v3

    .line 910
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    :cond_1
    const-string/jumbo v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 914
    move-object v1, v3

    goto :goto_1

    .line 917
    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 820
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 822
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getMeteredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getPolicyManager()Landroid/net/INetworkPolicyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getMeteredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 835
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMobileMeteredRxPackets(Ljava/util/HashSet;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "mMeteredIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 884
    .local v6, "total":J
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 886
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 887
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 888
    .local v3, "iface":Ljava/lang/String;
    const-string/jumbo v8, "rmnet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 890
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 891
    goto :goto_0

    .line 893
    .end local v3    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 894
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v5

    .line 895
    .local v5, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 896
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 897
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 898
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v8

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 901
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v5    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 904
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v6
.end method

.method public static getMobileMeteredTxPackets(Ljava/util/HashSet;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "mMeteredIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 857
    .local v6, "total":J
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 859
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 860
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 861
    .local v3, "iface":Ljava/lang/String;
    const-string/jumbo v8, "rmnet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 863
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 864
    goto :goto_0

    .line 866
    .end local v3    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 867
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v5

    .line 868
    .local v5, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 869
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 870
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 871
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->txPackets:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v8

    .line 869
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 874
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v5    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 877
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v6
.end method

.method public static getMobileRxBytes()J
    .locals 10

    .prologue
    .line 464
    const-wide/16 v6, 0x0

    .line 465
    .local v6, "total":J
    const/4 v1, 0x0

    .line 466
    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 467
    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 470
    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    move-object v1, v3

    .line 466
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_1
    const-string/jumbo v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    move-object v1, v3

    goto :goto_1

    .line 477
    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 478
    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 481
    :cond_3
    return-wide v6
.end method

.method public static getMobileRxPackets()J
    .locals 10

    .prologue
    .line 402
    const-wide/16 v6, 0x0

    .line 403
    .local v6, "total":J
    const/4 v1, 0x0

    .line 404
    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 405
    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 408
    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    move-object v1, v3

    .line 404
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_1
    const-string/jumbo v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    move-object v1, v3

    goto :goto_1

    .line 416
    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 417
    invoke-static {v1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 420
    :cond_3
    return-wide v6
.end method

.method public static getMobileRxPackets(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 358
    const-wide/16 v4, 0x0

    .line 359
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 360
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 361
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method public static getMobileRxPacketsExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 487
    const-wide/16 v4, 0x0

    .line 488
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 489
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 494
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method public static getMobileTcpRxPackets()J
    .locals 10

    .prologue
    .line 500
    const-wide/16 v6, 0x0

    .line 501
    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 502
    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .line 503
    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 504
    add-long/2addr v6, v4

    .line 501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1
    return-wide v6
.end method

.method public static getMobileTcpTxPackets()J
    .locals 10

    .prologue
    .line 512
    const-wide/16 v6, 0x0

    .line 513
    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 514
    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .line 515
    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 516
    add-long/2addr v6, v4

    .line 513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1
    return-wide v6
.end method

.method public static getMobileTxBytes()J
    .locals 10

    .prologue
    .line 433
    const-wide/16 v6, 0x0

    .line 434
    .local v6, "total":J
    const/4 v1, 0x0

    .line 435
    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 436
    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 439
    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    move-object v1, v3

    .line 435
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const-string/jumbo v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    move-object v1, v3

    goto :goto_1

    .line 447
    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 448
    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 451
    :cond_3
    return-wide v6
.end method

.method public static getMobileTxPackets()J
    .locals 10

    .prologue
    .line 336
    const-wide/16 v6, 0x0

    .line 337
    .local v6, "total":J
    const/4 v1, 0x0

    .line 338
    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 339
    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 342
    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    move-object v1, v3

    .line 338
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    const-string/jumbo v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    move-object v1, v3

    goto :goto_1

    .line 349
    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 350
    invoke-static {v1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 353
    :cond_3
    return-wide v6
.end method

.method public static getMobileTxPackets(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 369
    const-wide/16 v4, 0x0

    .line 370
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 371
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method public static getMobileTxPacketsExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 381
    const-wide/16 v4, 0x0

    .line 382
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 383
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 382
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_0
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 388
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private static getMptcpState()Z
    .locals 9

    .prologue
    .line 604
    const/4 v4, 0x0

    .line 605
    .local v4, "mptcpState":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v4

    .line 630
    .end local v4    # "mptcpState":Z
    .local v5, "mptcpState":I
    :goto_0
    return v5

    .line 609
    .end local v5    # "mptcpState":I
    .restart local v4    # "mptcpState":Z
    :cond_0
    const/4 v0, 0x0

    .line 611
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/sys/net/mptcp/mptcp_enabled"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v6, "socketFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 615
    const-string v7, "2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    .line 616
    const/4 v4, 0x1

    goto :goto_1

    .line 622
    :cond_2
    if-eqz v1, :cond_5

    .line 624
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "socketFile":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    move v5, v4

    .line 630
    .restart local v5    # "mptcpState":I
    goto :goto_0

    .line 625
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "mptcpState":I
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "socketFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 627
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 619
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "socketFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 620
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 622
    if-eqz v0, :cond_3

    .line 624
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 625
    :catch_2
    move-exception v2

    .line 626
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 622
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_4

    .line 624
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 627
    :cond_4
    :goto_5
    throw v7

    .line 625
    :catch_3
    move-exception v2

    .line 626
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 622
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "socketFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static declared-synchronized getPolicyManager()Landroid/net/INetworkPolicyManager;
    .locals 2

    .prologue
    .line 135
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 139
    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    .line 123
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 124
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    .line 127
    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    const/4 v4, 0x0

    .line 644
    invoke-static {}, Landroid/net/TrafficStats;->getMptcpState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 647
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v4}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    .line 656
    :goto_0
    return-wide v2

    .line 649
    :cond_0
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    div-long/2addr v2, v6

    goto :goto_0

    .line 652
    .end local v0    # "clatIface":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 653
    .restart local v0    # "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 654
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v4}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 656
    :cond_2
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTotalRxPackets()J
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 573
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 575
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 577
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTotalTxBytes()J
    .locals 6

    .prologue
    const/4 v1, 0x2

    .line 593
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 595
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 597
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTotalTxPackets()J
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 553
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 555
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 557
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 524
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 723
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 745
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 789
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 734
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 778
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 675
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 707
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 767
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 811
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 756
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 800
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .param p0, "operationCount"    # I

    .prologue
    .line 293
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 294
    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 295
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 305
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 307
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    .line 168
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 169
    return-void
.end method

.method public static setThreadStatsTagBackup()V
    .locals 1

    .prologue
    .line 178
    const/16 v0, -0xfd

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 179
    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    .line 217
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 218
    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 260
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v2, :cond_0

    .line 273
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not profiling data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 277
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 278
    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 280
    .local v0, "profilingDelta":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 281
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 237
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 244
    return-void
.end method
