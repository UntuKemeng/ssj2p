.class Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationNetworkStatsTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
    }
.end annotation


# instance fields
.field private final MOBILE:I

.field private final NONMOBILE:I

.field private connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private currentNetwork:Ljava/lang/String;

.field datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

.field networkDataUsageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field networkDataUsageMapTemp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private previousNetwork:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1342
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 1332
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    .line 1333
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 1334
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 1335
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    .line 1337
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->MOBILE:I

    .line 1338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->NONMOBILE:I

    .line 1340
    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1343
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V

    .line 1344
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1329
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    return-void
.end method

.method private calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1645
    .local p1, "updatedMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, "previousMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    const/4 v8, 0x0

    .line 1647
    .local v8, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1676
    .end local p1    # "updatedMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_0
    return-object p1

    .line 1649
    .restart local p1    # "updatedMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1650
    const/16 p1, 0x0

    goto :goto_0

    .line 1651
    :cond_1
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1652
    .end local v8    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v9, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1653
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1654
    .local v4, "key":Ljava/lang/Integer;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1655
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/NetworkStats;

    .line 1656
    .local v10, "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/NetworkStats;

    .line 1657
    .local v7, "previousNetworkStats":Landroid/app/enterprise/NetworkStats;
    new-instance v6, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v6}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 1658
    .local v6, "networkStats":Landroid/app/enterprise/NetworkStats;
    iget-wide v12, v10, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v14, v7, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1660
    iget-wide v12, v10, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v14, v7, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 1662
    iget-wide v12, v10, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v14, v7, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1664
    iget-wide v12, v10, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v14, v7, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 1666
    invoke-virtual {v9, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1673
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "networkStats":Landroid/app/enterprise/NetworkStats;
    .end local v7    # "previousNetworkStats":Landroid/app/enterprise/NetworkStats;
    .end local v10    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 1674
    .end local v9    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    move-object/from16 p1, v8

    .line 1676
    goto :goto_0

    .line 1668
    .end local v8    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/Integer;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v9    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/NetworkStats;

    .line 1669
    .restart local v10    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v9, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v4    # "key":Ljava/lang/Integer;
    .end local v10    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    :cond_3
    move-object v8, v9

    .line 1675
    .end local v9    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v8    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    goto :goto_3

    .line 1673
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1580
    .local p1, "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, "updatedMinusPrevious":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 1582
    .local v10, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1583
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1584
    .local v4, "key":Ljava/lang/Integer;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1585
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 1586
    .local v8, "networkStatsFromDb":Landroid/app/enterprise/NetworkStats;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/NetworkStats;

    .line 1587
    .local v11, "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    new-instance v7, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v7}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 1588
    .local v7, "networkStats":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v7, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 1589
    iget-wide v14, v8, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v0, v11, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v7, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 1591
    iget-wide v14, v8, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v0, v11, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v7, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1593
    iget-wide v14, v8, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v0, v11, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v7, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 1595
    iget-wide v14, v8, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v0, v11, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v7, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1597
    invoke-virtual {v10, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1613
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "networkStats":Landroid/app/enterprise/NetworkStats;
    .end local v8    # "networkStatsFromDb":Landroid/app/enterprise/NetworkStats;
    .end local v11    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    :catch_0
    move-exception v2

    .line 1614
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1616
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v10

    .line 1600
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/Integer;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/NetworkStats;

    .line 1601
    .local v9, "previousValue":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v10, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1605
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v9    # "previousValue":Landroid/app/enterprise/NetworkStats;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 1607
    .local v6, "keySet1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1608
    .restart local v4    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1609
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/enterprise/NetworkStats;

    .line 1610
    .local v12, "updatedValue":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v10, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getDataUsagesUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1497
    const/4 v2, 0x0

    .line 1499
    .local v2, "uid":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/uid_stat/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1501
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1506
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 1347
    const-string v0, "Unknown"

    .line 1349
    .local v0, "stateString":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1357
    const-string v0, "Unknown"

    .line 1361
    :goto_0
    return-object v0

    .line 1351
    :pswitch_0
    const-string v0, "Connected"

    .line 1352
    goto :goto_0

    .line 1354
    :pswitch_1
    const-string v0, "Disconnected"

    .line 1355
    goto :goto_0

    .line 1349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUserUpdateDataUsageMap(II)V
    .locals 12
    .param p1, "dataUsageForNetwork"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1455
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v10, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v3

    .line 1456
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_5

    .line 1457
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1458
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1459
    .local v8, "uid":I
    invoke-static {v8}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    .line 1460
    .local v6, "totalUsageTxPkg":J
    invoke-static {v8}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 1461
    .local v4, "totalUsageRxPkg":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-gtz v9, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_0

    .line 1462
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1463
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/NetworkStats;

    .line 1465
    .local v1, "networkStats":Landroid/app/enterprise/NetworkStats;
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    .line 1466
    iget-wide v10, v1, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long v10, v6, v10

    iput-wide v10, v1, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1468
    iget-wide v10, v1, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long v10, v4, v10

    iput-wide v10, v1, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    goto :goto_0

    .line 1471
    :cond_2
    iget-wide v10, v1, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long v10, v6, v10

    iput-wide v10, v1, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1473
    iget-wide v10, v1, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long v10, v4, v10

    iput-wide v10, v1, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    goto :goto_0

    .line 1477
    .end local v1    # "networkStats":Landroid/app/enterprise/NetworkStats;
    :cond_3
    new-instance v1, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v1}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 1478
    .restart local v1    # "networkStats":Landroid/app/enterprise/NetworkStats;
    iput v8, v1, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 1479
    const/4 v9, 0x1

    if-ne p1, v9, :cond_4

    .line 1480
    iput-wide v6, v1, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1481
    iput-wide v4, v1, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 1482
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1484
    :cond_4
    iput-wide v6, v1, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1485
    iput-wide v4, v1, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 1486
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1492
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "networkStats":Landroid/app/enterprise/NetworkStats;
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "totalUsageRxPkg":J
    .end local v6    # "totalUsageTxPkg":J
    .end local v8    # "uid":I
    :cond_5
    return-void
.end method

.method private isAnyNetworkConnected()Z
    .locals 6

    .prologue
    .line 1511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1512
    .local v2, "token1":J
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1514
    .local v1, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1515
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1516
    if-eqz v0, :cond_0

    .line 1517
    const/4 v4, 0x1

    .line 1518
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final isMobileNetwork(Ljava/lang/String;)Z
    .locals 2
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    .line 1365
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private registerNetworkChangeReceiver()V
    .locals 4

    .prologue
    .line 1369
    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "registerNetworkChangeReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1372
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    iput-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1403
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1404
    const-string v2, "ApplicationPolicy"

    const-string/jumbo v3, "registerNetworkChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDataUsageMap(II)V
    .locals 7
    .param p1, "dataUsageForNetwork"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1433
    const-string v5, "ApplicationPolicy"

    const-string/jumbo v6, "updateDataUsageMap"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 1436
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v5, v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1437
    .local v3, "userManager":Landroid/os/UserManager;
    if-eqz v3, :cond_0

    .line 1438
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1439
    .local v4, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_0

    .line 1440
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1441
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getUserUpdateDataUsageMap(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1449
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Landroid/os/UserManager;
    .end local v4    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1452
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 1446
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getUserUpdateDataUsageMap(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getAppLevelDataUsage(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1530
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1531
    .local v4, "retlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/NetworkStats;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagePerUid(I)Ljava/util/Hashtable;

    move-result-object v0

    .line 1532
    .local v0, "hashTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1534
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1535
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1538
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1541
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    return-object v4
.end method

.method public getDataUsagePerUid(I)Ljava/util/Hashtable;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1547
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1548
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    .line 1553
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 1554
    .local v0, "appDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    const/4 v3, 0x0

    .line 1556
    .local v3, "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getMobileDataUsage()Ljava/util/Hashtable;

    move-result-object v3

    .line 1557
    if-eqz v3, :cond_4

    .line 1558
    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1559
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :goto_1
    return-object v4

    .line 1550
    .end local v0    # "appDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    .end local v3    # "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    goto :goto_0

    .line 1561
    .restart local v0    # "appDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    .restart local v3    # "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    .line 1563
    .local v2, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v2, :cond_3

    .line 1564
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 1566
    goto :goto_1

    .line 1568
    .end local v2    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1570
    :catch_0
    move-exception v1

    .line 1571
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1574
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public updateNetworkUsageDb()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1625
    new-instance v1, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 1626
    .local v1, "networkDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1627
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1628
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    .line 1633
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1634
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 1636
    .local v0, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_1

    .line 1637
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->updateDataUsage(Ljava/util/Hashtable;)Z

    .line 1639
    .end local v0    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 1640
    return-void

    .line 1630
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    goto :goto_0
.end method